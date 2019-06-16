package dkd.okay.system.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Role;
import dkd.okay.system.bo.RoleAuthority;
import dkd.okay.system.bo.UserRole;
import dkd.okay.system.bo.V_AuthTreeByUser;
@Repository(value="roleDao")
public class RoleDaoImpl extends BaseDaoImpl<Role, String>{
	/**
	 * 查询所有角色列表
	 */
	public List<Role> selectAllByCondition(Role roleQuery){
		return sqlSession.selectList("Role.selectAll",roleQuery);
	}
	public List<Role> selectAllByPage(Map<String, Object> map){
		
		return sqlSession.selectList("Role.selectAllByPage",map);
	}
	/**
	 * 保存角色信息
	 * @param role 角色Entity
	 */
	public void saveRoleInfo(Role role) {
		sqlSession.insert("Role.insertRoleEntity", role);
	}
	public void updateRoleInfoById(Role role){
		
		sqlSession.insert("Role.updateRoleEntity", role);
	}
	public List<V_AuthTreeByUser> loadAuthTreeByCurrentUser(String userId){
		return sqlSession.selectList("Role.loadAuthTreeByCurrentUser",userId);
	}
	public void saveRoleAuthTree (RoleAuthority roleAuthority){
		sqlSession.insert("RoleAuthority.insertRoleAuthority", roleAuthority);	
	}
	public List<V_AuthTreeByUser> loadAuthTreeByRole(UserRole userRole){
		
		return sqlSession.selectList("Role.loadAuthTreeByRole",userRole);
	}
	public int countRoleName(Map<String, Object> map){
		  Integer count = (Integer) sqlSession.selectOne("Role.countRoleName",map);
		  return count;
	}
	public List<Role> selectByName(String roleName){
		return sqlSession.selectList("Role.selectByName",roleName);
	}
}
