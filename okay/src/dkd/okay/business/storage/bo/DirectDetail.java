package dkd.okay.business.storage.bo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 直达现场明细
 * @author 周渤涛
 *
 */
public class DirectDetail implements Serializable{

	private static final long serialVersionUID = 1L;

	private String id;
	private int direct_row_no;//序号(排序)
	private String direct_head;//主表id
	private String order_detail;//订单明细id
	private String material;//物资id
	private BigDecimal packing;//包装
	private BigDecimal main_price;//主要单位单价（带出采购订单单价）
	private BigDecimal main_quantity;//主要单位数量
	private BigDecimal secondary_price;//常用单位单价（带出采购订单单价）
	private BigDecimal secondary_quantity;//常用单位数量
	private String remark;//备注
	
	//临时字段
	private String name;//物资名称
	private String conversion;//箱容
	private String unit;//主要计量单位
	private String unit_help;//常用计量单位，前台显示用
	private String spec;//规格型号
	private BigDecimal main_residue;//采购订单物资未入库数量
	private BigDecimal main_in_storage;//采购订单物资已入库数量
	private BigDecimal residue;//采购订单物资未入库数量
	private BigDecimal in_storage;//采购订单物资已入库数量

	private String budget_plan_detail;//计划预算明细id
	
	
	public String getBudget_plan_detail() {
		return budget_plan_detail;
	}
	public void setBudget_plan_detail(String budget_plan_detail) {
		this.budget_plan_detail = budget_plan_detail;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDirect_row_no() {
		return direct_row_no;
	}
	public void setDirect_row_no(int direct_row_no) {
		this.direct_row_no = direct_row_no;
	}
	public String getDirect_head() {
		return direct_head;
	}
	public void setDirect_head(String direct_head) {
		this.direct_head = direct_head;
	}
	public String getOrder_detail() {
		return order_detail;
	}
	public void setOrder_detail(String order_detail) {
		this.order_detail = order_detail;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public BigDecimal getPacking() {
		return packing;
	}
	public void setPacking(BigDecimal packing) {
		this.packing = packing;
	}
	public BigDecimal getMain_price() {
		return main_price;
	}
	public void setMain_price(BigDecimal main_price) {
		this.main_price = main_price;
	}
	public BigDecimal getMain_quantity() {
		return main_quantity;
	}
	public void setMain_quantity(BigDecimal main_quantity) {
		this.main_quantity = main_quantity;
	}
	public BigDecimal getSecondary_price() {
		return secondary_price;
	}
	public void setSecondary_price(BigDecimal secondary_price) {
		this.secondary_price = secondary_price;
	}
	public BigDecimal getSecondary_quantity() {
		return secondary_quantity;
	}
	public void setSecondary_quantity(BigDecimal secondary_quantity) {
		this.secondary_quantity = secondary_quantity;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getConversion() {
		return conversion;
	}
	public void setConversion(String conversion) {
		this.conversion = conversion;
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
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public BigDecimal getMain_residue() {
		return main_residue;
	}
	public void setMain_residue(BigDecimal main_residue) {
		this.main_residue = main_residue;
	}
	public BigDecimal getMain_in_storage() {
		return main_in_storage;
	}
	public void setMain_in_storage(BigDecimal main_in_storage) {
		this.main_in_storage = main_in_storage;
	}
	public BigDecimal getResidue() {
		return residue;
	}
	public void setResidue(BigDecimal residue) {
		this.residue = residue;
	}
	public BigDecimal getIn_storage() {
		return in_storage;
	}
	public void setIn_storage(BigDecimal in_storage) {
		this.in_storage = in_storage;
	}
	
	
	
}
