package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;

import dkd.okay.system.util.tree.Tree;

public class MaterialType extends Tree implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;//物资类别id
	private String parent;//父节点
	private String code;//类别编码
	private String name;//类别名称
	private String unit;//计量单位
	private int levels;//层级
	private String remark;//备注
	
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
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
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
	
	public int getLevels() {
		return levels;
	}
	public void setLevels(int levels) {
		this.levels = levels;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
