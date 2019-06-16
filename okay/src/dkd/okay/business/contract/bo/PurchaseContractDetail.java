package dkd.okay.business.contract.bo;

import java.io.Serializable;
import java.math.BigDecimal;



public class PurchaseContractDetail implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String purchaseContractHead;//采购合同主表id
	private String tenderContractDetail;//招标合同明细id
	private String material;//物料id
	private BigDecimal mainPrice;//主单位单价
	private BigDecimal secondaryPrice;//常用单位单价
	private BigDecimal quantity;//数量
	private BigDecimal totalPrice;//总价
	private String purchase_head_id;//审批主表id
	private String purchase_detail_id;//审批明细表id
	
	private String budget_plan_detail;//计划预算明细id
	private String centralized_department;//归口部门id
	private String account;//预算科目id

	
	private BigDecimal already_quantity;//可用数量
	private String is_already;//是否可用
	
	//临时字段
	private String name;//物资名称
	private String unit;//主要计量单位
	private Integer conversion;//计量单位换算值
	private String spec;//规格型号

	private String department_name;//归口部门id
	private String account_name;//预算科目id

	
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public String getCentralized_department() {
		return centralized_department;
	}
	public String getAccount() {
		return account;
	}
	public void setCentralized_department(String centralized_department) {
		this.centralized_department = centralized_department;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Integer getConversion() {
		return conversion;
	}
	public void setConversion(Integer conversion) {
		this.conversion = conversion;
	}
	public String getBudget_plan_detail() {
		return budget_plan_detail;
	}
	public void setBudget_plan_detail(String budget_plan_detail) {
		this.budget_plan_detail = budget_plan_detail;
	}
	public BigDecimal getAlready_quantity() {
		return already_quantity;
	}
	public void setAlready_quantity(BigDecimal already_quantity) {
		this.already_quantity = already_quantity;
	}
	public String getIs_already() {
		return is_already;
	}
	public void setIs_already(String is_already) {
		this.is_already = is_already;
	}
	public String getPurchase_head_id() {
		return purchase_head_id;
	}
	public String getPurchase_detail_id() {
		return purchase_detail_id;
	}
	public void setPurchase_head_id(String purchase_head_id) {
		this.purchase_head_id = purchase_head_id;
	}
	public void setPurchase_detail_id(String purchase_detail_id) {
		this.purchase_detail_id = purchase_detail_id;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	public BigDecimal getQuantity() {
		return quantity;
	}
	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}
	public String getTenderContractDetail() {
		return tenderContractDetail;
	}
	public void setTenderContractDetail(String tenderContractDetail) {
		this.tenderContractDetail = tenderContractDetail;
	}
	public String getPurchaseContractHead() {
		return purchaseContractHead;
	}
	public void setPurchaseContractHead(String purchaseContractHead) {
		this.purchaseContractHead = purchaseContractHead;
	}
	public BigDecimal getMainPrice() {
		return mainPrice;
	}
	public BigDecimal getSecondaryPrice() {
		return secondaryPrice;
	}
	public void setMainPrice(BigDecimal mainPrice) {
		this.mainPrice = mainPrice;
	}
	public void setSecondaryPrice(BigDecimal secondaryPrice) {
		this.secondaryPrice = secondaryPrice;
	}
	public String getName() {
		return name;
	}
	public String getUnit() {
		return unit;
	}
	public String getSpec() {
		return spec;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getId() {
		return id;
	}
	public String getMaterial() {
		return material;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	
}