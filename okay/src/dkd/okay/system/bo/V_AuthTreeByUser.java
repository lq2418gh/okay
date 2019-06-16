package dkd.okay.system.bo;

import dkd.okay.system.util.tree.Tree;

public class V_AuthTreeByUser extends Tree {
	private String authId;
	private String authName;
	private String userId;
	private String parentId;
	private String authCode;
	public String getAuthId() {
		return authId;
	}
	public void setAuthId(String authId) {
		this.authId = authId;
	}
	public String getAuthName() {
		return authName;
	}
	public void setAuthName(String authName) {
		this.authName = authName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getAuthCode() {
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}
	@Override
	public String toString() {
		return "V_AuthTreeByUser [authId=" + authId + ", authName=" + authName
				+ ", userId=" + userId + ", parentId=" + parentId
				+ ", authCode=" + authCode + "]";
	}
	
	
	
}
