package dkd.okay.system.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.User;

/**
 * 用户DAO接口实现类
 * @author SY
 *
 */

@Repository(value="userDao")
public class UserDaoImpl extends BaseDaoImpl<User, String>{
	
	/**
	 * 根据用户名查询用户信息
	 * @param username 用户名
	 * @return user 用户对象级联该用户权限
	 * @author SY
	 */
	public User selectUserByUserName(String username) {
		return sqlSession.selectOne("User.selectUserByUserName", username);
	}
	
	/**
	 * 根据用户信息id查询用户具有的权限
	 * @param userInfoId 用户信息id
	 * @return 
	 */
	
	public User selectUserAuthByUserInfoId(String userInfoId) {
		return sqlSession.selectOne("User.selectUserAuthByUserInfoId", userInfoId);
	}
	
	
	//------------------------高级用户管理-------------------------------------------
	/**
	 * 查询全部高级用户信息
	 */
	public List<User> selectSeniorUser() {
    	return sqlSession.selectList("User.selectSeniorUser");  
	}
	public User selectSeniorUserById(String userId) {
    	return sqlSession.selectOne("User.selectSeniorUserById",userId);  
	}
	public void insertSeniorUser(User user) {  
    	sqlSession.insert("User.insertSeniorUser",  user);    
    } 
	public int updateEnable(User user) {  
        return sqlSession.update("User.updateEnable", user);  
    } 
	public int updateDisable(User user) {  
        return sqlSession.update("User.updateDisable", user);  
    } 
	
	/**
	 * 根据用户信息id查询用户具有的权限
	 * @param userInfoId 用户信息id
	 * @return 
	 */
	
	public User selectSeniorUserAuthByUserInfoId(String userInfoId) {
		return sqlSession.selectOne("User.selectSeniorUserAuthByUserInfoId", userInfoId);
	}
	public User selectUserByUserId(String userId) {
		return sqlSession.selectOne("User.selectUserByUserId", userId);
	}
	public void initPassword(String userId){
		sqlSession.update("User.initPassword", userId);
	}
}
