package dkd.okay.business.tender.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class TenderFrameHead implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String tender_no;//框架协议招标和合同招标共用流水
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date release_date;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
	private Date open_date;
	private String state;
	private String open_place;
	private String big_supplier;//中标供应商id
	private String remark;//备注
	

	//临时字段
	private String open_date_begin;//(模糊查询用)
	private String open_date_end;//(模糊查询用)
	private String release_date_begin;//(模糊查询用)
	private String release_date_end;//(模糊查询用)
	private String big_supplier_name;//(前台显示用,中标供应商名字)
	private String bank_account_number;//(显示用的银行账户)
	private List<TenderFrameDetail> tenderFrameDetailList;//查看页面回显数据用
	private List<TenderFrameSupplier> tenderFrameSupplierList;//查看页面回显数据用
	//生成框架协议使用的字段
	private String opening_bank;//开户银行
	private String legal_person;//乙方法人
	private String tel;//电话
	private String linkman;//乙方负责人
	private String email;//邮箱
	
	
	public String getBank_account_number() {
		return bank_account_number;
	}
	public void setBank_account_number(String bank_account_number) {
		this.bank_account_number = bank_account_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTender_no() {
		return tender_no;
	}
	public void setTender_no(String tender_no) {
		this.tender_no = tender_no;
	}
	public Date getRelease_date() {
		return release_date;
	}
	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	public Date getOpen_date() {
		return open_date;
	}
	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getOpen_place() {
		return open_place;
	}
	public void setOpen_place(String open_place) {
		this.open_place = open_place;
	}
	public String getBig_supplier() {
		return big_supplier;
	}
	public void setBig_supplier(String big_supplier) {
		this.big_supplier = big_supplier;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getOpen_date_begin() {
		return open_date_begin;
	}
	public void setOpen_date_begin(String open_date_begin) {
		this.open_date_begin = open_date_begin;
	}
	public String getOpen_date_end() {
		return open_date_end;
	}
	public void setOpen_date_end(String open_date_end) {
		this.open_date_end = open_date_end;
	}
	public String getRelease_date_begin() {
		return release_date_begin;
	}
	public void setRelease_date_begin(String release_date_begin) {
		this.release_date_begin = release_date_begin;
	}
	public String getRelease_date_end() {
		return release_date_end;
	}
	public void setRelease_date_end(String release_date_end) {
		this.release_date_end = release_date_end;
	}
	public String getBig_supplier_name() {
		return big_supplier_name;
	}
	public void setBig_supplier_name(String big_supplier_name) {
		this.big_supplier_name = big_supplier_name;
	}
	public List<TenderFrameDetail> getTenderFrameDetailList() {
		return tenderFrameDetailList;
	}
	public void setTenderFrameDetailList(List<TenderFrameDetail> tenderFrameDetailList) {
		this.tenderFrameDetailList = tenderFrameDetailList;
	}
	public List<TenderFrameSupplier> getTenderFrameSupplierList() {
		return tenderFrameSupplierList;
	}
	public void setTenderFrameSupplierList(List<TenderFrameSupplier> tenderFrameSupplierList) {
		this.tenderFrameSupplierList = tenderFrameSupplierList;
	}
	public String getOpening_bank() {
		return opening_bank;
	}
	public void setOpening_bank(String opening_bank) {
		this.opening_bank = opening_bank;
	}
	public String getLegal_person() {
		return legal_person;
	}
	public void setLegal_person(String legal_person) {
		this.legal_person = legal_person;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
