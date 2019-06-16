package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 仓库实体表
 * 
 * @author 王莹
 * 
 */
public class Warehouse implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String warehouseId;// id
	private String warehouseCode;// 仓库编码
	private String warehouseName;// 仓库名称
	private String province;// 省份
	private String place;// 详细地点
	private BigDecimal area;// 面积
	private String warehouseOwner;// 业主
	private String state;// 状态
	private String contacts;// 联系人
	private String contactNumber;// 联系电话
	private String remark;// 备注
	private List<Warehouse> warehouseList;
	private String message;
	private String isDel;
	
	
	public String getIsDel() {
		return isDel;
	}

	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List<Warehouse> getWarehouseList() {
		return warehouseList;
	}

	public void setWarehouseList(List<Warehouse> warehouseList) {
		this.warehouseList = warehouseList;
	}

	public String getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(String warehouseId) {
		this.warehouseId = warehouseId;
	}

	public String getWarehouseCode() {
		return warehouseCode;
	}

	public void setWarehouseCode(String warehouseCode) {
		this.warehouseCode = warehouseCode;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public BigDecimal getArea() {
		return area;
	}

	public void setArea(BigDecimal area) {
		this.area = area;
	}
	

	public String getWarehouseOwner() {
		return warehouseOwner;
	}

	public void setWarehouseOwner(String warehouseOwner) {
		this.warehouseOwner = warehouseOwner;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	
	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Warehouse [warehouseId=" + warehouseId + ", warehouseCode="
				+ warehouseCode + ", warehouseName=" + warehouseName
			    + ", province=" + province
				+ ", place=" + place + ", area=" + area 
			    + ", state=" + state
				+ ", contacts=" + contacts + ", contactNumber=" + contactNumber + ", remark=" + remark + "]";
	}


}
