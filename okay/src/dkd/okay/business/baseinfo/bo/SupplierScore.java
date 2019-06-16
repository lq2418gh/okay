package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;

/**
 * 供应商年度评分表
 * @author:linss
 * @date:2017年8月23日
 */
public class SupplierScore implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String year;
	private String score;
	private Supplier supplier_id;
	
	private String flag;//是否可编辑 前台参数
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public Supplier getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(Supplier supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
}

