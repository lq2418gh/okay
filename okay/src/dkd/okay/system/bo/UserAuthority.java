package dkd.okay.system.bo;

import java.io.Serializable;

import dkd.okay.system.util.tree.Tree;

/**
 * 用户权限关系实体类
 * @author SY
 *
 */

public class UserAuthority extends Tree implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String userId;//用户id
	private String authId;//权限id
	private String authCode;//权限编码
	private String authName;//权限编码
	private String parentId;//权限编码
	private String authType;//权限类型
	private String fk;//权限来自于
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getAuthType() {
		return authType;
	}
	public void setAuthType(String authType) {
		this.authType = authType;
	}
	public String getFk() {
		return fk;
	}
	public void setFk(String fk) {
		this.fk = fk;
	}
	public String getAuthName() {
		return authName;
	}
	public void setAuthName(String authName) {
		this.authName = authName;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	@Override
	public String toString() {
		return "UserAuthority [userId=" + userId + ", authId=" + authId
				+ ", authCode=" + authCode + ", authName=" + authName
				+ ", parentId=" + parentId + ", authType=" + authType + ", fk="
				+ fk + "]";
	}
	
}
