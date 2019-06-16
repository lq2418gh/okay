package dkd.okay.business.contract.bo;

import java.io.Serializable;
import java.math.BigDecimal;



public class FrameDetail implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String frameHead;//框架协议主表id
	private String tenderFrameDetail;//招标明细id
	private String material;//物料id
	private BigDecimal mainPrice;//主单位单价
	private BigDecimal secondaryPrice;//常用单位单价
	private String purchasedQuantity;//拟采购数量
	private BigDecimal minimumQuantity;//起订量
	//临时字段
	private String name;//物资名称
	private String unit;//主要计量单位
	private String unit_help;//主要计量单位
	private Integer conversion;//计量单位换算值
	private String spec;//规格型号

	
	public Integer getConversion() {
		return conversion;
	}
	public void setConversion(Integer conversion) {
		this.conversion = conversion;
	}
	public String getUnit_help() {
		return unit_help;
	}
	public void setUnit_help(String unit_help) {
		this.unit_help = unit_help;
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
	public String getFrameHead() {
		return frameHead;
	}
	public String getTenderFrameDetail() {
		return tenderFrameDetail;
	}
	public String getMaterial() {
		return material;
	}
	public String getPurchasedQuantity() {
		return purchasedQuantity;
	}
	public BigDecimal getMinimumQuantity() {
		return minimumQuantity;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setFrameHead(String frameHead) {
		this.frameHead = frameHead;
	}
	public void setTenderFrameDetail(String tenderFrameDetail) {
		this.tenderFrameDetail = tenderFrameDetail;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public void setPurchasedQuantity(String purchasedQuantity) {
		this.purchasedQuantity = purchasedQuantity;
	}
	public void setMinimumQuantity(BigDecimal minimumQuantity) {
		this.minimumQuantity = minimumQuantity;
	}
	
	
	
}