package dkd.okay.system.bo;

import java.io.Serializable;

/**
 * 用户角色关系
 * @author SY
 *
 */

public class UserRole implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String userId;//用户id
	private String roleId;//角色id
	private String roleName;//角色name
	
	private String workEmail;//工作邮箱
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getWorkEmail() {
		return workEmail;
	}
	public void setWorkEmail(String workEmail) {
		this.workEmail = workEmail;
	}
	@Override
	public String toString() {
		return "UserRole [userId=" + userId + ", roleId=" + roleId
				+ ", roleName=" + roleName + ", workEmail=" + workEmail + "]";
	}
	
	
}
