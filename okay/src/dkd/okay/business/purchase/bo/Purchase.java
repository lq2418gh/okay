package dkd.okay.business.purchase.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import dkd.okay.system.bo.Company;
import dkd.okay.system.bo.UserInfo;
/**
 *年度物资采购计划
 * @author liqi
 *
 */
public class Purchase implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;//uuid
	private String plan_no;//采购计划号
	private String departmentId;//部门 id
	private String input_userid;//制作人 人员Id
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date input_date;//制作时间
	private String year;//年份
	private BigDecimal all_amount;//总金额
	private String company_name;//部门名字
	private String realName;//用户名
	private UserInfo userInfo;
	private Company company;
	private List<PurchaseDetail> purchaseDetailList;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPlan_no() {
		return plan_no;
	}
	public void setPlan_no(String plan_no) {
		this.plan_no = plan_no;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	public String getInput_userid() {
		return input_userid;
	}
	public void setInput_userid(String input_userid) {
		this.input_userid = input_userid;
	}
	public Date getInput_date() {
		return input_date;
	}
	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public BigDecimal getAll_amount() {
		return all_amount;
	}
	public void setAll_amount(BigDecimal all_amount) {
		this.all_amount = all_amount;
	}
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
	public List<PurchaseDetail> getPurchaseDetailList() {
		return purchaseDetailList;
	}
	public void setPurchaseDetailList(List<PurchaseDetail> purchaseDetailList) {
		this.purchaseDetailList = purchaseDetailList;
	}
	
}


