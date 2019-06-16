package dkd.okay.system.web.formmodel;

/**
 * 业务字典Form实体类
 * 
 * @author sy
 * 
 */

public class DictionaryForm {

	private String dicId;// 字典ID
	private String parentId;// 父节点ID
	private String dicName;// 树上的节点的中文名称
	private String dicEnglishName;// 树上的节点的英文名称
	private String dicCode;
	private int levels;// 层级
	private int dicOrder;// 排序
	private int dicType;// 业务字典类型（系统，应用）
	private int isDel;// 标记删除



	private String parentName;// 字典名称
	private String parentCode;// 字典编码
	
	private String dicEximCode;

	public String getDicId() {
		return dicId;
	}

	public void setDicId(String dicId) {
		this.dicId = dicId;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getDicName() {
		return dicName;
	}

	public void setDicName(String dicName) {
		this.dicName = dicName;
	}

	public String getDicCode() {
		return dicCode;
	}

	public void setDicCode(String dicCode) {
		this.dicCode = dicCode;
	}

	public int getLevels() {
		return levels;
	}

	public void setLevels(int levels) {
		this.levels = levels;
	}

	public int getDicOrder() {
		return dicOrder;
	}

	public void setDicOrder(int dicOrder) {
		this.dicOrder = dicOrder;
	}

	public int getDicType() {
		return dicType;
	}

	public void setDicType(int dicType) {
		this.dicType = dicType;
	}

	public int getIsDel() {
		return isDel;
	}

	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getParentCode() {
		return parentCode;
	}

	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

	public String getDicEximCode() {
		return dicEximCode;
	}

	public void setDicEximCode(String dicEximCode) {
		this.dicEximCode = dicEximCode;
	}
	
	public String getDicEnglishName() {
		return dicEnglishName;
	}

	public void setDicEnglishName(String dicEnglishName) {
		this.dicEnglishName = dicEnglishName;
	}

	@Override
	public String toString() {
		return "DictionaryForm [dicId=" + dicId + ", parentId=" + parentId
				+ ", dicName=" + dicName + ", dicCode=" + dicCode + ", levels="
				+ levels + ", dicOrder=" + dicOrder + ", dicType=" + dicType
				+ ", isDel=" + isDel + ", parentName=" + parentName
				+ ", parentCode=" + parentCode + ", dicEximCode=" + dicEximCode
				+ ",dicEnglishName="+dicEnglishName+"]";
	}
}
