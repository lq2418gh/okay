package dkd.okay.business.outstock.bo;

import java.io.Serializable;
import java.math.BigDecimal;

public class OutstockDetail implements Serializable{

	private static final long serialVersionUID = 1L;

	private String id;
	private int outstock_row_no;//序号(排序)
	private String outstock_head;//主表id
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
	private BigDecimal main_residue;//采购订单物资未出库数量
	private BigDecimal main_in_outstock;//采购订单物资已出库数量
	private BigDecimal residue;//采购订单物资未出库数量
	private BigDecimal in_outstock;//采购订单物资已出库数量
	private BigDecimal stock;//采购订单物资已出库数量
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOutstock_row_no() {
		return outstock_row_no;
	}
	public void setOutstock_row_no(int outstock_row_no) {
		this.outstock_row_no = outstock_row_no;
	}
	public String getOutstock_head() {
		return outstock_head;
	}
	public void setOutstock_head(String outstock_head) {
		this.outstock_head = outstock_head;
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
	public BigDecimal getMain_in_outstock() {
		return main_in_outstock;
	}
	public void setMain_in_outstock(BigDecimal main_in_outstock) {
		this.main_in_outstock = main_in_outstock;
	}
	public BigDecimal getResidue() {
		return residue;
	}
	public void setResidue(BigDecimal residue) {
		this.residue = residue;
	}
	public BigDecimal getIn_outstock() {
		return in_outstock;
	}
	public void setIn_outstock(BigDecimal in_outstock) {
		this.in_outstock = in_outstock;
	}
	public BigDecimal getStock() {
		return stock;
	}
	public void setStock(BigDecimal stock) {
		this.stock = stock;
	}
	
}
