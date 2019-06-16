package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;
import java.util.List;

/**
 * 供应商
 * @author:linss
 * @date:2017年8月21日
 */
public class Supplier implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id ;  //供应商id
	private String supplier_no  ;  //供应商编码
	private String supplier_name;  //供应商名称
	private String legal_person;   //法人代表
	private String province;       //省份
	private String address;//地址
	private String fax; //传真
	private String email;//邮件
	private String linkman;//联系人
	private String post;//职务
	private String tel;//电话
	private String financial_contact;//财务联系人
	private String financial_tel;   //财务联系电话
	private String financial_email; //财务邮件
	private String opening_bank;//开户行
	private String social_credit_code;//社会信用编码
	private String quality_system;//质量体系
	private String hygiene_license;//卫生许可证
	private String food_circulation_license;//食品流通许可证
	private String supplier_type;//供应商类别
	private String state;//供应商状态
	private String brief_introduction;//厂家简介
	private String remark;//备注
	private String bank_account_number;//开户行账号
	private String score;
	
	
	private List<Supplier> supplierList;
	
	private List<SupplierScore> supplierScoreList;//供应商年度打分
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSupplier_no() {
		return supplier_no;
	}
	public void setSupplier_no(String supplier_no) {
		this.supplier_no = supplier_no;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getLegal_person() {
		return legal_person;
	}
	public void setLegal_person(String legal_person) {
		this.legal_person = legal_person;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFinancial_contact() {
		return financial_contact;
	}
	public void setFinancial_contact(String financial_contact) {
		this.financial_contact = financial_contact;
	}
	public String getFinancial_tel() {
		return financial_tel;
	}
	public void setFinancial_tel(String financial_tel) {
		this.financial_tel = financial_tel;
	}
	public String getFinancial_email() {
		return financial_email;
	}
	public void setFinancial_email(String financial_email) {
		this.financial_email = financial_email;
	}
	public String getOpening_bank() {
		return opening_bank;
	}
	public void setOpening_bank(String opening_bank) {
		this.opening_bank = opening_bank;
	}
	public String getSocial_credit_code() {
		return social_credit_code;
	}
	public void setSocial_credit_code(String social_credit_code) {
		this.social_credit_code = social_credit_code;
	}
	public String getQuality_system() {
		return quality_system;
	}
	public void setQuality_system(String quality_system) {
		this.quality_system = quality_system;
	}
	public String getHygiene_license() {
		return hygiene_license;
	}
	public void setHygiene_license(String hygiene_license) {
		this.hygiene_license = hygiene_license;
	}
	public String getFood_circulation_license() {
		return food_circulation_license;
	}
	public void setFood_circulation_license(String food_circulation_license) {
		this.food_circulation_license = food_circulation_license;
	}
	public String getSupplier_type() {
		return supplier_type;
	}
	public void setSupplier_type(String supplier_type) {
		this.supplier_type = supplier_type;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getBrief_introduction() {
		return brief_introduction;
	}
	public void setBrief_introduction(String brief_introduction) {
		this.brief_introduction = brief_introduction;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public List<Supplier> getSupplierList() {
		return supplierList;
	}
	public void setSupplierList(List<Supplier> supplierList) {
		this.supplierList = supplierList;
	}
	public List<SupplierScore> getSupplierScoreList() {
		return supplierScoreList;
	}
	public void setSupplierScoreList(List<SupplierScore> supplierScoreList) {
		this.supplierScoreList = supplierScoreList;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getBank_account_number() {
		return bank_account_number;
	}
	public void setBank_account_number(String bank_account_number) {
		this.bank_account_number = bank_account_number;
	}
	
}
