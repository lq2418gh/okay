package dkd.okay.business.tender.bo;

import java.io.Serializable;
import java.util.List;

public class TenderFrameOfferHead implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String tender_frame;//主表id
	private String supplier;//供应商id
	private String tender_frame_supplier;//框架协议招标供应商id
	private String file_id;//文件id
	
	
	
	
	//临时字段
	private List<TenderFrameOfferDetail> tenderFrameOfferDetailList;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTender_frame() {
		return tender_frame;
	}
	public void setTender_frame(String tender_frame) {
		this.tender_frame = tender_frame;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getTender_frame_supplier() {
		return tender_frame_supplier;
	}
	public void setTender_frame_supplier(String tender_frame_supplier) {
		this.tender_frame_supplier = tender_frame_supplier;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public List<TenderFrameOfferDetail> getTenderFrameOfferDetailList() {
		return tenderFrameOfferDetailList;
	}
	public void setTenderFrameOfferDetailList(
			List<TenderFrameOfferDetail> tenderFrameOfferDetailList) {
		this.tenderFrameOfferDetailList = tenderFrameOfferDetailList;
	}
	
}
