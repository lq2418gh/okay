package dkd.okay.business.contract.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;


public class PurchaseContractHead implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String contractNo;//协议编号
	private String varieties;//品种
	private String tenderContract;//招标合同id
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date signDate;//签订日期
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date effectDate;//生效日期
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date expireDate;//到期日期
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date extendedExpireDate;//顺延到期日期
	private Integer extendedYear;//顺延年限
	private String supplier;//供应商id
	private String state;//状态
	private String aResponsibleDepartment;//甲方负责部门
	private String bResponsibleDepartment;//乙方负责部门
	private String partyAName;//甲方名称
	private String partyAChargeperson;//甲方负责人
	private String remark;//备注
	private String purchase_no;//审批表编号
	private String materialsPurchaseId;//审批主表id
	private String bank_account_number;//开户行账号
	private List<PurchaseContractHead> purchaseContractList;
	private List<PurchaseContractDetail> purchaseContractDetailList;
	private List<PurchaseContractAddress> purchaseContractAddressList;
	//临时字段
	private String supplierName;//供应商名称
	private String signStartDate;//签订开始日期
	private String signEndDate;//签订结束日期
	private String effectStartDate;//生效开始日期
	private String effectEndDate;//生效结束日期
	private String linkman;//联系人
	private String tel;//联系电话
	private String opening_bank;//开户行
	private String legal_person;   //法人代表
	private String email;//邮件
	private String yearMon;//当时的年月
	private String address;//地址
	private String fax; //传真
	
	
	
	
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
	public String getBank_account_number() {
		return bank_account_number;
	}
	public void setBank_account_number(String bank_account_number) {
		this.bank_account_number = bank_account_number;
	}
	public String getPurchase_no() {
		return purchase_no;
	}
	public String getMaterialsPurchaseId() {
		return materialsPurchaseId;
	}
	public void setPurchase_no(String purchase_no) {
		this.purchase_no = purchase_no;
	}
	public void setMaterialsPurchaseId(String materialsPurchaseId) {
		this.materialsPurchaseId = materialsPurchaseId;
	}
	public String getContractNo() {
		return contractNo;
	}
	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}
	public List<PurchaseContractDetail> getPurchaseContractDetailList() {
		return purchaseContractDetailList;
	}
	public void setPurchaseContractDetailList(
			List<PurchaseContractDetail> purchaseContractDetailList) {
		this.purchaseContractDetailList = purchaseContractDetailList;
	}
	public String getTenderContract() {
		return tenderContract;
	}
	public void setTenderContract(String tenderContract) {
		this.tenderContract = tenderContract;
	}
	public List<PurchaseContractAddress> getPurchaseContractAddressList() {
		return purchaseContractAddressList;
	}
	public void setPurchaseContractAddressList(
			List<PurchaseContractAddress> purchaseContractAddressList) {
		this.purchaseContractAddressList = purchaseContractAddressList;
	}
	public String getYearMon() {
		return yearMon;
	}
	public void setYearMon(String yearMon) {
		this.yearMon = yearMon;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLegal_person() {
		return legal_person;
	}
	public void setLegal_person(String legal_person) {
		this.legal_person = legal_person;
	}
	public String getOpening_bank() {
		return opening_bank;
	}
	public void setOpening_bank(String opening_bank) {
		this.opening_bank = opening_bank;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getEffectStartDate() {
		return effectStartDate;
	}
	public String getEffectEndDate() {
		return effectEndDate;
	}
	public void setEffectStartDate(String effectStartDate) {
		this.effectStartDate = effectStartDate;
	}
	public void setEffectEndDate(String effectEndDate) {
		this.effectEndDate = effectEndDate;
	}
	public Date getExtendedExpireDate() {
		return extendedExpireDate;
	}
	public String getSignStartDate() {
		return signStartDate;
	}
	public String getSignEndDate() {
		return signEndDate;
	}
	public void setExtendedExpireDate(Date extendedExpireDate) {
		this.extendedExpireDate = extendedExpireDate;
	}
	public void setSignStartDate(String signStartDate) {
		this.signStartDate = signStartDate;
	}
	public void setSignEndDate(String signEndDate) {
		this.signEndDate = signEndDate;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public List<PurchaseContractHead> getPurchaseContractList() {
		return purchaseContractList;
	}
	public void setPurchaseContractList(List<PurchaseContractHead> purchaseContractList) {
		this.purchaseContractList = purchaseContractList;
	}
	public String getVarieties() {
		return varieties;
	}
	public void setVarieties(String varieties) {
		this.varieties = varieties;
	}
	public String getId() {
		return id;
	}
	public Date getSignDate() {
		return signDate;
	}
	public Date getEffectDate() {
		return effectDate;
	}
	public Date getExpireDate() {
		return expireDate;
	}
	public Integer getExtendedYear() {
		return extendedYear;
	}
	public String getSupplier() {
		return supplier;
	}
	public String getState() {
		return state;
	}
	public String getaResponsibleDepartment() {
		return aResponsibleDepartment;
	}
	public String getbResponsibleDepartment() {
		return bResponsibleDepartment;
	}
	public String getPartyAName() {
		return partyAName;
	}
	public String getPartyAChargeperson() {
		return partyAChargeperson;
	}
	public String getRemark() {
		return remark;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setSignDate(Date signDate) {
		this.signDate = signDate;
	}
	public void setEffectDate(Date effectDate) {
		this.effectDate = effectDate;
	}
	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
	public void setExtendedYear(Integer extendedYear) {
		this.extendedYear = extendedYear;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setaResponsibleDepartment(String aResponsibleDepartment) {
		this.aResponsibleDepartment = aResponsibleDepartment;
	}
	public void setbResponsibleDepartment(String bResponsibleDepartment) {
		this.bResponsibleDepartment = bResponsibleDepartment;
	}
	public void setPartyAName(String partyAName) {
		this.partyAName = partyAName;
	}
	public void setPartyAChargeperson(String partyAChargeperson) {
		this.partyAChargeperson = partyAChargeperson;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}