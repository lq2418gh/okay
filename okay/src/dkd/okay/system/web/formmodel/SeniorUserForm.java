package dkd.okay.system.web.formmodel;


/**
 * 高级用户Form
 * @author 周渤涛
 * 
 */

public class SeniorUserForm {
	
	private String userId;
	private String userName;
	private String userInfoId;
	private String realName;
	

	private String ids;
	private String codes;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getCodes() {
		return codes;
	}
	public void setCodes(String codes) {
		this.codes = codes;
	}
	@Override
	public String toString() {
		return "SeniorUserForm [userId=" + userId + ", userName=" + userName
				+ ", userInfoId=" + userInfoId + ", realName=" + realName
				+ ", ids=" + ids + ", codes=" + codes + "]";
	}
	
	
}
