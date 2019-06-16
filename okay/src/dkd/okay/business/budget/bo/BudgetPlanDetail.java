package dkd.okay.business.budget.bo;   

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 计划预算明细表
 * 
 * @author 王莹
 * 
 */
public class BudgetPlanDetail implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;//ID
	private String budgetHeadId;//计划预算主表ID
	private String account;//预算科目
	private String accountName;//科目名称
	private Integer warningRatio;//预警比例
	private BigDecimal budgetAmount;//预算金额
	private BigDecimal residualAmount;//订单剩余金额
	private BigDecimal residualAmountStorage;//库存剩余金额
	private String remark;//备注
	private String status;//是否超过预警的状态
	private List<BudgetPlanDetail> planDetailList;
	
	
	//临时字段
	private String company;//备注
	private String company_name;//是否超过预警的状态
	
	
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public BigDecimal getResidualAmountStorage() {
		return residualAmountStorage;
	}
	public void setResidualAmountStorage(BigDecimal residualAmountStorage) {
		this.residualAmountStorage = residualAmountStorage;
	}
	public String getAccountName() {
		return accountName;
	}
	public Integer getWarningRatio() {
		return warningRatio;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public void setWarningRatio(Integer warningRatio) {
		this.warningRatio = warningRatio;
	}
	public String getId() {
		return id;
	}
	public String getBudgetHeadId() {
		return budgetHeadId;
	}
	public String getAccount() {
		return account;
	}
	public BigDecimal getBudgetAmount() {
		return budgetAmount;
	}
	public BigDecimal getResidualAmount() {
		return residualAmount;
	}
	public String getRemark() {
		return remark;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setBudgetHeadId(String budgetHeadId) {
		this.budgetHeadId = budgetHeadId;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setBudgetAmount(BigDecimal budgetAmount) {
		this.budgetAmount = budgetAmount;
	}
	public void setResidualAmount(BigDecimal residualAmount) {
		this.residualAmount = residualAmount;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString(){
		return"PlanDetail[id=" + id +",budgetHeadId=" + budgetHeadId +",account=" + account +",budgetAmount="
	            + budgetAmount +",residualAmount=" + residualAmount +",remark=" + remark +"]";
	}
	public List<BudgetPlanDetail> getPlanDetailList() {
		return planDetailList;
	}
	public void setPlanDetailList(List<BudgetPlanDetail> planDetailList) {
		this.planDetailList = planDetailList;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
