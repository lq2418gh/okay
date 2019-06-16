package dkd.okay.business.outstock.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
/**
 *验收入库
 */
public class OutstockHead implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String outstock_no;//出库单号
	private String warehouse;//仓库id
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date out_date;//出库日期
	private String user_id;//当前登陆用户id
	private String order_frame;//采购订单的id（可以取出供应商和合同号）
	private String department;//领用部门id
	private String state;//单据状态
	
	//临时字段
	private String warehouse_name;//仓库名称
	private String order_no;//采购订单单号
	private String user_name;//库管员
	private String department_name;//领用部门id
	private String out_date_begin;
	private String out_date_end;
	private List<OutstockDetail> outstockDetailList;//明细表
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOutstock_no() {
		return outstock_no;
	}
	public void setOutstock_no(String outstock_no) {
		this.outstock_no = outstock_no;
	}
	public String getWarehouse() {
		return warehouse;
	}
	public void setWarehouse(String warehouse) {
		this.warehouse = warehouse;
	}
	public Date getOut_date() {
		return out_date;
	}
	public void setOut_date(Date out_date) {
		this.out_date = out_date;
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
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getWarehouse_name() {
		return warehouse_name;
	}
	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getOut_date_begin() {
		return out_date_begin;
	}
	public void setOut_date_begin(String out_date_begin) {
		this.out_date_begin = out_date_begin;
	}
	public String getOut_date_end() {
		return out_date_end;
	}
	public void setOut_date_end(String out_date_end) {
		this.out_date_end = out_date_end;
	}
	public List<OutstockDetail> getOutstockDetailList() {
		return outstockDetailList;
	}
	public void setOutstockDetailList(List<OutstockDetail> outstockDetailList) {
		this.outstockDetailList = outstockDetailList;
	}
}