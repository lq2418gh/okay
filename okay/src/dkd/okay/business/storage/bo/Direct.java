package dkd.okay.business.storage.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * 直达现场
 * @author 周渤涛
 *
 */
public class Direct implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String direct_no;//入库单号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date entry_date;//入库日期
	private String user_id;//当前登陆用户id
	private String order_frame;//采购订单的id（可以取出供应商和合同号）
	private String state;//单据状态
	private String department;//领用部门id

	private BigDecimal main_totalAmount;//总金额（主单位）

	private String frame_id;//协议id
	private String contract_id;//合同id
	
	//临时字段
	private String supplier_name;//供应商名称
	private String order_no;//采购订单单号
	private String frame_no;//协议编号
	private String contract_no;//合同编号
	private String user_name;//购置经办人
	private String department_name;//领用部门id
	private String entry_date_begin;
	private String entry_date_end;
	private List<DirectDetail> directDetailList;//明细表
	
	
	
	
	public BigDecimal getMain_totalAmount() {
		return main_totalAmount;
	}
	public void setMain_totalAmount(BigDecimal main_totalAmount) {
		this.main_totalAmount = main_totalAmount;
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
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDirect_no() {
		return direct_no;
	}
	public void setDirect_no(String direct_no) {
		this.direct_no = direct_no;
	}
	public Date getEntry_date() {
		return entry_date;
	}
	public void setEntry_date(Date entry_date) {
		this.entry_date = entry_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOrder_frame() {
		return order_frame;
	}
	public void setOrder_frame(String order_frame) {
		this.order_frame = order_frame;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getFrame_no() {
		return frame_no;
	}
	public void setFrame_no(String frame_no) {
		this.frame_no = frame_no;
	}
	public String getContract_no() {
		return contract_no;
	}
	public void setContract_no(String contract_no) {
		this.contract_no = contract_no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEntry_date_begin() {
		return entry_date_begin;
	}
	public void setEntry_date_begin(String entry_date_begin) {
		this.entry_date_begin = entry_date_begin;
	}
	public String getEntry_date_end() {
		return entry_date_end;
	}
	public void setEntry_date_end(String entry_date_end) {
		this.entry_date_end = entry_date_end;
	}
	public List<DirectDetail> getDirectDetailList() {
		return directDetailList;
	}
	public void setDirectDetailList(List<DirectDetail> directDetailList) {
		this.directDetailList = directDetailList;
	}
	
	
	
}


