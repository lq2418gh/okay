package dkd.okay.system.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.UserInfo;

/**
 * 用户信息DAO接口实现类
 * @author SY
 *
 */

@Repository(value="userInfoDao")
public class UserInfoDaoImpl extends BaseDaoImpl<UserInfo, String>{
	
	/**
	 * 根据公司查看用户
	 * @author SY
	 */
	
	
	public List<UserInfo> selectUserInfoByCompanyId(Map<String, Object> map) {
			return sqlSession.selectList("UserInfo.selectUserInfoByCompanyId", map);
	}
	
	/**
	 * 根据公司导出用户信息
	 * @author ZY
	 */
	
	public List<UserInfo> exportUserInfoByCompanyId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("UserInfo.exportUserInfoByCompanyId", map);
	}
	
	
	public Integer selectUserInfoByCompanyIdCount(Map<String, Object> map) {
			Integer count = (Integer)sqlSession.selectOne("UserInfo.selectUserInfoByCompanyIdByRoleCount", map);
			return count.intValue();  
	}
	/**
	 * 根据id查看用户
	 * @author SY
	 */
	
	
	public UserInfo selectUserById(String userId) {
		return sqlSession.selectOne("UserInfo.selectUserById", userId);
	}
	
	/**
	 * 新建高级用户
	 * @author zbt
	 */
	
	
	public void insertSeniorUserInfo(UserInfo userInfo) {  
    	sqlSession.insert("UserInfo.insertSeniorUserInfo",  userInfo);    
    } 
	
	/**
	 * 按照职位查询员工
	 * @author fwr
	 */
	
	
	public List<UserInfo> selectByPosition(String[] position) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("position", position);
		return sqlSession.selectList("UserInfo.selectByPosition", map);
	}

	
	public UserInfo getUserByrealName(String realName) {
		return sqlSession.selectOne("UserInfo.selectByName", realName);
	}
	public Integer countReal(String realName){
		Integer count = (Integer) sqlSession.selectOne("UserInfo.countReal",realName);
		return count.intValue();
	}
	public UserInfo getByuserId(String userId){
		return sqlSession.selectOne("UserInfo.selectByuserId", userId);
	}
	public List<UserInfo> selectByRoles(String[] role) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("role", role);
		return sqlSession.selectList("UserInfo.selectByRole", map);
	}
	public List<UserInfo> selectByRoleAndCompany(Map<String,String> map) {
		return sqlSession.selectList("UserInfo.selectByRoleAndCompany",map);
	}
}