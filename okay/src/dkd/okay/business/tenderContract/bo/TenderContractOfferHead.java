package dkd.okay.business.tenderContract.bo;

import java.io.Serializable;
import java.util.List;

public class TenderContractOfferHead implements Serializable{

	private static final long serialVersionUID = 1L;
	private String id;
	private String tender_contract;//主表id
	private String supplier;//供应商id
	private String tender_contract_supplier;//框架协议招标供应商id
	private String file_id;//文件id
	
	
	
	
	//临时字段
	private List<TenderContractOfferDetail> tenderContractOfferDetailList;




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
	public String getTender_contract_supplier() {
		return tender_contract_supplier;
	}
	public void setTender_contract_supplier(String tender_contract_supplier) {
		this.tender_contract_supplier = tender_contract_supplier;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public List<TenderContractOfferDetail> getTenderContractOfferDetailList() {
		return tenderContractOfferDetailList;
	}
	public void setTenderContractOfferDetailList(List<TenderContractOfferDetail> tenderContractOfferDetailList) {
		this.tenderContractOfferDetailList = tenderContractOfferDetailList;
	}

}
