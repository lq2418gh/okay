package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 库区实体表
 * 
 * @author 王莹
 * 
 */
public class Region implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String regionId;// 库区id
	private String warehouseId;// 仓库id
	private String warehouseName;// 仓库名称
	private String warehouseCode;// 仓库编码
	private String regionCode;// 库区编码
	private String regionName;// 库区名称
	private String state;// 库区状态
	private BigDecimal area;// 面积
	private String remark;// 备注
	private List<Region> regionList;
	private String message;
	private String isDel;
	

	public String getIsDel() {
		return isDel;
	}

	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}

	public List<Region> getRegionList() {
		return regionList;
	}

	public String getMessage() {
		return message;
	}

	public void setRegionList(List<Region> regionList) {
		this.regionList = regionList;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(String warehouseId) {
		this.warehouseId = warehouseId;
	}

	public String getRegionCode() {
		return regionCode;
	}

	public void setRegionCode(String regionCode) {
		this.regionCode = regionCode;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public BigDecimal getArea() {
		return area;
	}

	public void setArea(BigDecimal area) {
		this.area = area;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	public String getWarehouseCode() {
		return warehouseCode;
	}

	public void setWarehouseCode(String warehouseCode) {
		this.warehouseCode = warehouseCode;
	}

	@Override
	public String toString() {
		return "Region [regionId=" + regionId + ", warehouseId=" + warehouseId
				+ ", warehouseName=" + warehouseName + ", warehouseCode="
				+ warehouseCode + ", regionCode=" + regionCode
				+ ", regionName=" + regionName + ", state="
				+ state + ", area=" + area + ", remark=" + remark + "]";
	}

}
