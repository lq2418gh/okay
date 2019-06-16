package dkd.okay.system.bo;

import java.io.Serializable;

import dkd.okay.system.util.tree.Tree;

/**
 * 组织机构
 * 
 * @author WJ
 */

public class Company extends Tree implements Serializable {

	private static final long serialVersionUID = 1L;

	private String companyId;// 组织机构id
	private String companyCode;// 组织机构编码
	private String companyName;// 组织机构名称
	private String companyType;// 组织机构类型
	private String parentId;// 上一级id
	private int levels;// 层级
	private boolean isDel;// 删除
	private String remark;// 备注

	private String companyDistrict;// 部门所属区域
	private String companyAddress;// 部门地址
	private String companyContact;// 部门联系人
	private String companyTel;// 部门电话

	private String parentName;// 上一级部门名称

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public int getLevels() {
		return levels;
	}

	public void setLevels(int levels) {
		this.levels = levels;
	}

	public boolean isDel() {
		return isDel;
	}

	public void setDel(boolean isDel) {
		this.isDel = isDel;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCompanyDistrict() {
		return companyDistrict;
	}

	public void setCompanyDistrict(String companyDistrict) {
		this.companyDistrict = companyDistrict;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getCompanyContact() {
		return companyContact;
	}

	public void setCompanyContact(String companyContact) {
		this.companyContact = companyContact;
	}

	public String getCompanyTel() {
		return companyTel;
	}

	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyCode="
				+ companyCode + ", companyName=" + companyName
				+ ", companyType=" + companyType + ", parentId=" + parentId
				+ ", levels=" + levels + ", isDel=" + isDel + ", remark="
				+ remark + ", companyDistrict=" + companyDistrict
				+ ", companyAddress=" + companyAddress + ", companyContact="
				+ companyContact + ", companyTel=" + companyTel
				+ ", parentName=" + parentName + "]";
	}

}
