package dkd.okay.business.budget.service;

import java.math.BigDecimal;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.budget.bo.BudgetPlanDetail;
import dkd.okay.business.budget.dao.PlanDetailDao;


/**
 * 预算科目信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="planDetailService")
@Transactional
public class PlanDetailService{
	@Autowired
	private PlanDetailDao planDetailDao;
	@Autowired
	private BudgetPlanService budgetPlanService;
	
	public List<BudgetPlanDetail> select(BudgetPlanDetail budgetPlanDetail) {
		String budgetHeadId=budgetPlanDetail.getBudgetHeadId();
		List<BudgetPlanDetail> list = planDetailDao.selectById(budgetHeadId);
		return list;
	}
		
	//根据登陆部门查找预算明细
	public List<BudgetPlanDetail> selectBPD(String company) {
		//根据部门id和年份和修改日期为空的情况查找计划预算主表的id，返回集合
		String id = budgetPlanService.selectCom(company);
		//查找预算明细
		if(StringUtils.isEmpty(id)){
			id="1";//id为空的情况
		}
		return planDetailDao.selectBPD(id);
	}

	public int countByAccount(String account) {
		int count=planDetailDao.countByAccount(account);
		return count;
	}
	
	//回填明细里的两个剩余金额
	public String updateResidualAmount(String id,BigDecimal residualAmount){
		BudgetPlanDetail budgetPlanDetail=planDetailDao.get(id);
		budgetPlanDetail.setResidualAmount(budgetPlanDetail.getResidualAmount().subtract(residualAmount));
		planDetailDao.update(budgetPlanDetail);
		return null;
		
	}
	public String updateResidualAmountStorage(String id,BigDecimal residualAmountStorage){
		BudgetPlanDetail budgetPlanDetail=planDetailDao.get(id);
		budgetPlanDetail.setResidualAmount(budgetPlanDetail.getResidualAmount().subtract(residualAmountStorage));
		planDetailDao.update(budgetPlanDetail);
		return null;
		
	}
	

}