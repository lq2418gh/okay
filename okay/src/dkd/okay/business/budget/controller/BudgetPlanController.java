package dkd.okay.business.budget.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.budget.bo.BudgetAccount;
import dkd.okay.business.budget.bo.BudgetPlan;
import dkd.okay.business.budget.bo.BudgetPlanDetail;
import dkd.okay.business.budget.dao.BudgetPlanDao;
import dkd.okay.business.budget.service.BudgetAccountService;
import dkd.okay.business.budget.service.BudgetPlanService;
import dkd.okay.business.budget.service.PlanDetailService;
import dkd.okay.system.bo.Company;
import dkd.okay.system.bo.User;
import dkd.okay.system.service.CompanyServiceImpl;
import dkd.okay.system.service.FlowsetServiceImpl;

/**
 * 预算科目管理Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/budgetPlan")
public class BudgetPlanController{
	@Autowired
	private BudgetPlanService budgetPlanService;
	@Autowired
	private CompanyServiceImpl companyServiceImpl;
	@Autowired
	private PlanDetailService planDetailService;
	@Autowired
	private BudgetAccountService budgetAccountService;
	@Autowired
	private BudgetPlanDao budgetPlanDao;
	@Autowired
	private FlowsetServiceImpl flowsetServiceImpl;
	/**
	 * 分页查询
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")
	public ModelAndView query(BudgetPlan budgetPlan,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		budgetPlan.setBudgetNo(budgetPlan.getBudgetNo()!=null?budgetPlan.getBudgetNo().trim():null);
		budgetPlan.setYear(budgetPlan.getYear()!=null?budgetPlan.getYear().trim():null);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyId=user.getUserInfo().getCompany().getCompanyId();//部门id
		String companyName = user.getUserInfo().getCompany().getCompanyName();//部门名
		if(companyName.equals("公司")||companyName.equals("采办部")||companyName==("公司")||companyName==("采办部")){
			budgetPlan.setCompany(budgetPlan.getCompany()!=null?budgetPlan.getCompany().trim():null);
		}else{
			budgetPlan.setCompany(companyId);
		}
		budgetPlan.setState(budgetPlan.getState()!=null?budgetPlan.getState().trim():null);
		Map<String, Object> map = budgetPlanService.select(pageNow,budgetPlan);
		budgetPlan.setBudgetPlanList((List<BudgetPlan>)map.get("list"));
		model.addAttribute("companyName",companyName);
		model.addAttribute("budgetPlan", budgetPlan);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/budget/budgetPlan/query",model);
	}
	/**
	 * 计划预算编辑页面
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(ModelMap model,String id){
		BudgetPlan budgetPlan=new BudgetPlan();
		if(StringUtils.isEmpty(id)){
			Calendar now = Calendar.getInstance();
			String year =now.get(Calendar.YEAR)+"";//当前时间的 年份
			budgetPlan.setYear(year);
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String companyName = user.getUserInfo().getCompany().getCompanyName();//部门名
			budgetPlan.setCompany(user.getUserInfo().getCompany().getCompanyId()); //部门id
			Company company=new Company();
			company=companyServiceImpl.selectCompanyById(user.getUserInfo().getCompany().getCompanyId());
			String companyCode=company.getCompanyCode();//部门编号
			String budgetNo=budgetPlanService.selectBudgetNo(budgetPlan.getCompany());//查找同一部门里的最新单据单据编号
			int countByBudgetPlan = budgetPlanService.selectCountByBudgetPlan(budgetPlan);//查找
			if(countByBudgetPlan<1){
				budgetNo ="YS"+companyCode+year+"0001";
			}else{
				String message="此用户所属部门今年已经建立一条计划预算单据了，不能再新建！";
				model.addAttribute("message",message);
				model.addAttribute("url","/budgetPlan/query.do");
				return new ModelAndView("common/message");
			}
			budgetPlan.setBudgetNo(budgetNo);
			model.addAttribute("companyName",companyName);
			model.addAttribute("budgetPlan", budgetPlan);
		}else{
			BeanUtils.copyProperties(budgetPlanService.selectBudgetPlanById(id),budgetPlan);
			Company company=companyServiceImpl.selectCompanyById(budgetPlan.getCompany());
			String companyCode=company.getCompanyCode();//部门编号
			String companyName=company.getCompanyName();
			if(budgetPlan.getState().equals("审批通过")){
				int i=budgetPlan.getBudgetNo().length();
				String no="YS"+companyCode+String.valueOf(Integer.parseInt(budgetPlan.getBudgetNo().substring(2,i))+1);
				budgetPlan.setBudgetNo(no);
			}
			BudgetPlanDetail budgetPlanDetail=new BudgetPlanDetail();
			budgetPlanDetail.setBudgetHeadId(id);
			 List<BudgetPlanDetail> list=planDetailService.select(budgetPlanDetail);
			 BigDecimal totalresidualAmount=new BigDecimal(0);
			 List<BudgetPlanDetail> list1=new  ArrayList<BudgetPlanDetail>();
			 for(BudgetPlanDetail detail:list){
				 BigDecimal residualAmount=detail.getResidualAmount();
				 totalresidualAmount=(totalresidualAmount).add(residualAmount);
				 String budgetAccountId=detail.getAccount();
				 BudgetAccount budgetAccount = budgetAccountService.selectBudgetAccountById(budgetAccountId);
				 detail.setAccountName(budgetAccount.getName());
				 detail.setWarningRatio(budgetAccount.getWarningRatio());
				 BigDecimal a=(detail.getBudgetAmount().subtract(residualAmount)).divide(detail.getBudgetAmount(),2,BigDecimal.ROUND_HALF_UP);
				 float b=a.floatValue()*100;
				 if(b>detail.getWarningRatio()){
					 detail.setStatus("超过预警比例");
				 }else{
					detail.setStatus("没超过预警比例");
				 }
				 list1.add(detail);
			 }
			 model.addAttribute("residualBudget",totalresidualAmount);
			 model.addAttribute("companyName",companyName);
			 budgetPlan.setPlanDetailList(list1);
		}
		return new ModelAndView("business/budget/budgetPlan/edit","budgetPlan",budgetPlan);
	}
	/**
	 * 保存手动导入结果
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/save.do")
	public ModelAndView save(BudgetPlan budgetPlan,String param,ModelMap model,HttpServletRequest request){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Date d = new Date();
	    if(StringUtils.isEmpty(budgetPlan.getId())||budgetPlan.getState().equals("审批通过")){
	    	budgetPlan.setInputDate(d);
		    budgetPlan.setInputUser(user.getUsername());
	    }
		/*if(StringUtils.isEmpty(budgetPlan.getId())){
			Company company=companyServiceImpl.selectCompanyById(user.getUserInfo().getCompany().getCompanyId());
			String companyCode=company.getCompanyCode();//部门编号
			int y=companyCode.length();
			String work_no=budgetPlan.getBudgetNo();
			String substring = work_no.substring(6+y, 10+y);
			int i = Integer.parseInt(substring)-1;
			if(i!=0){
			    String str_no = Common.formatNumber(i, 4);
			    String code=work_no.substring(0, 6+y)+str_no;//同部门上一个审核通过的单据编号
			    BudgetPlan bp=budgetPlanDao.selectByCode(code);
			    if(!bp.getState().equals("审批通过")){
				    String message="该部门还有预算没有通过审批，不能新建单据！";
				    model.addAttribute("message",message);
				    model.addAttribute("url","/budgetPlan/query.do");
				    return new ModelAndView("common/message");
			    }
			}
		}*/
		if(budgetPlan.getState().equals("新建")){
			String message=budgetPlanService.save(budgetPlan);
			model.addAttribute("message",message);
		}else{
			budgetPlanService.save(budgetPlan);
			String message=budgetPlanService.submit(budgetPlan.getId());
			model.addAttribute("message",message);
		}
		String id=budgetPlan.getId();
		model.addAttribute("url","/budgetPlan/view.do?id="+id);
		return new ModelAndView("common/message");
		
	}
	/**
	 * 
	 * 删除预算科目信息
	 * @param model
	 * @param budgetAccountId
	 * @return
	 */
	@RequestMapping("/delete.do") 
	public ModelAndView delete(ModelMap model,String id){
		String message=budgetPlanService.delete(id);
		model.addAttribute("message",message);
		model.addAttribute("url","/budgetPlan/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 计划预算查看页面
	 * @return
	 */
	@RequestMapping("/view.do")  
	public ModelAndView view(ModelMap model,String id){
		    BudgetPlan budgetPlan=new BudgetPlan();
		    BeanUtils.copyProperties(budgetPlanService.selectBudgetPlanById(id),budgetPlan);
		    Company company=companyServiceImpl.selectCompanyById(budgetPlan.getCompany());
			String companyName=company.getCompanyName();
			BudgetPlanDetail budgetPlanDetail=new BudgetPlanDetail();
			budgetPlanDetail.setBudgetHeadId(id);
			 List<BudgetPlanDetail> list=planDetailService.select(budgetPlanDetail);
			 BigDecimal totalresidualAmount=new BigDecimal(0);
			 for(BudgetPlanDetail detail:list){
				 BigDecimal residualAmount=detail.getResidualAmount();
				 totalresidualAmount=(totalresidualAmount).add(residualAmount);
				 String budgetAccountId=detail.getAccount();
				 BudgetAccount budgetAccount = budgetAccountService.selectBudgetAccountById(budgetAccountId);
				 detail.setAccountName(budgetAccount.getName());
				 detail.setWarningRatio(budgetAccount.getWarningRatio());
				 BigDecimal a=(detail.getBudgetAmount().subtract(residualAmount)).divide(detail.getBudgetAmount(),2,BigDecimal.ROUND_HALF_UP);
				 float b=a.floatValue()*100;
				 if(b>detail.getWarningRatio()){
					 detail.setStatus("超过预警比例");
				 }else{
					 detail.setStatus("没超过预警比例");
				 }
			 }
			 boolean flag = flowsetServiceImpl.checkRole(budgetPlan.getBudgetNo());
			 model.put("flag", flag);
			 model.addAttribute("residualBudget",totalresidualAmount);
			 model.addAttribute("companyName",companyName);
			 budgetPlan.setPlanDetailList(list);
		return new ModelAndView("business/budget/budgetPlan/view","budgetPlan",budgetPlan);
	}
	/**
	 * 计划预算提交
	 * @return
	 */
	@RequestMapping("/submit.do")
	public ModelAndView submit(ModelMap model,String id,HttpServletRequest request){
		String message=budgetPlanService.submit(id);
		model.put("message", message);
		model.put("url", "budgetPlan/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 按查看历史跳到计划预算履历
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/history.do")
	public ModelAndView history(String id,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		BudgetPlan budgetPlan=new BudgetPlan();
		BeanUtils.copyProperties(budgetPlanService.selectBudgetPlanById(id),budgetPlan);
		BudgetPlan bp=new BudgetPlan();
		bp.setCompany(budgetPlan.getCompany());
		bp.setYear(budgetPlan.getYear());
		bp.setState("审批通过");
		Map<String, Object> map = budgetPlanService.selectHistory(pageNow,bp);
		bp.setBudgetPlanList((List<BudgetPlan>)map.get("list"));
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyName = user.getUserInfo().getCompany().getCompanyName();//部门名
		model.addAttribute("companyName",companyName);
		model.addAttribute("budgetPlan", bp);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/budget/budgetPlan/history",model);
	}
	/**
	 * 计划预算履历页面
	 * @param query
	 * @param request
	 * @return
	 */
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/queryHistory.do")
	public ModelAndView queryHistory(BudgetPlan budgetPlan,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		budgetPlan.setBudgetNo(budgetPlan.getBudgetNo()!=null?budgetPlan.getBudgetNo().trim():null);
		budgetPlan.setYear(budgetPlan.getYear()!=null?budgetPlan.getYear().trim():null);
		budgetPlan.setModifyStartDate(budgetPlan.getModifyStartDate()!=null?budgetPlan.getModifyStartDate().trim():null);
		budgetPlan.setModifyEndDate(budgetPlan.getModifyEndDate()!=null?budgetPlan.getModifyEndDate().trim():null);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyId=user.getUserInfo().getCompany().getCompanyId();//部门id
		String companyName = user.getUserInfo().getCompany().getCompanyName();//部门名
		if(companyName.equals("公司")||companyName.equals("采办部")||companyName==("公司")||companyName==("采办部")){
			budgetPlan.setCompany(budgetPlan.getCompany()!=null?budgetPlan.getCompany().trim():null);
		}else{
			budgetPlan.setCompany(companyId);
		}
		budgetPlan.setState("审批通过");
		Map<String, Object> map = budgetPlanService.selectHistory(pageNow,budgetPlan);
		budgetPlan.setBudgetPlanList((List<BudgetPlan>)map.get("list"));
		model.addAttribute("companyName",companyName);
		model.addAttribute("budgetPlan", budgetPlan);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/budget/budgetPlan/history",model);
	}
	/**
	 * 历史计划预算页面
	 * @return
	 */
	@RequestMapping("/viewHistory.do")  
	public ModelAndView viewHistory(ModelMap model,String id){
		    BudgetPlan budgetPlan=new BudgetPlan();
		    BeanUtils.copyProperties(budgetPlanService.selectBudgetPlanById(id),budgetPlan);
		    Company company=companyServiceImpl.selectCompanyById(budgetPlan.getCompany());
			String companyName=company.getCompanyName();
			BudgetPlanDetail budgetPlanDetail=new BudgetPlanDetail();
			budgetPlanDetail.setBudgetHeadId(id);
			 List<BudgetPlanDetail> list=planDetailService.select(budgetPlanDetail);
			 BigDecimal totalresidualAmount=new BigDecimal(0);
			 for(BudgetPlanDetail detail:list){
				 BigDecimal residualAmount=detail.getResidualAmount();
				 totalresidualAmount=(totalresidualAmount).add(residualAmount);
				 String budgetAccountId=detail.getAccount();
				 BudgetAccount budgetAccount = budgetAccountService.selectBudgetAccountById(budgetAccountId);
				 detail.setAccountName(budgetAccount.getName());
				 detail.setWarningRatio(budgetAccount.getWarningRatio());
				 BigDecimal a=(detail.getBudgetAmount().subtract(residualAmount)).divide(detail.getBudgetAmount(),2,BigDecimal.ROUND_HALF_UP);
				 float b=a.floatValue()*100;
				 if(b>detail.getWarningRatio()){
					 detail.setStatus("超过预警比例");
				 }else{
					 
					 detail.setStatus("没超过预警比例");
				 }
			 }
			 model.addAttribute("residualBudget",totalresidualAmount);
			 model.addAttribute("companyName",companyName);
			 budgetPlan.setPlanDetailList(list);
		return new ModelAndView("business/budget/budgetPlan/viewHistory","budgetPlan",budgetPlan);
	}
}