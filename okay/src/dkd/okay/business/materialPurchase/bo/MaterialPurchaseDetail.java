package dkd.okay.business.materialPurchase.bo;

import java.io.Serializable;
import java.math.BigDecimal;

public class MaterialPurchaseDetail implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String purchase_head_id;//审批主表id
	private Integer purchase_row_no;//明细行序号
	private String material;//物资
	private BigDecimal main_Price;//主要单位单价
	private BigDecimal main_Quantity;//主要单位数量
	private BigDecimal secondary_Price;//辅助单位单价
	private BigDecimal secondary_Quantity;//辅助单位数量
	private BigDecimal amount;//金额
	private String budget_plan_detail;//计划预算明细
	private String is_choice;//是否被选择
	private int choiceState;//状态0，1，物资采购审批表被选中 为1

	//临时字段
	private String name;//物资名称
	private String unit;//单位
	private String spec;//规则
	private String code;//规则
	private String explain;//说明
	private String conversion;//换算关系
	private String stock;//库存
	private String account;//预算科目
	private BigDecimal budgetAmount;//预算金额
	private BigDecimal budgetuse;//预算使用
	private String centralized_department;//归口部门id

	private String department_name;//归口部门名称
	private String account_name;//预算科目名称

	private BigDecimal main_Price_f;//主要单位数量
	private BigDecimal secondary_Price_f;//辅助单位数量
	private String frame_detail_id;//协议明细ID
	
	
	public String getFrame_detail_id() {
		return frame_detail_id;
	}
	public void setFrame_detail_id(String frame_detail_id) {
		this.frame_detail_id = frame_detail_id;
	}
	public BigDecimal getMain_Price_f() {
		return main_Price_f;
	}
	public void setMain_Price_f(BigDecimal main_Price_f) {
		this.main_Price_f = main_Price_f;
	}
	public BigDecimal getSecondary_Price_f() {
		return secondary_Price_f;
	}
	public void setSecondary_Price_f(BigDecimal secondary_Price_f) {
		this.secondary_Price_f = secondary_Price_f;
	}
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
	public int getChoiceState() {
		return choiceState;
	}
	public void setChoiceState(int choiceState) {
		this.choiceState = choiceState;
	}
	public String getCentralized_department() {
		return centralized_department;
	}
	public void setCentralized_department(String centralized_department) {
		this.centralized_department = centralized_department;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public BigDecimal getBudgetuse() {
		return budgetuse;
	}
	public void setBudgetuse(BigDecimal budgetuse) {
		this.budgetuse = budgetuse;
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
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public BigDecimal getBudgetAmount() {
		return budgetAmount;
	}
	public void setBudgetAmount(BigDecimal budgetAmount) {
		this.budgetAmount = budgetAmount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPurchase_head_id() {
		return purchase_head_id;
	}
	public void setPurchase_head_id(String purchase_head_id) {
		this.purchase_head_id = purchase_head_id;
	}
	public Integer getPurchase_row_no() {
		return purchase_row_no;
	}
	public void setPurchase_row_no(Integer purchase_row_no) {
		this.purchase_row_no = purchase_row_no;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public String getBudget_plan_detail() {
		return budget_plan_detail;
	}
	public void setBudget_plan_detail(String budget_plan_detail) {
		this.budget_plan_detail = budget_plan_detail;
	}
	public String getIs_choice() {
		return is_choice;
	}
	public void setIs_choice(String is_choice) {
		this.is_choice = is_choice;
	}
	public BigDecimal getMain_Price() {
		return main_Price;
	}
	public void setMain_Price(BigDecimal main_Price) {
		this.main_Price = main_Price;
	}
	public BigDecimal getMain_Quantity() {
		return main_Quantity;
	}
	public void setMain_Quantity(BigDecimal main_Quantity) {
		this.main_Quantity = main_Quantity;
	}
	public BigDecimal getSecondary_Price() {
		return secondary_Price;
	}
	public void setSecondary_Price(BigDecimal secondary_Price) {
		this.secondary_Price = secondary_Price;
	}
	public BigDecimal getSecondary_Quantity() {
		return secondary_Quantity;
	}
	public void setSecondary_Quantity(BigDecimal secondary_Quantity) {
		this.secondary_Quantity = secondary_Quantity;
	}
	public String getConversion() {
		return conversion;
	}
	public void setConversion(String conversion) {
		this.conversion = conversion;
	}
	
}
