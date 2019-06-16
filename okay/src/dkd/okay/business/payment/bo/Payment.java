package dkd.okay.business.payment.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;



public class Payment implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String paymentNo;//付款单号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fillingDate;//填报日期
	private String supplier;//供应商
	private String state;//状态
	private BigDecimal amount;//金额
	private String invoiceIds;//开票id
	private String invoiceNos;//开票单号
	private String storageIds;//入库id
	private String storageNos;//入库单号
	private BigDecimal amountPaid;//已付金额
	private String frameNos;//协议单号
	private String contractNos;//合同单号
	private String explain;//付款说明
	private String bank_account_number;//开户行账号
	//临时字段
	private String supplier_name;  //供应商名称
	private String opening_bank;//开户银行
	private String fillingStartDate;//开始日期
	private String fillingEndDate;//结束日期
	private String ymd;//当时的年月日
	private List<Payment> paymentList;
	
	
	public String getBank_account_number() {
		return bank_account_number;
	}
	public void setBank_account_number(String bank_account_number) {
		this.bank_account_number = bank_account_number;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public String getFrameNos() {
		return frameNos;
	}
	public String getContractNos() {
		return contractNos;
	}
	public void setFrameNos(String frameNos) {
		this.frameNos = frameNos;
	}
	public void setContractNos(String contractNos) {
		this.contractNos = contractNos;
	}
	public BigDecimal getAmountPaid() {
		return amountPaid;
	}
	public void setAmountPaid(BigDecimal amountPaid) {
		this.amountPaid = amountPaid;
	}
	public String getOpening_bank() {
		return opening_bank;
	}
	public String getYmd() {
		return ymd;
	}
	public void setOpening_bank(String opening_bank) {
		this.opening_bank = opening_bank;
	}
	public void setYmd(String ymd) {
		this.ymd = ymd;
	}
	public List<Payment> getPaymentList() {
		return paymentList;
	}
	public void setPaymentList(List<Payment> paymentList) {
		this.paymentList = paymentList;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getFillingStartDate() {
		return fillingStartDate;
	}
	public String getFillingEndDate() {
		return fillingEndDate;
	}
	public void setFillingStartDate(String fillingStartDate) {
		this.fillingStartDate = fillingStartDate;
	}
	public void setFillingEndDate(String fillingEndDate) {
		this.fillingEndDate = fillingEndDate;
	}
	public String getopening_bank() {
		return opening_bank;
	}
	public void setopening_bank(String opening_bank) {
		this.opening_bank = opening_bank;
	}
	public String getInvoiceIds() {
		return invoiceIds;
	}
	public String getStorageIds() {
		return storageIds;
	}
	public void setInvoiceIds(String invoiceIds) {
		this.invoiceIds = invoiceIds;
	}
	public void setStorageIds(String storageIds) {
		this.storageIds = storageIds;
	}
	public String getId() {
		return id;
	}
	public String getPaymentNo() {
		return paymentNo;
	}
	public Date getFillingDate() {
		return fillingDate;
	}
	public String getSupplier() {
		return supplier;
	}
	public String getState() {
		return state;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public String getInvoiceNos() {
		return invoiceNos;
	}
	public String getStorageNos() {
		return storageNos;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPaymentNo(String paymentNo) {
		this.paymentNo = paymentNo;
	}
	public void setFillingDate(Date fillingDate) {
		this.fillingDate = fillingDate;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public void setInvoiceNos(String invoiceNos) {
		this.invoiceNos = invoiceNos;
	}
	public void setStorageNos(String storageNos) {
		this.storageNos = storageNos;
	}
	
	
	
}