package dkd.okay.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Authority;
import dkd.okay.system.bo.Role;
import dkd.okay.system.bo.RoleAuthority;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserAuthority;
import dkd.okay.system.bo.UserRole;
import dkd.okay.system.bo.V_AuthTreeByUser;
import dkd.okay.system.dao.AuthorityDaoImpl;
import dkd.okay.system.dao.RoleAuthorityDaoImpl;
import dkd.okay.system.dao.RoleDaoImpl;
import dkd.okay.system.dao.UserAuthorityDaoImpl;
import dkd.okay.system.dao.UserRoleDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;
import dkd.okay.system.web.formmodel.RoleForm;
@Transactional
@Service(value="RoleService")
public class RoleServiceImpl{
	
	@Resource(name="roleDao")
	private RoleDaoImpl roleDaoImpl;
	@Resource(name="roleAuthDao")
	private  RoleAuthorityDaoImpl roleAuthDaoImpl;
	@Resource(name="authorityDao")
	private AuthorityDaoImpl authorityDaoImpl;
	
	@Resource(name="userAuthorityDao")
	private UserAuthorityDaoImpl userAuthDaoImpl;
	
	@Resource(name="userRoleDao")
	private UserRoleDaoImpl userRoleDaoImpl;
	/**
	 * 查询所有角色列表
	 */
	public List<Role> selectAll() {
		List<Role> roleList = roleDaoImpl.selectAll();
		return roleList;
	}
	public List<Role> selectAllByCondition(Role roleQuery) {
		List<Role> roleList = roleDaoImpl.selectAllByCondition(roleQuery);
		return roleList;
	}
	public List<Role> selectAllByPage(Map<String, Object> map) {
		List<Role> roleList = roleDaoImpl.selectAllByPage(map);
		return roleList;
	}
	/**
	 * 根据角色id查询角色信息
	 * @param roleId :角色Id
	 * @return
	 */
	public Role selectRoleById (String roleId){
		Role role =roleDaoImpl.get(roleId);
		
		return role;
	}
	/**
	 * 保存角色信息
	 */
	public void saveRuleInfo(Role role) {
		// TODO Auto-generated method stub
		String roleId = UUIDGenerator.getUUID();
		role.setRoleId(roleId);
		role.setIsDel("0");
		roleDaoImpl.saveRoleInfo(role);	
	}
	/**
	 * 根据角色id逻辑删除角色信息
	 * @param roleId 角色id
	 */ 
	public void updateRoleInfoById(Role role){
		
		roleDaoImpl.updateRoleInfoById(role);
		
	}
	/**
	 * 根据用户Id加载此用户对应的用户权限树
	 * @param userId
	 */
	public List<V_AuthTreeByUser>  loadAuthTreeByCurrentUser(){
		List<V_AuthTreeByUser> authList = new ArrayList<V_AuthTreeByUser>();
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		V_AuthTreeByUser authTreeByUser = null;
		if(user.isSysAdmin()){
			for(Authority authority :authorityDaoImpl.selectAll()){
				authTreeByUser = new V_AuthTreeByUser();
				BeanUtils.copyProperties(authority,authTreeByUser);
				authList.add(authTreeByUser);
			}
		}else{
			authList = roleDaoImpl.loadAuthTreeByCurrentUser(user.getUserId());
		}
		return authList;
	}
	
	/**
	 * 保存角色权限树
	 */
	public void saveRoleAuthTree(RoleAuthority roleAuthority){
		roleDaoImpl.saveRoleAuthTree(roleAuthority);	
	}
	public List<V_AuthTreeByUser> loadAuthTreeByRole(String roleId){
		//加载当前登录用户
		//编辑角色时去掉当前用户的判断
		//User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserRole userRole = new UserRole();
		userRole.setRoleId(roleId);
		/*if(user.isAppAdmin()){
			userRole.setUserId("1");
		}else{
			userRole.setUserId(user.getUserId());
		}and user_id = #{userId}*/
		return roleDaoImpl.loadAuthTreeByRole(userRole);
	}
	
	public void deleteRoleAuthTree(String roleId){
		
		roleAuthDaoImpl.delete(roleId);
		
	}

	/**
	 * 分页查询角色信息
	 * @param pageNow
	 * @return
	 */
	public Map<String, Object> selectRoleByPage(String pageNow,Role roleQuery){
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		List<Role> roleList = selectAllByCondition(roleQuery);
		int totalCount = roleList.size();
		map.put("roleQuery", roleQuery);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<Role> roleListByPage = roleDaoImpl.selectAllByPage(map);
		map.put("roleList", roleListByPage);
		return map;
	}
	
	public int selectUserCountByRole(String roleId){
		int count = roleDaoImpl.count(roleId);
		
		return count;
	}
	/**
	 * 验证角色名称是否为空
	 */
	public boolean selectCompanyRepeat(String roleName,String roleId){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("roleName", roleName);
		map.put("roleId", roleId);
		if(roleDaoImpl.countRoleName(map) > 0){
			return false;
		}else
			return true;
	}
	/**
	 * 保存role-Auth表信息
	 * @param roleForm
	 */
	public void saveRoleAuthTree(RoleForm roleForm){
		//删除role-auth表信息
		this.deleteRoleAuthTree(roleForm.getRoleId());
		//删除user-auth表信息
		this.deleteUserAuth(roleForm.getRoleId());
		
		UserAuthority userAuth = new UserAuthority();
		RoleAuthority roleAuthority = new RoleAuthority();
		roleAuthority.setRoleId(roleForm.getRoleId());
		String authID[] = roleForm.getIds().split(",");
		String authCODE[]=roleForm.getCodes().split(",");
		for(int i=0;i<authID.length;i++){
			//重新生成role-auth表数据
			roleAuthority.setAuthId(authID[i]);
			roleAuthority.setAuthCode(authCODE[i]);
			this.saveRoleAuthTree(roleAuthority);
			
			//根据roleId查询user-role表获取userId
			List<UserRole> userList = userRoleDaoImpl.selectUserByRole(roleAuthority.getRoleId());
			for(UserRole userRole:userList){
				//重新生成user-auth表数据
				userAuth.setUserId(userRole.getUserId());
				userAuth.setAuthId(roleAuthority.getAuthId());
				userAuth.setAuthCode(roleAuthority.getAuthCode());
				userAuth.setFk(roleAuthority.getRoleId());
				userAuth.setAuthType("role");
				userAuthDaoImpl.insert(userAuth);
			}
		}
	}
	/**
	 * 根据roleId删除用户权限表信息
	 * @param roleId
	 */
	public void deleteUserAuth(String roleId){
		userAuthDaoImpl.deleteUserAuthByRole(roleId);
	}
	public List<Role> selectByName(String roleName){
		return roleDaoImpl.selectByName(roleName);
	}
}