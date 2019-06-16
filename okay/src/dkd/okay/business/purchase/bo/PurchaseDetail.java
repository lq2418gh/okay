package dkd.okay.business.purchase.bo;

import java.io.Serializable;
import java.math.BigDecimal;

import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.business.budget.bo.BudgetAccount;

public class PurchaseDetail implements Serializable{

	
	private static final long serialVersionUID = 1L;

	private String id;//uuid
	private int purchaseDetail_row_no;//行号
	private String materiel_id;//物料id
	private BigDecimal demand_quantity;//需求数量保留2位小数
	private String purpose;//用途 (可为空)
	private String budget_account;//预算科目数据字典
	private BigDecimal budget_amount;//预算金额保留两位小数
	private int demand_date;//需求日期只记月份，展示时关联主表年份
	private String purchase_head_id;//采购计划主表id
	private BigDecimal all_budget_amount;//总金额
	private Material material;//物资对象
	private BudgetAccount budgetAccount;//对象
	private String bud_ac_name;
	private String stock;//库存
	private String code;
	private String name;
	private String unit;
	private String spec;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMateriel_id() {
		return materiel_id;
	}
	public void setMateriel_id(String materiel_id) {
		this.materiel_id = materiel_id;
	}
	public BigDecimal getDemand_quantity() {
		return demand_quantity;
	}
	public void setDemand_quantity(BigDecimal demand_quantity) {
		this.demand_quantity = demand_quantity;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getBudget_account() {
		return budget_account;
	}
	public void setBudget_account(String budget_account) {
		this.budget_account = budget_account;
	}
	public BigDecimal getBudget_amount() {
		return budget_amount;
	}
	public void setBudget_amount(BigDecimal budget_amount) {
		this.budget_amount = budget_amount;
	}
	public int getDemand_date() {
		return demand_date;
	}
	public void setDemand_date(int demand_date) {
		this.demand_date = demand_date;
	}
	public String getPurchase_head_id() {
		return purchase_head_id;
	}
	public void setPurchase_head_id(String purchase_head_id) {
		this.purchase_head_id = purchase_head_id;
	}
	public BigDecimal getAll_budget_amount() {
		return all_budget_amount;
	}
	public void setAll_budget_amount(BigDecimal all_budget_amount) {
		this.all_budget_amount = all_budget_amount;
	}
	public Material getMaterial() {
		return material;
	}
	public void setMaterial(Material material) {
		this.material = material;
	}
	public BudgetAccount getBudgetAccount() {
		return budgetAccount;
	}
	public void setBudgetAccount(BudgetAccount budgetAccount) {
		this.budgetAccount = budgetAccount;
	}
	public String getBud_ac_name() {
		return bud_ac_name;
	}
	public void setBud_ac_name(String bud_ac_name) {
		this.bud_ac_name = bud_ac_name;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public int getPurchaseDetail_row_no() {
		return purchaseDetail_row_no;
	}
	public void setPurchaseDetail_row_no(int purchaseDetail_row_no) {
		this.purchaseDetail_row_no = purchaseDetail_row_no;
	}
	
}
