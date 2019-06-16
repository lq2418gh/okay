package dkd.okay.system.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.UserRole;

/**
 * 用户角色DAO接口实现类
 * @author SY
 *
 */

@Repository(value="userRoleDao")
public class UserRoleDaoImpl extends BaseDaoImpl<UserRole, String>{

	public List<UserRole> selectUserRoleByUserId(String userId) {
		return sqlSession.selectList("UserRole.selectUserRoleByUserId", userId);
	}
	
	public List<UserRole> selectUserRoleByRoleId(String roleId){
		return sqlSession.selectList("UserRole.selectUserRoleByRoleId", roleId);
	}

//********************************************************角色操作*****************************************************
	
	public List<UserRole> selectUserByRole(String roleId){
		return sqlSession.selectList("UserRole.selectUserByRole", roleId);
	}
	public Integer selectByRoleName(String userId,String roleName){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userId", userId);
		map.put("roleName", roleName);
		return (Integer)sqlSession.selectOne("UserRole.selectByRoleName", map);
	}
}