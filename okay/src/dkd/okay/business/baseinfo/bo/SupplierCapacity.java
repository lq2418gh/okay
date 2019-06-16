package dkd.okay.business.baseinfo.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 供应商产能说明表
 * @author:linss
 * @date:2017年8月23日
 */
public class SupplierCapacity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String supplier_id;
	private String materiel_id;
	private BigDecimal price;
	private Material material;
	
	//查询条件----------------------------
	private String wzcode;
	private String wzname;
	//------------------------------查询条件
	private List<SupplierCapacity> capacityList;
//	private String code;
//	private String name;
//	private String spec;
//	private String unit;
//	private String explain;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getMateriel_id() {
		return materiel_id;
	}
	public void setMateriel_id(String materiel_id) {
		this.materiel_id = materiel_id;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getWzcode() {
		return wzcode;
	}
	public void setWzcode(String wzcode) {
		this.wzcode = wzcode;
	}
	public String getWzname() {
		return wzname;
	}
	public void setWzname(String wzname) {
		this.wzname = wzname;
	}
	public List<SupplierCapacity> getCapacityList() {
		return capacityList;
	}
	public void setCapacityList(List<SupplierCapacity> capacityList) {
		this.capacityList = capacityList;
	}
	public Material getMaterial() {
		return material;
	}
	public void setMaterial(Material material) {
		this.material = material;
	}
	@Override
	public String toString() {
		return "SupplierCapacity [id=" + id + ", supplier_id=" + supplier_id + ", materiel_id=" + materiel_id
				+ ", price=" + price + ", material=" + material + ", wzcode=" + wzcode + ", wzname=" + wzname
				+ ", capacityList=" + capacityList + "]";
	}
}
