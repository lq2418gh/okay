package dkd.okay.business.purchase.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import dkd.okay.business.baseinfo.bo.Material;

/**
 * 协议采购订单明细表
 * @author 周渤涛
 *
 */
public class OrderDetail implements Serializable{

	
	private static final long serialVersionUID = 1L;

	
	
	private String id;//uuid
	
	private String order_frame;//订单ID
	private String frame_detail_id;//协议明细id
	private String contract_detail_id;//协议明细

	private String purchase_head_id;//审批主表id
	private String purchase_detail_id;//审批明细表id
	private String material_id;//物料id
	private BigDecimal main_quantity;//订单数量1保留2位小数
	private BigDecimal secondary_quantity;//订单数量2保留2位小数
	private BigDecimal main_price;//订单单价1保留2位小数
	private BigDecimal secondary_price;//订单单价2保留2位小数
	private BigDecimal amount;//订单单价2保留2位小数
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date delivery_date;//交货日期
	private String remarks;//备注
	private Material material;//物料
	
	

	private BigDecimal already_main_quantity;//可用订单数量1保留2位小数
	private BigDecimal already_secondary_quantity;//可用订单数量2保留2位小数
	private String is_already;//可用状态
	
	private BigDecimal stock_main_quantity;//可用订单数量1保留2位小数
	private BigDecimal stock_secondary_quantity;//可用订单数量2保留2位小数
	private String is_stock;//可用状态
	
	private String budget_plan_detail;//计划预算明细ID
	private String centralized_department;//归口部门ID
	private String account;//预算科目ID
	private String department_name;//归口部门名称
	private String account_name;//预算科目名称
	
//	临时字段
	private int order_row_no;
	private String name;
	private String spec;
	private String unit;
	private String unit_help;
	private Integer conversion;//计量单位换算值

	private BigDecimal already_quantity;
	private BigDecimal quantity;
	private BigDecimal stock;
	
	
	
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
	public BigDecimal getStock_main_quantity() {
		return stock_main_quantity;
	}
	public void setStock_main_quantity(BigDecimal stock_main_quantity) {
		this.stock_main_quantity = stock_main_quantity;
	}
	public BigDecimal getStock_secondary_quantity() {
		return stock_secondary_quantity;
	}
	public void setStock_secondary_quantity(BigDecimal stock_secondary_quantity) {
		this.stock_secondary_quantity = stock_secondary_quantity;
	}
	public String getIs_stock() {
		return is_stock;
	}
	public void setIs_stock(String is_stock) {
		this.is_stock = is_stock;
	}
	public String getBudget_plan_detail() {
		return budget_plan_detail;
	}
	public void setBudget_plan_detail(String budget_plan_detail) {
		this.budget_plan_detail = budget_plan_detail;
	}
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
	public BigDecimal getAlready_quantity() {
		return already_quantity;
	}
	public void setAlready_quantity(BigDecimal already_quantity) {
		this.already_quantity = already_quantity;
	}
	public BigDecimal getQuantity() {
		return quantity;
	}
	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}
	public BigDecimal getAlready_main_quantity() {
		return already_main_quantity;
	}
	public void setAlready_main_quantity(BigDecimal already_main_quantity) {
		this.already_main_quantity = already_main_quantity;
	}
	public BigDecimal getAlready_secondary_quantity() {
		return already_secondary_quantity;
	}
	public void setAlready_secondary_quantity(BigDecimal already_secondary_quantity) {
		this.already_secondary_quantity = already_secondary_quantity;
	}
	public String getIs_already() {
		return is_already;
	}
	public void setIs_already(String is_already) {
		this.is_already = is_already;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getUnit_help() {
		return unit_help;
	}
	public void setUnit_help(String unit_help) {
		this.unit_help = unit_help;
	}
	public Integer getConversion() {
		return conversion;
	}
	public void setConversion(Integer conversion) {
		this.conversion = conversion;
	}
	public int getOrder_row_no() {
		return order_row_no;
	}
	public void setOrder_row_no(int order_row_no) {
		this.order_row_no = order_row_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrder_frame() {
		return order_frame;
	}
	public void setOrder_frame(String order_frame) {
		this.order_frame = order_frame;
	}
	public String getFrame_detail_id() {
		return frame_detail_id;
	}
	public void setFrame_detail_id(String frame_detail_id) {
		this.frame_detail_id = frame_detail_id;
	}
	public String getContract_detail_id() {
		return contract_detail_id;
	}
	public void setContract_detail_id(String contract_detail_id) {
		this.contract_detail_id = contract_detail_id;
	}
	public String getMaterial_id() {
		return material_id;
	}
	public void setMaterial_id(String material_id) {
		this.material_id = material_id;
	}
	public BigDecimal getMain_quantity() {
		return main_quantity;
	}
	public void setMain_quantity(BigDecimal main_quantity) {
		this.main_quantity = main_quantity;
	}
	public BigDecimal getSecondary_quantity() {
		return secondary_quantity;
	}
	public void setSecondary_quantity(BigDecimal secondary_quantity) {
		this.secondary_quantity = secondary_quantity;
	}
	public BigDecimal getMain_price() {
		return main_price;
	}
	public void setMain_price(BigDecimal main_price) {
		this.main_price = main_price;
	}
	public BigDecimal getSecondary_price() {
		return secondary_price;
	}
	public void setSecondary_price(BigDecimal secondary_price) {
		this.secondary_price = secondary_price;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public Date getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(Date delivery_date) {
		this.delivery_date = delivery_date;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Material getMaterial() {
		return material;
	}
	public void setMaterial(Material material) {
		this.material = material;
	}
	public BigDecimal getStock() {
		return stock;
	}
	public void setStock(BigDecimal stock) {
		this.stock = stock;
	}
	
}
