package dkd.okay.business.budget.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.budget.bo.BudgetPlan;
import dkd.okay.business.budget.bo.BudgetPlanDetail;
import dkd.okay.business.budget.dao.BudgetPlanDao;
import dkd.okay.business.budget.dao.PlanDetailDao;
import dkd.okay.system.bo.Company;
import dkd.okay.system.dao.ProcessRecordDaoImpl;
import dkd.okay.system.service.CompanyServiceImpl;
import dkd.okay.system.service.FlowsetServiceImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;


/**
 * 预算科目信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="budgetPlanService")
@Transactional
public class BudgetPlanService{
	@Autowired
	private BudgetPlanDao budgetPlanDao;
	@Autowired
	private PlanDetailDao planDetailDao;
	@Autowired
	private FlowsetServiceImpl flowsetServiceImpl;
	@Autowired
	private CompanyServiceImpl companyServiceImpl;
	@Autowired
	private ProcessRecordDaoImpl processRecordDaoImpl;
	/**
	 * 查询 判断 budgetNo 
	 * @param company 
	 * @param year 
	 * @return
	 */
	public String selectBudgetNo(String company) {
		return budgetPlanDao.selectBudgetNo(company);
	}
	public int selectCountByBudgetPlan(BudgetPlan budgetPlan) {
		return budgetPlanDao.selectCountByBudgetPlan(budgetPlan);
	}
	public String save(BudgetPlan budgetPlan) {
		if(StringUtils.isEmpty(budgetPlan.getId())|| budgetPlan.getState().equals("审批通过")){
			String id=UUIDGenerator.getUUID();
			budgetPlan.setId(id);
			budgetPlanDao.insert(budgetPlan);
		}
		else{
			budgetPlan.setModifyDate(null);
			budgetPlanDao.update(budgetPlan);
		}
		planDetailDao.delete(budgetPlan.getId());
		List<BudgetPlanDetail> list=budgetPlan.getPlanDetailList();
		for (BudgetPlanDetail budgetPlanDetail : list){
			budgetPlanDetail.setId(UUIDGenerator.getUUID());
			budgetPlanDetail.setBudgetHeadId(budgetPlan.getId());
			budgetPlanDetail.setResidualAmount(budgetPlanDetail.getBudgetAmount());
			planDetailDao.insert(budgetPlanDetail);
		}
		String back="保存成功！";
		return back;
	}
	public Map<String, Object> select(String pageNow, BudgetPlan budgetPlan) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("budgetPlan", budgetPlan);
		map.put("page", pageUtil.getPage(pageNow, budgetPlanDao.count(map)));//根据父ID查询数量
		List<BudgetPlan> list = budgetPlanDao.selectByCondition(map);//根据父ID查询信息
		List<BudgetPlan> list1=new  ArrayList<BudgetPlan>();
		for(BudgetPlan bp:list){
			Company company=companyServiceImpl.selectCompanyById(bp.getCompany());
			String companyName=company.getCompanyName();
			bp.setCompanyName(companyName);
			list1.add(bp);
			map.put("list",list1);
		}
		
		return map;
	}
	public Object selectBudgetPlanById(String id) {
		return budgetPlanDao.get(id);
	}
	public String delete(String id) {
		String back="";
		budgetPlanDao.delete(id);
		planDetailDao.delete(id);
		 back="删除成功！";
		return back;
	}
	public String submit(String id) {
		String back="";
		BudgetPlan budgetPlan = budgetPlanDao.get(id);
		flowsetServiceImpl.initRecord("budgetApproval",budgetPlan.getBudgetNo());
		budgetPlan.setState("待审批");
		budgetPlan.setModifyDate(null);
		budgetPlanDao.update(budgetPlan);
		back="提交成功！";
		return back;
	}
	public Map<String, Object> selectHistory(String pageNow, BudgetPlan bp) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("budgetPlan", bp);
		map.put("page", pageUtil.getPage(pageNow, budgetPlanDao.countHistory(map)));//根据父ID查询数量
		List<BudgetPlan> list = budgetPlanDao.selectByHistory(map);//根据父ID查询信息
		List<BudgetPlan> list1=new  ArrayList<BudgetPlan>();
		for(BudgetPlan b:list){
			Company company=companyServiceImpl.selectCompanyById(b.getCompany());
			String companyName=company.getCompanyName();
			b.setCompanyName(companyName);
			list1.add(b);
			map.put("list",list1);
		}
		return map;
	}
	//审批通过
		public void  passApproval(String work_no){
			int i=work_no.length();
			if(!work_no.substring(i-1,i).equals("1")){
				BudgetPlan budgetPlanNew = budgetPlanDao.selectByCode(work_no);
				Company company=companyServiceImpl.selectCompanyById(budgetPlanNew.getCompany());
				String companyCode=company.getCompanyCode();//部门编号
				String no="YS"+companyCode+String.valueOf(Integer.parseInt(work_no.substring(2,i))-1);
				BudgetPlan budgetPlanOld = budgetPlanDao.selectByCode(no);
				Date d=new Date();
				budgetPlanOld.setModifyDate(d);
				budgetPlanDao.update(budgetPlanOld);
				List<BudgetPlanDetail> detail= planDetailDao.selectById(budgetPlanOld.getId());
				List<BudgetPlanDetail> list2= planDetailDao.selectById(budgetPlanNew.getId());
				for(int x=0;x<detail.size();x++){
					for(int y=0;y<list2.size();y++){
						if(list2.get(y).getAccount().equals(detail.get(x).getAccount())){
							planDetailDao.deleteById(list2.get(y).getId());
							BudgetPlanDetail budgetPlanDetail= list2.get(y);
								budgetPlanDetail.setId(detail.get(x).getId());
								BigDecimal amount=new BigDecimal(0);
								amount=detail.get(x).getBudgetAmount().subtract(detail.get(x).getResidualAmount());
								budgetPlanDetail.setResidualAmount(budgetPlanDetail.getBudgetAmount().subtract(amount));
								planDetailDao.insert(budgetPlanDetail);
							
						}
					}
				}
				planDetailDao.delete(budgetPlanOld.getId());
				for(BudgetPlanDetail budgetPlanDetail:detail){
					budgetPlanDetail.setId(UUIDGenerator.getUUID());
					planDetailDao.insert(budgetPlanDetail);
				}
			}
		}
	//审批不通过
		public void  rejectApproval(String work_no){
			BudgetPlan budgetPlan = budgetPlanDao.selectByCode(work_no);
			budgetPlanDao.delete(budgetPlan.getId());
			planDetailDao.delete(budgetPlan.getId());
		}
		
		
		
		
		public  List<BudgetPlanDetail> selectPlanDetailByFrame() {
			return planDetailDao.selectPlanDetailByFrame();
		}
		
		public String selectCom(String company){
			return budgetPlanDao.selectCom(company);
		}
	
}