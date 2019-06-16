package dkd.okay.system.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.UserAuthority;

/**
 * 用户权限DAO接口实现类
 * @author SY
 *
 */

@Repository(value="userAuthorityDao")
public class UserAuthorityDaoImpl extends BaseDaoImpl<UserAuthority, String>{
	
	public int deleteRoleAuth(String userId) {
		return sqlSession.delete("UserAuthority.deleteRoleAuth", userId);
	}

	public List<UserAuthority> selectUserAuthByUserId(String userId) {
		return sqlSession.selectList("UserAuthority.selectUserAuthByUserId", userId);
	}
	
	
//**************************************************角色操作****************************************************************
	
	
	public void deleteUserAuthByRole(String roleId){
		sqlSession.delete("UserAuthority.deleteUserAuthByRole",roleId);
	}
	
	@Override
	public int insertRoleAuth(String userId) {
		return sqlSession.insert("UserAuthority.insertRoleAuth", userId);
	}
	public void updateByAuth(Map<String,String> map){
		sqlSession.update("UserAuthority.updateByAuth",map);
	}
	public void deleteByAuth(String authId){
		sqlSession.update("UserAuthority.deleteByAuth",authId);
	}
}
