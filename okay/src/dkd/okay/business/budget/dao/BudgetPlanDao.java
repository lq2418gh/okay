package dkd.okay.business.budget.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.budget.bo.BudgetPlan;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 仓库信息DAO
 * @author 王莹
 *
 */
@Repository(value = "budgetPlanDao")
public class BudgetPlanDao  extends BaseDaoImpl<BudgetPlan, String>{

	public String selectBudgetNo(String company) {
		return sqlSession.selectOne("BudgetPlan.selectBudgetNo",company);
	}
	/**
	 * 通过year和company查询数据
	 * @param budgetPlan
	 * @return
	 */
	public int selectCountByBudgetPlan(BudgetPlan budgetPlan) {
		Integer count = (Integer)sqlSession.selectOne("BudgetPlan.selectCountByBudgetPlan", budgetPlan);
		return count.intValue();
	}
	public int countByCompany(BudgetPlan budgetPlan) {
		Integer count = (Integer) sqlSession.selectOne("BudgetPlan.countByCompany", budgetPlan);
		return count.intValue(); 
	}
	public int countByCode(String work_no) {
		Integer count = (Integer) sqlSession.selectOne("BudgetPlan.countByCode", work_no);
		return count.intValue(); 
	}
	public BudgetPlan selectByCode(String work_no) {
		return sqlSession.selectOne("BudgetPlan.selectByCode", work_no);
	}
	public List<BudgetPlan> selectByHistory(Map<String, Object> map) {
		return sqlSession.selectList("BudgetPlan.selectByHistory", map);  
	}
	public int countHistory(Object param) {
		Integer count = (Integer) sqlSession.selectOne("BudgetPlan.countByHistory",param);
		return count.intValue(); 
	}
	public  String selectCom(String company) {
		return sqlSession.selectOne("BudgetPlan.selectCom",company);
	}
	
}