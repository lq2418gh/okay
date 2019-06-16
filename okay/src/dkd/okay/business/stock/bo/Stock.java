package dkd.okay.business.stock.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Stock implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;//uuid

	private String warehouse;//仓库id
	private String user_id;//当前登陆用户id
	private String frame_id;//协议编号id
	private String contract_id;//合同编号id
	private String material;//物资id
	private String order_frame;//采购订单的id（可以取出供应商和合同号）
	private String order_detail;//订单明细id
	private String stroageDetail;//入库明细id
	private String stroageHead;//入库id
	private BigDecimal stockNum;//库存
	
	private String storage_no;//入库单号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date entry_date;//入库日期
	private String supplier_name;//供应商名称
	private String warehouse_name;//仓库名称
	private String order_no;//采购订单单号
	private String frame_no;//协议编号
	private String contract_no;//合同编号
	private String user_name;//购置经办人
	private String entry_date_begin;
	private String entry_date_end;
	
	private BigDecimal packing;//包装
	private BigDecimal main_price;//主要单位单价（带出采购订单单价）
	private BigDecimal main_quantity;//主要单位数量
	private BigDecimal secondary_price;//常用单位单价（带出采购订单单价）
	private BigDecimal secondary_quantity;//常用单位数量
	private String remark;//备注
	
	private String name;//物资名称
	private String conversion;//箱容
	private String unit;//主要计量单位
	private String unit_help;//常用计量单位，前台显示用
	private String spec;//规格型号
	
	
	
	public BigDecimal getStockNum() {
		return stockNum;
	}
	public void setStockNum(BigDecimal stockNum) {
		this.stockNum = stockNum;
	}
	public String getEntry_date_begin() {
		return entry_date_begin;
	}
	public void setEntry_date_begin(String entry_date_begin) {
		this.entry_date_begin = entry_date_begin;
	}
	public String getEntry_date_end() {
		return entry_date_end;
	}
	public void setEntry_date_end(String entry_date_end) {
		this.entry_date_end = entry_date_end;
	}
	public String getFrame_id() {
		return frame_id;
	}
	public void setFrame_id(String frame_id) {
		this.frame_id = frame_id;
	}
	public String getContract_id() {
		return contract_id;
	}
	public void setContract_id(String contract_id) {
		this.contract_id = contract_id;
	}
	public String getStroageDetail() {
		return stroageDetail;
	}
	public void setStroageDetail(String stroageDetail) {
		this.stroageDetail = stroageDetail;
	}
	public String getStroageHead() {
		return stroageHead;
	}
	public void setStroageHead(String stroageHead) {
		this.stroageHead = stroageHead;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStorage_no() {
		return storage_no;
	}
	public void setStorage_no(String storage_no) {
		this.storage_no = storage_no;
	}
	public String getWarehouse() {
		return warehouse;
	}
	public void setWarehouse(String warehouse) {
		this.warehouse = warehouse;
	}
	public Date getEntry_date() {
		return entry_date;
	}
	public void setEntry_date(Date entry_date) {
		this.entry_date = entry_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOrder_frame() {
		return order_frame;
	}
	public void setOrder_frame(String order_frame) {
		this.order_frame = order_frame;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getWarehouse_name() {
		return warehouse_name;
	}
	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getFrame_no() {
		return frame_no;
	}
	public void setFrame_no(String frame_no) {
		this.frame_no = frame_no;
	}
	public String getContract_no() {
		return contract_no;
	}
	public void setContract_no(String contract_no) {
		this.contract_no = contract_no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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
	
	
}
