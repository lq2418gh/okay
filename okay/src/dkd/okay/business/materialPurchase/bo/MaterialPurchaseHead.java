package dkd.okay.business.materialPurchase.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class MaterialPurchaseHead implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String purchase_no;//采购表编号
	private String state;//状态
	private String centralized_department;//归口部门
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date input_date;//填报日期
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date purchase_time_limit;//采购时限
	private String purchase_department;//申购部门
	private String input_userid;//申购人
	private String contract_number;//联系电话
	private String purchase_explain;//采购说明
	private String purchase_type;//采购类型
	
	//临时字段
	private List<MaterialPurchaseDetail> materialPurchaseDetailList;//头体结构使用
	private String ptlBeginTime;
	private String ptlEndTime;
	private String inputDateBegin;
	private String inputDateEnd;
	private String company_name;//部门名字
	private String realName;//用户名
	
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getInputDateBegin() {
		return inputDateBegin;
	}
	public void setInputDateBegin(String inputDateBegin) {
		this.inputDateBegin = inputDateBegin;
	}
	public String getPtlBeginTime() {
		return ptlBeginTime;
	}
	public void setPtlBeginTime(String ptlBeginTime) {
		this.ptlBeginTime = ptlBeginTime;
	}
	public String getPtlEndTime() {
		return ptlEndTime;
	}
	public void setPtlEndTime(String ptlEndTime) {
		this.ptlEndTime = ptlEndTime;
	}
	public String getInputDateEnd() {
		return inputDateEnd;
	}
	public void setInputDateEnd(String inputDateEnd) {
		this.inputDateEnd = inputDateEnd;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPurchase_no() {
		return purchase_no;
	}
	public void setPurchase_no(String purchase_no) {
		this.purchase_no = purchase_no;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCentralized_department() {
		return centralized_department;
	}
	public void setCentralized_department(String centralized_department) {
		this.centralized_department = centralized_department;
	}
	public Date getInput_date() {
		return input_date;
	}
	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}
	public Date getPurchase_time_limit() {
		return purchase_time_limit;
	}
	public void setPurchase_time_limit(Date purchase_time_limit) {
		this.purchase_time_limit = purchase_time_limit;
	}
	public String getPurchase_department() {
		return purchase_department;
	}
	public void setPurchase_department(String purchase_department) {
		this.purchase_department = purchase_department;
	}
	public String getInput_userid() {
		return input_userid;
	}
	public void setInput_userid(String input_userid) {
		this.input_userid = input_userid;
	}
	public String getContract_number() {
		return contract_number;
	}
	public void setContract_number(String contract_number) {
		this.contract_number = contract_number;
	}
	public String getPurchase_explain() {
		return purchase_explain;
	}
	public void setPurchase_explain(String purchase_explain) {
		this.purchase_explain = purchase_explain;
	}
	public List<MaterialPurchaseDetail> getMaterialPurchaseDetailList() {
		return materialPurchaseDetailList;
	}
	public void setMaterialPurchaseDetailList(
			List<MaterialPurchaseDetail> materialPurchaseDetailList) {
		this.materialPurchaseDetailList = materialPurchaseDetailList;
	}
	public String getPurchase_type() {
		return purchase_type;
	}
	public void setPurchase_type(String purchase_type) {
		this.purchase_type = purchase_type;
	}
	
	
}
