package dkd.okay.business.budget.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;





/**
 * 计划预算主表
 * 
 * @author 王莹
 * 
 */
public class BudgetPlan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;//ID
	private String budgetNo;//预算编号
	private String company;//部门
	private String year;//年份
	private BigDecimal annualBudget;//年度预算
	private String inputUser;//录入人
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date inputDate;//录入日期
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date modifyDate;//修改日期
	private String modifyStartDate;
	private String modifyEndDate;
	private String state;//状态
	private String companyName;//部门名称
	private List<BudgetPlan> budgetPlanList;
	private List<BudgetPlanDetail> planDetailList;
	
	
	public Date getModifyDate() {
		return modifyDate;
	}
	public String getModifyStartDate() {
		return modifyStartDate;
	}
	public String getModifyEndDate() {
		return modifyEndDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public void setModifyStartDate(String modifyStartDate) {
		this.modifyStartDate = modifyStartDate;
	}
	public void setModifyEndDate(String modifyEndDate) {
		this.modifyEndDate = modifyEndDate;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public List<BudgetPlan> getBudgetPlanList() {
		return budgetPlanList;
	}
	public void setBudgetPlanList(List<BudgetPlan> budgetPlanList) {
		this.budgetPlanList = budgetPlanList;
	}
	public String getId() {
		return id;
	}
	public String getBudgetNo() {
		return budgetNo;
	}
	public String getCompany() {
		return company;
	}
	public String getYear() {
		return year;
	}
	public BigDecimal getAnnualBudget() {
		return annualBudget;
	}
	public String getInputUser() {
		return inputUser;
	}
	public Date getInputDate() {
		return inputDate;
	}
	public String getState() {
		return state;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setBudgetNo(String budgetNo) {
		this.budgetNo = budgetNo;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public void setAnnualBudget(BigDecimal annualBudget) {
		this.annualBudget = annualBudget;
	}
	public void setInputUser(String inputUser) {
		this.inputUser = inputUser;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString(){
		return"BudgetPlan[id=" + id +",budgetNo=" + budgetNo +",company=" + company +",year="
				+ year +",annualBudget=" + annualBudget +",inputUser=" + inputUser +",inputDate="
				+ inputDate +",modifyDate=" + modifyDate +",state=" + state +"]";
	}
	public List<BudgetPlanDetail> getPlanDetailList() {
		return planDetailList;
	}
	public void setPlanDetailList(List<BudgetPlanDetail> planDetailList) {
		this.planDetailList = planDetailList;
	}
}