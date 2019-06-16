package dkd.okay.system.web.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.system.bo.Role;
import dkd.okay.system.bo.V_AuthTreeByUser;
import dkd.okay.system.service.RoleServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.tree.TreeUtil;
import dkd.okay.system.web.formmodel.RoleForm;
/**
 * Function:	
 * @author wangqian
 * @Date 2014-7-9下午3:09:29
 * Description:角色Controller
 */
@Controller
@RequestMapping("/role")
public class RoleController extends BaseController  {
	
	@Autowired
	private RoleServiceImpl roleServiceImpl;
	/**
	 * 查询所有角色列表
	 * @return
	 */
	@RequestMapping("/role.do")
	public ModelAndView role(String message,String roleName,HttpServletRequest request,ModelMap model){
		String pageNow = request.getParameter("pageNow");
		Role roleQuery = new Role();
		roleQuery.setRoleName(roleName == null ? "" : roleName.trim());
		Map<String, Object> map = roleServiceImpl.selectRoleByPage(pageNow,roleQuery);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("roleName",roleName);
		model.addAttribute("roleList",map.get("roleList"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("message", message);
		return new ModelAndView("system/role/roleList",model);
	} 
	/**
	 * 初始化角色新增(或编辑)Tab界面
	 * @return
	 */
	@RequestMapping("/roleTabInfo.do")
	public ModelAndView roleTabInfo (String roleId,String type){
			Map<String,String> model = new HashMap<String,String>();
			model.put("roleId", roleId);
			model.put("type", type);
			return new ModelAndView("system/role/roleTabInfo",model);
			
		}
	/**
	 * 初始化角色新增(或编辑)信息界面
	 * @param roleId 角色ID
	 * @return
	 */
	@RequestMapping("/roleInfo.do")
	public ModelAndView roleInfo(String roleId,String type){
		if(roleId == null || ("").equals(roleId)){
			RoleForm roleForm = new  RoleForm();
			Map<String,RoleForm> model = new HashMap<String,RoleForm>();
			model.put("roleForm", roleForm);
			return new ModelAndView("system/role/roleInfo",model);
		}
		else{	
			RoleForm roleForm = new RoleForm();
			Role role = roleServiceImpl.selectRoleById(roleId);
			BeanUtils.copyProperties(role, roleForm);
			Map<String,RoleForm> model = new HashMap<String,RoleForm>();
			model.put("roleForm", roleForm);
			if(StringUtils.equals("edit", type)){
				return new ModelAndView("system/role/roleInfo",model);
			}
			else{
				return new ModelAndView("system/role/roleInfoView",model);
			}
		}
		
	}
	/**
	 * 保存角色基本信息
	 * @param roleForm
	 * @return
	 */
	@RequestMapping("/saveRoleInfo.do")
	public String saveRoleInfo(RoleForm roleForm,ModelMap model,HttpServletRequest request){
		Role role = new Role();
		BeanUtils.copyProperties(roleForm, role);
		role.setIsDel("0");
		if(roleForm.getRoleId() == null || ("").equals(roleForm.getRoleId())){
			roleServiceImpl.saveRuleInfo(role);
		}
		else{
			roleServiceImpl.updateRoleInfoById(role);
		}
		model.put("message", Common.selectEnglish("角色保存成功", request));
		return "redirect:/role/role.do";
	}

	/**
	 * 初始化(编辑)加载权限树
	 * @param roleId 角色id
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/roleAuthority.do")
	public ModelAndView roleAuthority(String roleId,String type,ModelMap model) {
		RoleForm roleForm = new RoleForm();
		roleForm.setRoleId(roleId);
		roleForm.setType(type);
		model.addAttribute("roleForm", roleForm);
		if(StringUtils.equals("edit", type)){
			return new ModelAndView("system/role/roleAuthority",model);
		}else{			
			return new ModelAndView("system/role/roleAuthorityView",model);
		}
	}
	/**
	 * 为编辑角色权限加载所有权限列表
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/authTreeByUser.do")
	public void authTreeByUser(HttpServletResponse response,String roleId,String type)throws Exception{
		//调用TreeUtil中的makeTree方法
		TreeUtil<V_AuthTreeByUser> roleAuthTree = new TreeUtil<V_AuthTreeByUser>();
		//根据当前登录用户加载此用户可以分配使用的全部权限
		List<V_AuthTreeByUser> authTreeList = roleServiceImpl.loadAuthTreeByCurrentUser();
		//生成树后的json
		List<V_AuthTreeByUser> authTree = new ArrayList<V_AuthTreeByUser>();
		if(StringUtils.isEmpty(roleId)){//判断角色id是否为空,为空则要根据当前当前登录用户获取权限列表
			authTree= roleAuthTree.makeTree(authTreeList,null);
		}
		else {
			Role role = new Role();
			//组装UserRole实体,目的是根据roleid和当前登录用户查询已保存到数据库中的角色权限
			//根据当前登录userId和roleid加载已存储到数据库中的权限列表
			List<V_AuthTreeByUser> roleAuthList =roleServiceImpl.loadAuthTreeByRole(roleId);
			if(StringUtils.equals(type,"edit")){//若是编辑状态,则要加载两种类型的树,将完整树中已保存的树选上
				role.setRoleAuthorities(roleAuthList);
				authTree= roleAuthTree.makeTree(authTreeList,role);
			}else{
				//根据当前登录userId和roleid加载已存储到数据库中的权限列表
				authTree= roleAuthTree.makeTree(roleAuthList,null);
			}
		}
		JSONArray authTreeJson = JSONArray.fromObject(authTree);
		PrintWriter writer = response.getWriter();
		writer.println(authTreeJson.toString());	
	}
	/**
	 * 根据角色id删除逻辑角色信息
	 * @param roleId
	 * @return
	 */
	@RequestMapping("/updateRoleInfoById.do")
	public String  roleUpdateById(String roleId,ModelMap model,HttpServletRequest request){
		int count = roleServiceImpl.selectUserCountByRole(roleId);
		if(count==0){
			Role role = roleServiceImpl.selectRoleById(roleId);
			role.setIsDel("1");
			roleServiceImpl.updateRoleInfoById(role);
			model.addAttribute("message",Common.selectEnglish("删除成功", request));
			
		}else if(count>0){
			model.addAttribute("message","此角色正被使用,请确定无用户使用后方可删除");
			
		}
	
		return "redirect:/role/role.do";
	}
	/**
	 * 保存角色权限树信息
	 * @param roleId
	 * @param authId
	 */
	@RequestMapping("/saveRoleAuthTree.do")
	public void saveRoleAuthTree(RoleForm roleForm){
		try{
			roleServiceImpl.saveRoleAuthTree(roleForm);			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/**
	 * 校验角色重名情况
	 * @param roleName
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatRoleName.do")
	public void repeatRoleName(String roleName,String roleId,HttpServletResponse response)throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(roleServiceImpl.selectCompanyRepeat(roleName,roleId));
	}

}
