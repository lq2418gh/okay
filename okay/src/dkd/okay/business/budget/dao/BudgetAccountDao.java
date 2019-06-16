package dkd.okay.business.budget.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.budget.bo.BudgetAccount;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 仓库信息DAO
 * @author 王莹
 *
 */
@Repository(value = "budgetAccounteDao")
public class BudgetAccountDao  extends BaseDaoImpl<BudgetAccount, String>{
	public int selectNameRepeat(String name){
		Integer count = (Integer) sqlSession.selectOne("BudgetAccount.selectNameRepeat", name);
		return count.intValue(); 
	}
	
	public List<BudgetAccount> selectBudgetAccount() {
    	return sqlSession.selectList("BudgetAccount.SELECT_BUDGETACCOUNT");  
	}
}