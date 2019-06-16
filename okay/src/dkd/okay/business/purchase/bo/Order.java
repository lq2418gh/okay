package dkd.okay.business.purchase.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import dkd.okay.business.baseinfo.bo.Supplier;
import dkd.okay.business.contract.bo.FrameHead;
import dkd.okay.business.contract.bo.PurchaseContractHead;
import dkd.okay.system.bo.Company;
import dkd.okay.system.bo.UserInfo;
/**
 * 议采购订单主表
 * @author 周渤涛
 *
 */
public class Order implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	
	
	private String id;//uuid
	private String order_no;//采购订单号
	private String urgent_type;//紧急/正常
	private String purchase_user_id;//人员id
	private String state;//状态

	private String order_state;//采购订状态，采购中，完结
	private String supplier_id;//供应商id
	private String frame_id;//框架协议id
	private FrameHead frameHead;
	private String contract_id;//合同id
	private PurchaseContractHead contractHead;//合同

	private String purchase_no;//审批表编号
	private String materialsPurchaseId;//审批主表id
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date sign_date;//制作时间
	private String buyer_tel;//买方电话
	private String buyer_fax;//买方传真
	private String buyer_zip_code;//买方邮编
	private String buyer_address;//买方地址

	private String seller_tel;//卖方电话
	private String seller_fax;//卖方传真
	private String seller_contact;//卖方联系人
	private String seller_address;//卖方地址
	private String bank_account_number;//银行账号
	
	private String delivery_contact;//交货联系人
	private String delivery_call;//交货电话
	private String delivery_address;//交货地址
	private BigDecimal order_amount;//订单总价
	private String transportation_clause;//运输条款
	private String buyer_explain;//买方说明
	private String realName;//用户名
	private UserInfo userInfo;
	private Company company;
	private Supplier supplier;//供应商
	private String supplier_name;//供应商名称
	
	

	private String contract_no;//框架协议id
	

	private String frame_no;//框架协议id
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date start_sign_date;//供应商
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date end_sign_date;//供应商
	private List<OrderDetail> orderDetailList;//采购订单明细
	
	
	
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public String getBank_account_number() {
		return bank_account_number;
	}
	public void setBank_account_number(String bank_account_number) {
		this.bank_account_number = bank_account_number;
	}
	public String getPurchase_no() {
		return purchase_no;
	}
	public void setPurchase_no(String purchase_no) {
		this.purchase_no = purchase_no;
	}
	public String getMaterialsPurchaseId() {
		return materialsPurchaseId;
	}
	public void setMaterialsPurchaseId(String materialsPurchaseId) {
		this.materialsPurchaseId = materialsPurchaseId;
	}
	public PurchaseContractHead getContractHead() {
		return contractHead;
	}
	public void setContractHead(PurchaseContractHead contractHead) {
		this.contractHead = contractHead;
	}
	public String getContract_no() {
		return contract_no;
	}
	public void setContract_no(String contract_no) {
		this.contract_no = contract_no;
	}
	public String getFrame_no() {
		return frame_no;
	}
	public void setFrame_no(String frame_no) {
		this.frame_no = frame_no;
	}
	public String getSeller_tel() {
		return seller_tel;
	}
	public void setSeller_tel(String seller_tel) {
		this.seller_tel = seller_tel;
	}
	public String getSeller_fax() {
		return seller_fax;
	}
	public void setSeller_fax(String seller_fax) {
		this.seller_fax = seller_fax;
	}
	public String getSeller_contact() {
		return seller_contact;
	}
	public void setSeller_contact(String seller_contact) {
		this.seller_contact = seller_contact;
	}
	public String getSeller_address() {
		return seller_address;
	}
	public void setSeller_address(String seller_address) {
		this.seller_address = seller_address;
	}
	public FrameHead getFrameHead() {
		return frameHead;
	}
	public void setFrameHead(FrameHead frameHead) {
		this.frameHead = frameHead;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public Date getStart_sign_date() {
		return start_sign_date;
	}
	public void setStart_sign_date(Date start_sign_date) {
		this.start_sign_date = start_sign_date;
	}
	public Date getEnd_sign_date() {
		return end_sign_date;
	}
	public void setEnd_sign_date(Date end_sign_date) {
		this.end_sign_date = end_sign_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getUrgent_type() {
		return urgent_type;
	}
	public void setUrgent_type(String urgent_type) {
		this.urgent_type = urgent_type;
	}
	
	public String getPurchase_user_id() {
		return purchase_user_id;
	}
	public void setPurchase_user_id(String purchase_user_id) {
		this.purchase_user_id = purchase_user_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getFrame_id() {
		return frame_id;
	}
	public void setFrame_id(String frame_id) {
		this.frame_id = frame_id;
	}
	public String getContract_id() {
		return contract_id;
	}
	public void setContract_id(String contract_id) {
		this.contract_id = contract_id;
	}
	public Date getSign_date() {
		return sign_date;
	}
	public void setSign_date(Date sign_date) {
		this.sign_date = sign_date;
	}
	public String getBuyer_tel() {
		return buyer_tel;
	}
	public void setBuyer_tel(String buyer_tel) {
		this.buyer_tel = buyer_tel;
	}
	public String getBuyer_fax() {
		return buyer_fax;
	}
	public void setBuyer_fax(String buyer_fax) {
		this.buyer_fax = buyer_fax;
	}
	public String getBuyer_zip_code() {
		return buyer_zip_code;
	}
	public void setBuyer_zip_code(String buyer_zip_code) {
		this.buyer_zip_code = buyer_zip_code;
	}
	public String getBuyer_address() {
		return buyer_address;
	}
	public void setBuyer_address(String buyer_address) {
		this.buyer_address = buyer_address;
	}
	public String getDelivery_contact() {
		return delivery_contact;
	}
	public void setDelivery_contact(String delivery_contact) {
		this.delivery_contact = delivery_contact;
	}
	public String getDelivery_call() {
		return delivery_call;
	}
	public void setDelivery_call(String delivery_call) {
		this.delivery_call = delivery_call;
	}
	public String getDelivery_address() {
		return delivery_address;
	}
	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
	public BigDecimal getOrder_amount() {
		return order_amount;
	}
	public void setOrder_amount(BigDecimal order_amount) {
		this.order_amount = order_amount;
	}
	public String getTransportation_clause() {
		return transportation_clause;
	}
	public void setTransportation_clause(String transportation_clause) {
		this.transportation_clause = transportation_clause;
	}
	public String getBuyer_explain() {
		return buyer_explain;
	}
	public void setBuyer_explain(String buyer_explain) {
		this.buyer_explain = buyer_explain;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public List<OrderDetail> getOrderDetailList() {
		return orderDetailList;
	}
	public void setOrderDetailList(List<OrderDetail> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}
	
	
}


