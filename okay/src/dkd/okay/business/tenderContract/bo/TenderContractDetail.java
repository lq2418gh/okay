package dkd.okay.business.tenderContract.bo;

import java.io.Serializable;
import java.math.BigDecimal;


public class TenderContractDetail implements Serializable{

	private static final long serialVersionUID = 1L;
	private String id;
	private String tender_contract;//主表id
	private String material;//物料id
	private BigDecimal main_Price;
	private BigDecimal secondary_Price;
	private BigDecimal quantity;//数量
	private String purchase_head_id;//物资采购审批主表id
	private String purchase_detail_id;//物资采购审批明细表id
	private int tcd_row_num;//序号
	private String budget_plan_detail;//计划预算明细id
	private String centralized_department;//归口部门id
	private String account;//预算科目id
	//临时字段
	private String name;//物资名称
	private String code;//物资编码
	private String spec;//物资规格
	private String unit;//物资单位
	private String explain;//物资说明
	
	//生成框架协议使用的字段
	private String conversion;//箱容
	
	
	
	public String getCentralized_department() {
		return centralized_department;
	}
	public void setCentralized_department(String centralized_department) {
		this.centralized_department = centralized_department;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getBudget_plan_detail() {
		return budget_plan_detail;
	}
	public void setBudget_plan_detail(String budget_plan_detail) {
		this.budget_plan_detail = budget_plan_detail;
	}
	public int getTcd_row_num() {
		return tcd_row_num;
	}
	public void setTcd_row_num(int tcd_row_num) {
		this.tcd_row_num = tcd_row_num;
	}
	public String getPurchase_head_id() {
		return purchase_head_id;
	}
	public void setPurchase_head_id(String purchase_head_id) {
		this.purchase_head_id = purchase_head_id;
	}
	public String getPurchase_detail_id() {
		return purchase_detail_id;
	}
	public void setPurchase_detail_id(String purchase_detail_id) {
		this.purchase_detail_id = purchase_detail_id;
	}
	public BigDecimal getMain_Price() {
		return main_Price;
	}
	public void setMain_Price(BigDecimal main_Price) {
		this.main_Price = main_Price;
	}
	public BigDecimal getQuantity() {
		return quantity;
	}
	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTender_contract() {
		return tender_contract;
	}
	public void setTender_contract(String tender_contract) {
		this.tender_contract = tender_contract;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public BigDecimal getSecondary_Price() {
		return secondary_Price;
	}
	public void setSecondary_Price(BigDecimal secondary_Price) {
		this.secondary_Price = secondary_Price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public String getConversion() {
		return conversion;
	}
	public void setConversion(String conversion) {
		this.conversion = conversion;
	}
	
	
}
