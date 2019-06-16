package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.List;


/**
 * Function:	
 * @author wangqian
 * @Date 2014-7-9上午11:10:05
 * Description:角色实体�?
 */
public class Role implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String roleId;//角色id
	private String roleName;//角色name
	private String remarks;//备注信息
	private List<V_AuthTreeByUser> roleAuthorities;//角色权限
	private String isDel;
	

	private String ifUser;//编辑用户角色时用
	
	//生成seter,geter方法
	
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
	
	public List<V_AuthTreeByUser> getRoleAuthorities() {
		return roleAuthorities;
	}
	public void setRoleAuthorities(List<V_AuthTreeByUser> roleAuthorities) {
		this.roleAuthorities = roleAuthorities;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getIfUser() {
		return ifUser;
	}
	public void setIfUser(String ifUser) {
		this.ifUser = ifUser;
	}
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName
				+ ", remarks=" + remarks + ", roleAuthorities="
				+ roleAuthorities + ", isDel=" + isDel + ", ifUser=" + ifUser
				+ "]";
	}
	
	
}
