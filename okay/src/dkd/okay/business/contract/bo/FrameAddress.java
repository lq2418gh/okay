package dkd.okay.business.contract.bo;

import java.io.Serializable;



public class FrameAddress implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String frameHead;//框架协议主表id
	private String deliveryAddress;//交货地址
	
	
	public String getId() {
		return id;
	}
	public String getFrameHead() {
		return frameHead;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setFrameHead(String frameHead) {
		this.frameHead = frameHead;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	
	
}