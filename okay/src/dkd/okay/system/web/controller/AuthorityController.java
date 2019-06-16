package dkd.okay.system.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import dkd.okay.system.bo.Authority;
import dkd.okay.system.service.AuthorityServiceImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.tree.TreeUtil;
import dkd.okay.system.web.formmodel.AuthorityForm;

@Controller
@RequestMapping(value="/authority")
public class AuthorityController extends BaseController  {
	@Resource(name="authorityService")
	private AuthorityServiceImpl authorityServiceImpl;
	/**
	 * 加载权限整个查询界面(包括左边的树和右边的查询界面)
	 * @param model
	 * @return
	 */
	@RequestMapping("/authframe.do")  
	public ModelAndView user(ModelMap model,String parentId){
		model.put("parentId", parentId);
		return new ModelAndView("system/authority/authframe",model);
	}
	/**
	 * 初始化左边的树
	 * @return
	 */
	@RequestMapping("/tree.do")  
	public String tree(){
		return "system/authority/tree";
	}
	/**
	 * 初始化右边的树信息
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/authorityTree.do")  
	public void authorityTree(HttpServletResponse response) throws Exception{
		TreeUtil<Authority> treeUtil = new TreeUtil<Authority>();
		List<Authority> authorityTree = new ArrayList<Authority>();
		authorityTree = treeUtil.makeTree(authorityServiceImpl.getAuthorityList(), null);		
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(authorityTree);
		out.println(json.toString());	
	}
	/**
	 * 根据选择节点加载其子节点的信息
	 * @param authId
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectAuthorityByParentId.do")
	public  ModelAndView selectAuthorityByParentId(String parentId,String message,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		Map<String, Object> map = authorityServiceImpl.queryAuthByParent(pageNow,parentId);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.put("authListByPage",map.get("authListByPage"));
		model.put("parentId", parentId);
		model.put("message", message);
		return new ModelAndView("system/authority/query",model);
	}
	/**
	 * 新增(编辑)权限信息
	 * @param partentId
	 * @param model
	 * @return
	 */
	@RequestMapping("/edit.do")
	public ModelAndView edit(String authId,String partentId,ModelMap model,AuthorityForm authorityForm){
		Authority authority = new Authority();
		if(StringUtils.isEmpty(authId)){
			Integer count = authorityServiceImpl.countByParent(partentId);
			authorityForm.setParentId(partentId);
			authorityForm.setRowOrder(partentId+"0"+count);
		}else{
			authority= authorityServiceImpl.queryAuthById(authId);
			BeanUtils.copyProperties(authority, authorityForm);
			
		}
		model.put("message", Message.readValue("EDITSUCCESS"));
		model.put("authorityForm", authorityForm);
		return new ModelAndView("system/authority/edit",model);
	}
	/**
	 * 保存权限信息
	 * @param authorityForm
	 */
	@RequestMapping("/saveAuthority.do")
	public ModelAndView saveAuthority(ModelMap model,AuthorityForm authorityForm){
		Authority auth = new Authority();
		BeanUtils.copyProperties(authorityForm, auth);
		if(StringUtils.isEmpty(authorityForm.getAuthId())){
			auth=authorityServiceImpl.saveAuthority(auth);
		}
		else{
			auth=authorityServiceImpl.updateAuthority(auth);
		}
		model.put("parentId", auth.getParentId());
		model.put("message", Message.readValue("EDITSUCCESS"));
		return new ModelAndView(new RedirectView("selectAuthorityByParentId.do"));
	}
	/**
	 * 根据authId加载权限明细信息
	 * @param authId
	 * @param model
	 * @return
	 */
	@RequestMapping("/view.do")
	public ModelAndView view(String authId,ModelMap model){
		Authority authority = authorityServiceImpl.queryAuthById(authId);
		AuthorityForm authForm = new AuthorityForm();
		BeanUtils.copyProperties(authority, authForm);
		model.put("authForm", authForm);
		return new ModelAndView("system/authority/view",model);
	}
	/**
	 * 删除权限信息
	 * @param authId
	 * @param model
	 */
	@RequestMapping("/deleteAuth.do")
	public ModelAndView deleteAuth(String parentId,String authId,ModelMap model){
		authorityServiceImpl.deleteAuth(authId);
		model.put("message", Message.readValue("DELSUCCESS"));
		model.put("parentId", parentId);
		return new ModelAndView(new RedirectView("selectAuthorityByParentId.do"));
	}
	@RequestMapping("/validateAuthority.do")
	public void validateAuthority(String authCode,String authId,HttpServletResponse response){
		Authority authority = new Authority();
		authority.setAuthId(authId);
		authority.setAuthCode(authCode);
		boolean flag = authorityServiceImpl.validateAuthority(authority);
		try {
			response.getWriter().print(flag ? "ok" : "failed");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
