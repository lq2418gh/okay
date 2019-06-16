package dkd.okay.business.tenderContract.bo;

import java.io.Serializable;
import java.math.BigDecimal;

public class TenderContractOfferDetail implements Serializable{

	private static final long serialVersionUID = 1L;
	private String id;
	private String tender_detail;//明细表id
	private String contract_offer_head;//报价主表id
	private String material;//物料id
	private BigDecimal main_Price;
	private BigDecimal secondary_Price;
	
	//临时字段
	
	
	public String getId() {
		return id;
	}
	public String getContract_offer_head() {
		return contract_offer_head;
	}
	public void setContract_offer_head(String contract_offer_head) {
		this.contract_offer_head = contract_offer_head;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTender_detail() {
		return tender_detail;
	}
	public void setTender_detail(String tender_detail) {
		this.tender_detail = tender_detail;
	}
	public String getContract_Offer_head() {
		return contract_offer_head;
	}
	public void setContract_Offer_head(String contract_Offer_head) {
		this.contract_offer_head = contract_Offer_head;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public BigDecimal getMain_Price() {
		return main_Price;
	}
	public void setMain_Price(BigDecimal main_Price) {
		this.main_Price = main_Price;
	}
	public BigDecimal getSecondary_Price() {
		return secondary_Price;
	}
	public void setSecondary_Price(BigDecimal secondary_Price) {
		this.secondary_Price = secondary_Price;
	}
	
}
