package dkd.okay.system.web.formmodel;

public class AuthorityForm {
	private String authId;//权限id
	private String authCode;//权限编码
	private String authName;//权限名称
	private String parentId;//上级id
	private String rowOrder;//排序使用
	
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
	public String getRowOrder() {
		return rowOrder;
	}
	public void setRowOrder(String rowOrder) {
		this.rowOrder = rowOrder;
	}
	@Override
	public String toString() {
		return "AuthorityForm [authId=" + authId + ", authCode=" + authCode
				+ ", authName=" + authName + ", parentId=" + parentId
				+ ", rowOrder=" + rowOrder + "]";
	}
	
}
