package dkd.okay.business.tenderContract.bo;

import java.io.Serializable;

public class TenderContractSupplier implements Serializable{

	private static final long serialVersionUID = 1L;
	private String id;
	private String tender_contract;//主表id
	private String supplier;//供应商id
	private String email;
	
	
	//临时字段
	private String supplier_name;//供应商名称
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTender_contract() {
		return tender_contract;
	}
	public void setTender_contract(String tender_contract) {
		this.tender_contract = tender_contract;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}


}
