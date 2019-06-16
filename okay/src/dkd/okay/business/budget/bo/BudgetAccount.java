package dkd.okay.business.budget.bo;

import java.io.Serializable;
import java.util.List;


/**
 * 预算科目表
 * 
 * @author 王莹
 * 
 */
public class BudgetAccount implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String budgetAccountId;//id
	private String budgetAccountCode;//编码
	private String name;//名称
	private String explain;//说明
	private Integer warningRatio;//预警比例
	private String isValidate;//是否可用
	private List<BudgetAccount> budgetAccountList;
	
	
	public List<BudgetAccount> getBudgetAccountList() {
		return budgetAccountList;
	}
	public void setBudgetAccountList(List<BudgetAccount> budgetAccountList) {
		this.budgetAccountList = budgetAccountList;
	}
	public String getBudgetAccountId() {
		return budgetAccountId;
	}
	public String getBudgetAccountCode() {
		return budgetAccountCode;
	}
	public String getName() {
		return name;
	}
	public String getExplain() {
		return explain;
	}
	public Integer getWarningRatio() {
		return warningRatio;
	}
	public String getIsValidate() {
		return isValidate;
	}
	public void setBudgetAccountId(String budgetAccountId) {
		this.budgetAccountId = budgetAccountId;
	}
	public void setBudgetAccountCode(String budgetAccountCode) {
		this.budgetAccountCode = budgetAccountCode;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public void setWarningRatio(Integer warningRatio) {
		this.warningRatio = warningRatio;
	}
	public void setIsValidate(String isValidate) {
		this.isValidate = isValidate;
	}
	
	
	@Override
	public String toString() {
		return "BudgetAccount[budgetAccountId=" + budgetAccountId +",budgetAccountCode="
	           + budgetAccountCode +",name=" + name +",explain=" + explain +",warningRatio="
			   + warningRatio +",isValidate=" + isValidate +"]";
		}
	
}