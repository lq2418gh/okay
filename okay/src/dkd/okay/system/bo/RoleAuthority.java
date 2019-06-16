package dkd.okay.system.bo;

public class RoleAuthority {
	private String roleId;
	private String authId;
	private String authCode;
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getAuthId() {
		return authId;
	}
	public void setAuthId(String authId) {
		this.authId = authId;
	}
	public String getAuthCode() {
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}
	@Override
	public String toString() {
		return "RoleAuthority [roleId=" + roleId + ", authId=" + authId
				+ ", authCode=" + authCode + "]";
	}
	
	
	
}
