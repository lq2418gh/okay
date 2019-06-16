package dkd.okay.business.budget.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.budget.bo.BudgetPlanDetail;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 仓库信息DAO
 * @author 王莹
 *
 */
@Repository(value = "planDetailDao")
public class PlanDetailDao  extends BaseDaoImpl<BudgetPlanDetail, String>{

	public  List<BudgetPlanDetail> selectById(String budgetHeadId) {
		return sqlSession.selectList("BudgetPlanDetail.SELECT_PLANDETAIL",budgetHeadId);
	}
	
	public  List<BudgetPlanDetail> selectBPD(String id) {
		return sqlSession.selectList("BudgetPlanDetail.selectBPD",id);
	}

	public int countByAccount(String account) {
		Integer count = (Integer) sqlSession.selectOne("BudgetPlanDetail.countByAccount",account);
		return count.intValue(); 
	}
	
	
	public  List<BudgetPlanDetail> selectPlanDetailByFrame() {
		return sqlSession.selectList("BudgetPlanDetail.selectPlanDetailByFrame");
	}

	public int updateId(BudgetPlanDetail budgetPlanDetail) {
		return sqlSession.update("BudgetPlanDetail.updateId",budgetPlanDetail);
		
	}

	public int deleteById(String id) {
		 int rows = sqlSession.update("BudgetPlanDetail.deleteById", id);  
	     return rows;  
	}
}