package dkd.okay.business.contract.bo;

import java.io.Serializable;



public class PurchaseContractAddress implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String purchaseContractHead;//采购合同主表id
	private String deliveryAddress;//交货地址
	
	
	
	public String getPurchaseContractHead() {
		return purchaseContractHead;
	}
	public void setPurchaseContractHead(String purchaseContractHead) {
		this.purchaseContractHead = purchaseContractHead;
	}
	public String getId() {
		return id;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	
	
}