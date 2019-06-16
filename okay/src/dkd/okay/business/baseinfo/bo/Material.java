package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;

	/**
	 * 物资类别实体表
	 * 
	 * @author ZhangYang
	 * 
	 */
public class Material implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;//物资id
	private String material_type;//所属物料类别
	private String code;//物资编码
	private String name;//物资名称
	private String unit;//主要计量单位
	private String unit_help;//辅助计量单位
	private Integer conversion;//计量单位换算值
	private String spec;//规格型号
	private String state;//状态
	private String explain;//说明
	
	//用于页面显示的字段，不在数据库体现
	private String ParentCode;//父节点编码
	private String ParentName;//父节点名称
	
	public String getParentCode() {
		return ParentCode;
	}
	public void setParentCode(String parentCode) {
		ParentCode = parentCode;
	}
	public String getParentName() {
		return ParentName;
	}
	public void setParentName(String parentName) {
		ParentName = parentName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMaterial_type() {
		return material_type;
	}
	public void setMaterial_type(String material_type) {
		this.material_type = material_type;
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
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
