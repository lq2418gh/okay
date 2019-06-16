package dkd.okay.system.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
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

import dkd.okay.system.bo.Company;
import dkd.okay.system.service.CompanyServiceImpl;
import dkd.okay.system.util.tree.TreeUtil;
import dkd.okay.system.web.formmodel.CompanyForm;

/**
 * 组织结构Controller
 * @author WJ
 *
 */

@Controller
@RequestMapping(value="/company")
public class CompanyController
{
	
	@Resource(name="companyService")
	private CompanyServiceImpl companyServiceImpl;
	
	

	/**
	 * 校验部门信息中部门名称是否重复
	 * @param companyName
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatCompanyName.do") 
	public void repeatCompanyName(String companyName,Integer levels,HttpServletResponse response)throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(companyServiceImpl.selectCompanyRepeat(null, companyName,levels));
	}
	
	/**
	 * 校验部门信息中部门编码是否重复
	 * @param companyCode
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatCompanyCode.do") 
	public void repeatCompanyCode(String companyCode,Integer levels, HttpServletResponse response)throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(companyServiceImpl.selectCompanyRepeat(companyCode, null,levels));
	}
	
	/**
	 * 校验部门信息下是否有用户
	 * @param companyId
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatUserCompanyId.do") 
	public void repeatUser(String companyId,HttpServletResponse response)throws IOException{
		response.getWriter().print(companyServiceImpl.selectUserRepeat(companyId));
	}
	
	
	
	/**
	 * 部门管理首页
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/company.do")  
	public ModelAndView company(String parentId){
		return new ModelAndView("system/company/company","parentId",parentId);
	}
	
	/**
	 * 部门结构树
	 * @return
	 */
	@RequestMapping("/tree.do")  
	public String tree(){
		return "system/company/tree";
	}
	
	/**
	 * 生成部门树
	 * @param response
	 * @throws Exception
	 */

	@RequestMapping("/companyTree.do")  
	public void companyTree(HttpServletResponse response) throws Exception{
		List<Company> companyList = companyServiceImpl.selectAll();
		TreeUtil<Company> treeUtil = new TreeUtil<Company>();
		List<Company> companyTree = treeUtil.makeTree(companyList,null);
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(companyTree);
		out.println(json.toString());	
	}
	
	/**
	 * 部门管理中，根据点击的节点，显示节点下的部门信息列表
	 * @param parentId
	 * @param message
	 * @param model
	 * @param companyForm
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")  
	public ModelAndView query(String parentId,String message, ModelMap model, CompanyForm companyForm,HttpServletRequest request){
		parentId = StringUtils.isEmpty(parentId) ? "0" : parentId;
		String pageNow = request.getParameter("pageNow");
		Map<String, Object> map = companyServiceImpl.selectCompanyByParentId(pageNow, parentId);
		companyForm.setCompanyList((List<Company>)map.get("companyList"));
		companyForm.setMessage(message);
		companyForm.setLevels(StringUtils.equals("0", parentId) ? 0 : companyServiceImpl.selectCompanyById(parentId).getLevels());
		model.addAttribute("parentId", parentId);
		model.addAttribute("companyForm", companyForm);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("system/company/query",model);   
	}
	
	/**
	 * 编辑部门信息
	 * @param model
	 * @param flag
	 * @param companyId
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/companyInfo.do")  
	public ModelAndView companyInfo(ModelMap model,String flag,String companyId ,String parentId){
		CompanyForm companyForm = new CompanyForm();
		if(StringUtils.equals("new", flag)){
			companyForm.setParentId(parentId);
			Company company = companyServiceImpl.selectCompanyById(parentId);
			companyForm.setParentName(null == company ? "公司部门根节点":company.getCompanyName());
			companyForm.setLevels(StringUtils.equals("0", parentId) ? 0 : company.getLevels());
		}else{
			BeanUtils.copyProperties(companyServiceImpl.selectCompanyById(companyId),companyForm);
		}
		return new ModelAndView("system/company/companyInfo","companyForm", companyForm); 
	}
	
	/**
	 * 查看部门信息
	 * @param model
	 * @param companyId
	 * @return
	 */
	@RequestMapping("/companyView.do")  
	public ModelAndView companyView(ModelMap model,String companyId){
		CompanyForm companyForm = new CompanyForm();
		BeanUtils.copyProperties(companyServiceImpl.selectCompanyById(companyId),companyForm);
		return new ModelAndView("system/company/companyView","companyForm", companyForm); 
	}
	
	/**
	 * 保存部门信息
	 * @param model
	 * @param companyForm
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/editCompany.do")  
	public ModelAndView editCompany(ModelMap model,CompanyForm companyForm) throws IOException{
		Company company= new Company();
		BeanUtils.copyProperties(companyForm,company);
		model.addAttribute("message",companyServiceImpl.editCompany(company));
		model.addAttribute("parentId", companyForm.getParentId());
		return new ModelAndView(new RedirectView ("query.do")); 
	}
	
	
	
	/**
	 * 删除部门信息
	 * @param model
	 * @param companyId
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/deleteCompany.do")  
	public ModelAndView deleteCompany(ModelMap model,String companyId,String parentId){
		model.addAttribute("message", companyServiceImpl.deleteCompany(companyId));
		model.addAttribute("parentId", parentId);
		return new ModelAndView(new RedirectView ("query.do")); 
	}
	
	
	
}
