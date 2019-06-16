package dkd.okay.system.util.word;

import java.math.BigDecimal;
/**
 * 
 * @author Binkylin
 * 合同明细（导出word使用）
 */
public class Detail {

	private Integer id;
	private String code;
	private String codeCustom;
	private String name;
	private String type;
	private String unit;
	private String property;
	private String number;
	private BigDecimal unitPrice;
	private BigDecimal allPrice;
	private String remark;
	private String unitc;
	private String numberc;
	private String numberOne;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public BigDecimal getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}
	public BigDecimal getAllPrice() {
		return allPrice;
	}
	public void setAllPrice(BigDecimal allPrice) {
		this.allPrice = allPrice;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getUnitc() {
		return unitc;
	}
	public void setUnitc(String unitc) {
		this.unitc = unitc;
	}
	public String getNumberc() {
		return numberc;
	}
	public void setNumberc(String numberc) {
		this.numberc = numberc;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getNumberOne() {
		return numberOne;
	}
	public void setNumberOne(String numberOne) {
		this.numberOne = numberOne;
	}
	public String getCodeCustom() {
		return codeCustom;
	}
	public void setCodeCustom(String codeCustom) {
		this.codeCustom = codeCustom;
	}
}