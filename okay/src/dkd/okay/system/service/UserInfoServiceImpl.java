package dkd.okay.system.service;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Company;
import dkd.okay.system.bo.Role;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserAuthority;
import dkd.okay.system.bo.UserInfo;
import dkd.okay.system.bo.UserRole;
import dkd.okay.system.dao.RoleDaoImpl;
import dkd.okay.system.dao.UserAuthorityDaoImpl;
import dkd.okay.system.dao.UserDaoImpl;
import dkd.okay.system.dao.UserInfoDaoImpl;
import dkd.okay.system.dao.UserRoleDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 用户信息Service接口实现类
 * @author SY
 *
 */

@Transactional
@Service(value="userInfoService")
public class UserInfoServiceImpl{
	
	@Resource(name="userInfoDao")
	private UserInfoDaoImpl userInfoDaoImpl;
	
	@Resource(name="userDao")
	private UserDaoImpl userDaoImpl;
	
	@Resource(name="userAuthorityDao")
	private UserAuthorityDaoImpl userAuthorityDaoImpl;
	
	@Resource(name="userRoleDao")
	private UserRoleDaoImpl userRoleDaoImpl;
	
	
	/**
	 * 分页查询用户信息
	 * @param pageNow 当前页
	 * @param companyId 组织机构id
	 * @return
	 */
	
	
	public Map<String, Object> selectUserInfoByCompanyId(String pageNow,String companyId,String roleName,String workNo,String realName,String position) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		if(StringUtils.isNotEmpty(companyId) && !StringUtils.equals("0", companyId)){
			map.put("companyId", companyId);
		}
		if(workNo!=null&&workNo!=""){
			workNo=workNo.trim();
		}
		if(position!=null&&position!=""){
			position=position.trim();
		}
		if(realName!=null&&realName!=""){
			realName=realName.trim();
		}
		if(roleName!=null&&roleName!=""){
			roleName=roleName.trim();
		}
			map.put("workNo", workNo);
			map.put("realName", realName);
			map.put("position", position);
			map.put("roleName", roleName);
		int totalCount = userInfoDaoImpl.selectUserInfoByCompanyIdCount(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<UserInfo> userInfoList = userInfoDaoImpl.selectUserInfoByCompanyId(map);
		map.put("userInfoList", userInfoList);
		return map;
	}
	
	
	/**
	 * 导出用户信息
	 * @param companyId 组织机构id
	 * @return
	 */
	
	
	public Map<String, Object> exportUserInfoByCompanyId(String companyId,String roleName,String workNo,String realName,String position) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(StringUtils.isNotEmpty(companyId) && !StringUtils.equals("0", companyId)){
			map.put("companyId", companyId);
		}
		if(workNo!=null&&workNo!=""){
			workNo=workNo.trim();
		}
		if(position!=null&&position!=""){
			position=position.trim();
		}
		if(realName!=null&&realName!=""){
			realName=realName.trim();
		}
		if(roleName!=null&&roleName!=""){
			roleName=roleName.trim();
		}
			map.put("workNo", workNo);
			map.put("realName", realName);
			map.put("position", position);
			map.put("roleName", roleName);
		List<UserInfo> allUserInfoList = userInfoDaoImpl.exportUserInfoByCompanyId(map);
		map.put("allUserInfoList", allUserInfoList);
		return map;
	}
	
	
	/**
	 * 检查用户名重复
	 * @param userName 用户名
	 * @return
	 */
	
	
	public int checkName(String userName){
		return userDaoImpl.count(userName);
	}
	public int checkRealName(String realName){
		return userInfoDaoImpl.countReal(realName);
	}
    
	public String editUserInfo(User user,UserInfo userInfo ){
		user.setUserInfo(userInfo);
		userInfo.setUser(user);
		userInfoDaoImpl.update(userInfo);
		return null;
		
	}
	/**
	 * 编辑用户信息
	 * @param user 
	 * @param userInfo 
	 * @param companyId 
	 * @return
	 * @throws IOException 
	 */
	
	
	public String editUser(User user, UserInfo userInfo, String companyId) throws IOException {
		//InputStream is = userInfo.getPic().getInputStream();
//		String fileName = userInfo.getPic().getOriginalFilename();
//		if(!fileName.equals("")){
//			String ext = fileName.substring(fileName.lastIndexOf(".")+1,fileName.length());
//			ext = ext.toLowerCase();  
//			//BufferedImage bufferedImg = ImageIO.read(is);
//			//bufferedImg.getHeight()>45||bufferedImg.getWidth()>150||
//			if(!ext.equals("jpg")){
//				return "上传签名不符合要求";
//			}
//			userInfo.setSign_image(userInfo.getPic().getBytes());
//		}
		if(StringUtils.isEmpty(userInfo.getUserInfoId())){
			String userId = UUIDGenerator.getUUID();
			String userInfoId = UUIDGenerator.getUUID();
			user.setUserId(userId);
			
			userInfo.setUserInfoId(userInfoId);
			user.setUserInfo(userInfo);
			userInfo.setUser(user);
			Company company = new Company();
			company.setCompanyId(companyId);
			userInfo.setCompany(company);
			userInfo.setCreateTime(new Date());
			int userFlag = userDaoImpl.insert(user);
			int userInfoFlag = userInfoDaoImpl.insert(userInfo);
			if(userFlag==0&&userInfoFlag==0){
				return "用户保存失败";
			}
		}else{
			userInfoDaoImpl.update(userInfo);
		}
		return "用户保存成功";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	

	
	
	public boolean editUser(User user, UserInfo userInfo) throws IOException {
//		InputStream is = userInfo.getPic().getInputStream();
//		String fileName = userInfo.getPic().getOriginalFilename();
//		if(!fileName.equals("")){
//			String ext = fileName.substring(fileName.lastIndexOf(".")+1,fileName.length());
//			ext = ext.toLowerCase();  
//			BufferedImage bufferedImg = ImageIO.read(is);
//			if(bufferedImg.getHeight()>45||bufferedImg.getWidth()>150||!ext.equals("jpg")){
//				return false;
//			}
//			userInfo.setSign_image(userInfo.getPic().getBytes());
//		}
		userInfoDaoImpl.update(userInfo);
		System.out.println(user.getUserId());
		System.out.println(user.getPassWord());
		return true;
	}
	
	/**
	 * 根据id获取用户信息
	 * @param userInfoId
	 * @return
	 */
	
	
	public UserInfo selectUserInfoById(String userInfoId){
		return userInfoDaoImpl.get(userInfoId);
	}
	public UserInfo selectUserInfoByuserId(String userId){
		return userInfoDaoImpl.getByuserId(userId);
	}
	/**
	 * 删除用户
	 * @param userId
	 * @return
	 */
	
	
	public void deleteUser(String userId) {
		userDaoImpl.delete(userId);
	}
	
	/**
	 * 禁用用户
	 * @param userId
	 * @return
	 */
	
	
	public void disableUser(String userId) {
		User user = new User();
		user.setUserId(userId);
		userDaoImpl.updateDisable(user);
	}
	
	/**
	 * 禁用用户
	 * @param userId
	 * @return
	 */
	
	
	public void enableUser(String userId) {
		User user = new User();
		user.setUserId(userId);
		userDaoImpl.updateEnable(user);
	}
	public void initPassword(String userId) {
		userDaoImpl.initPassword(userId);
	}
	
	/**
	 * 根据用户信息id查询用户具有的权限
	 * @param userId
	 * @return
	 */
	
	
	public User selectUserAuthByUserInfoId(String userInfoId) {
		return userDaoImpl.selectUserAuthByUserInfoId(userInfoId);
	}
	
	/**
	 * 编辑用户权限
	 * @param userId 用户权限
	 * @param ids 权限id字符串
	 * @param codes 权限编码字符串
	 * @return
	 */
	
	
	public void editUserAuth(String userId, String ids, String codes) {
		userAuthorityDaoImpl.delete(userId);
		ids = ids.substring(0, ids.length() -1);
		String[] idss = ids.split(",");
		codes = codes.substring(0, codes.length() -1);
		String[] codess = codes.split(",");
		UserAuthority userAuthority = new UserAuthority();
		userAuthority.setUserId(userId);
		for(int i=0;i<idss.length;i++){
			userAuthority.setAuthId(idss[i]);
			userAuthority.setAuthCode(codess[i]);
			userAuthorityDaoImpl.insert(userAuthority);
		}
	}
	
	/**
	 * 编辑用户角色
	 * @param userId 用户权限
	 * @param ids 权限id字符串
	 * @return
	 */
	
	
	public void editUserRole(String userId, String ids) {
		userRoleDaoImpl.delete(userId);//角色清空
		ids = ids.substring(0, ids.length() -1);
		String[] idss = ids.split(",");
		UserRole userRole = new UserRole();
		userRole.setUserId(userId);
		for(int i=0;i<idss.length;i++){//循环角色
			userRole.setRoleId(idss[i]);
			userRoleDaoImpl.insert(userRole);//插入角色
			//List<RoleAuthority> roleAuthorities=roleAuthorityDaoImpl.authCodeByRole(idss[i]);//当前角色权限
			//删除用户权限表中当前角色的权限
//			userAuthorityDaoImpl.deleteRoleAuth(userId);
			//*******
//			for(RoleAuthority roleAuthority:roleAuthorities){//循环当前角色权限
//				UserAuthority userAuthority = new UserAuthority();
//				userAuthority.setUserId(userId);
//				userAuthority.setAuthId(roleAuthority.getAuthId());
//				userAuthority.setAuthCode(roleAuthority.getAuthCode());
//				userAuthority.setAuthType("role");
//				userAuthority.setFk(idss[i]);
//				userAuthorityDaoImpl.insert(userAuthority);//插入角色权限
//			}
		}
		//删除用户权限表中当前角色的权限
		userAuthorityDaoImpl.deleteRoleAuth(userId);
		userAuthorityDaoImpl.insertRoleAuth(userId);//插入角色权限
	}

	public UserInfo selectUserById(String userId) {
		return userInfoDaoImpl.selectUserById(userId);
	}
	@Resource(name="roleDao")
	private RoleDaoImpl roleDaoImpl;
	
		
	public List<Role> selectUserRoleByUserId(String userId){
		List<Role> roleList = roleDaoImpl.selectAll();
		for(Role role : roleList){
			for(UserRole userRole : this.selectViewUserRoleByUserId(userId)){
				if(StringUtils.equals(role.getRoleId(), userRole.getRoleId()))
					role.setIfUser("true");
			}
		}
		return roleList;
	}
	public List<UserRole> selectViewUserRoleByUserId(String userId){
		return userRoleDaoImpl.selectUserRoleByUserId(userId);
	}

	
	public List<UserAuthority> selectUserAuthByUserId(String userId) {
		return userAuthorityDaoImpl.selectUserAuthByUserId(userId);
	}
	/**
	 * 根据Id查询用户信息
	 * @param userId
	 * @return
	 */
	public User selectUserByUserId(String userId){
		return userDaoImpl.selectUserByUserId(userId);
	}
	/**
	 * 保存密码
	 * @param user
	 */
	public void savePassword(User user){
		userDaoImpl.update(user);
	}

	
	public UserInfo getuserNameByrealName(String realName) {
		return userInfoDaoImpl.getUserByrealName(realName);
	}
	public List<UserInfo> selectByPosition(String[] position){
		return userInfoDaoImpl.selectByPosition(position);
	}

}
