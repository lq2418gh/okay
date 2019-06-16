package dkd.okay.system.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.RoleAuthority;
@Repository(value="roleAuthDao")
public class RoleAuthorityDaoImpl  extends BaseDaoImpl<RoleAuthority, String>{
	/**
	 * 根据角色id查询权限树Code
	 * @param roleId 角色id
	 * @return
	 */
	public List<RoleAuthority>authCodeByRole(String roleId){
		return sqlSession.selectList("RoleAuthority.authCodeByRole",roleId);
	}
	public void updateByAuth(Map<String,String> map){
		sqlSession.update("RoleAuthority.updateByAuth",map);
	}
	public void deleteByAuth(String authId){
		sqlSession.update("RoleAuthority.deleteByAuth",authId);
	}
}