package dkd.okay.system.web.formmodel;

public class RoleForm {
	private String roleId;
	private String roleName;
	private String remarks;
	

	private String type;
	private String ids;
	private String codes;
	//seter,geter 方法
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
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "RoleForm [roleId=" + roleId + ", roleName=" + roleName
				+ ", remarks=" + remarks + ", type=" + type + ", ids=" + ids
				+ ", codes=" + codes + "]";
	}
	
	
	
	
}
