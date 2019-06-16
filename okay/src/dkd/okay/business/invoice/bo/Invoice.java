package dkd.okay.business.invoice.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;




public class Invoice implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String invoiceNo;//开票单号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date billingDate;//开票日期
	private String supplier;//供应商
	private String is_already;//是否可用
	private BigDecimal total;//总和
	private String bank_account_number;//开户行账号
	//临时字段
	private String address;//地址
	private String tel;//电话
	private String supplier_name;  //供应商名称
	private String opening_bank;//开户行
	private String billingStartDate;//开始日期
	private String billingEndDate;//结束日期
	private List<Invoice> invoiceList;
	private List<InvoiceDetail> invoiceDetailList;
	
	
	public String getBank_account_number() {
		return bank_account_number;
	}
	public void setBank_account_number(String bank_account_number) {
		this.bank_account_number = bank_account_number;
	}
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public List<InvoiceDetail> getInvoiceDetailList() {
		return invoiceDetailList;
	}
	public void setInvoiceDetailList(List<InvoiceDetail> invoiceDetailList) {
		this.invoiceDetailList = invoiceDetailList;
	}
	public String getBillingStartDate() {
		return billingStartDate;
	}
	public String getBillingEndDate() {
		return billingEndDate;
	}
	public void setBillingStartDate(String billingStartDate) {
		this.billingStartDate = billingStartDate;
	}
	public void setBillingEndDate(String billingEndDate) {
		this.billingEndDate = billingEndDate;
	}
	public String getAddress() {
		return address;
	}
	public String getTel() {
		return tel;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public String getOpening_bank() {
		return opening_bank;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public void setOpening_bank(String opening_bank) {
		this.opening_bank = opening_bank;
	}
	public String getIs_already() {
		return is_already;
	}
	public List<Invoice> getInvoiceList() {
		return invoiceList;
	}
	public void setIs_already(String is_already) {
		this.is_already = is_already;
	}
	public void setInvoiceList(List<Invoice> invoiceList) {
		this.invoiceList = invoiceList;
	}
	public String getId() {
		return id;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public Date getBillingDate() {
		return billingDate;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public void setBillingDate(Date billingDate) {
		this.billingDate = billingDate;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
}