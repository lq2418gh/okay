package dkd.okay.business.tender.bo;

import java.io.Serializable;
import java.math.BigDecimal;

public class TenderFrameDetail implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private int tenderFrameDetail_row_no;//行号
	private String tender_frame;//主表id
	private String material;//物料id
	private BigDecimal main_Price;
	private BigDecimal secondary_Price;
	
	
	//临时字段
	private String name;//物资名称
	private String code;//物资编码
	private String spec;//物资规格
	private String unit;//物资单位
	private String explain;//物资说明
	//生成框架协议使用的字段
	private String conversion;//箱容
	
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTender_frame() {
		return tender_frame;
	}
	public void setTender_frame(String tender_frame) {
		this.tender_frame = tender_frame;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
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
	public BigDecimal getMain_Price() {
		return main_Price;
	}
	public void setMain_Price(BigDecimal main_Price) {
		this.main_Price = main_Price;
	}
	public BigDecimal getSecondary_Price() {
		return secondary_Price;
	}
	public void setSecondary_Price(BigDecimal secondary_Price) {
		this.secondary_Price = secondary_Price;
	}
	public String getConversion() {
		return conversion;
	}
	public void setConversion(String conversion) {
		this.conversion = conversion;
	}
	public int getTenderFrameDetail_row_no() {
		return tenderFrameDetail_row_no;
	}
	public void setTenderFrameDetail_row_no(int tenderFrameDetail_row_no) {
		this.tenderFrameDetail_row_no = tenderFrameDetail_row_no;
	}
	
	
	

}
