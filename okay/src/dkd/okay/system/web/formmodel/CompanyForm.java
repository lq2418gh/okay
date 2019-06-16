package dkd.okay.system.web.formmodel;

import java.util.List;

import dkd.okay.system.bo.Company;

/**
 * 组织结构Form表单实体类
 * 
 * @author WJ
 */

public class CompanyForm {

	private String companyId;// 组织结构id
	private String companyCode;// 组织结构编码
	private String companyName;// 组织结构名称
	private String companyType;// 组织结构类型
	private String parentId;// 上级部门id
	private String parentName;// 上级部门名称
	private int levels;// 结构层级
	private boolean isDel;// 是否删除
	private String remark;// 备注

	private String companyDistrict;// 部门所属区域
	private String companyAddress;// 部门地址
	private String companyContact;// 部门联系人
	private String companyTel;// 部门电话

	/**
	 * 部门查询结果
	 */
	private List<Company> companyList;
	private String message;// 标识是否新建成功

	public List<Company> getCompanyList() {
		return companyList;
	}

	public void setCompanyList(List<Company> companyList) {
		this.companyList = companyList;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

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
		return "CompanyForm [companyId=" + companyId + ", companyCode="
				+ companyCode + ", companyName=" + companyName
				+ ", companyType=" + companyType + ", parentId=" + parentId
				+ ", parentName=" + parentName + ", levels=" + levels
				+ ", isDel=" + isDel + ", remark=" + remark
				+ ", companyDistrict=" + companyDistrict + ", companyAddress="
				+ companyAddress + ", companyContact=" + companyContact
				+ ", companyTel=" + companyTel + ", companyList=" + companyList
				+ ", message=" + message + "]";
	}

}
