package dkd.okay.business.budget.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import dkd.okay.business.budget.bo.BudgetAccount;
import dkd.okay.business.budget.bo.ExcleFileForm;
import dkd.okay.business.budget.service.BudgetAccountService;
import dkd.okay.business.budget.service.PlanDetailService;
import dkd.okay.system.util.downloadFile;

/**
 * 预算科目管理Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/budgetAccount")
public class BudgetAccountController{
	@Autowired
	private BudgetAccountService budgetAccountService;
	@Autowired
	private PlanDetailService planDetailService;
	/**
	 * 分页查询
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")
	public ModelAndView query(BudgetAccount budgetAccount, ModelMap model,HttpServletRequest request){
		
		String pageNow = request.getParameter("pageNow");
		budgetAccount.setName(budgetAccount.getName()!=null?budgetAccount.getName().trim():null);
		budgetAccount.setIsValidate(budgetAccount.getIsValidate()!=null?budgetAccount.getIsValidate().trim():null);
		Map<String, Object> map = budgetAccountService.select(pageNow, budgetAccount);
		budgetAccount.setBudgetAccountList((List<BudgetAccount>)map.get("list"));
		model.addAttribute("budgetAccount", budgetAccount);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/budget/budgetAccount/query",model);
	}
	/**
	 * 
	 * 编辑预算科目信息
	 * @param model
	 * @param budgetAccountId
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(ModelMap model,String budgetAccountId){
		BudgetAccount budgetAccount=new BudgetAccount();
		if(StringUtils.isNotEmpty(budgetAccountId)){
			BeanUtils.copyProperties(budgetAccountService.selectBudgetAccountById(budgetAccountId),budgetAccount);
		}
		return new ModelAndView("business/budget/budgetAccount/edit","budgetAccount",budgetAccount);
	}
	/**
	 * 
	 * 保存预算科目信息
	 * @param model
	 * @param BudgetAccount
	 * @return
	 */
	@RequestMapping("/save.do")
	public ModelAndView save(BudgetAccount budgetAccount,ModelMap model){
		String message=budgetAccountService.save(budgetAccount);
		model.addAttribute("message",message);
		model.addAttribute("url","/budgetAccount/query.do");
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
	public ModelAndView delete(ModelMap model,String budgetAccountId){
		String message="";
		int count=planDetailService.countByAccount(budgetAccountId);
		if(count>0){
			message="此预算科目已被引用，无法删除！";
		}else{
		    message=budgetAccountService.delete(budgetAccountId);
		}
		model.addAttribute("message",message);
		model.addAttribute("url","/budgetAccount/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 
	 * 校验预算科目名称重名
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatname.do") 
	public void repeatName(String name, HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(budgetAccountService.selectNameRepeat(name));
	}
	/**
	 * 编辑上传页
	 */
	@RequestMapping("/editImp.do") 
	public ModelAndView editImp(ModelMap model){
		ExcleFileForm excleFileForm = new ExcleFileForm();
		return new ModelAndView("business/budget/budgetAccount/import","excleFileForm",excleFileForm);
	}
	/**
	 * 保存上传信息
	 */
	@RequestMapping("/saveImp.do")  
	public ModelAndView saveImp(HttpServletRequest request,ExcleFileForm excleFileForm, ModelMap model){
		model.addAttribute("message", budgetAccountService.saveExcle(request,excleFileForm));
		model.addAttribute("url","/budgetAccount/query.do");
		return new ModelAndView("common/message"); 
	}
	/**
	 * 下载预算科目信息模板
	 */
	@RequestMapping("/download.do")
	public void download(HttpServletRequest request,HttpServletResponse response){
		//获取项目路径
		String path = request.getSession().getServletContext().getRealPath("/");
		downloadFile df = new downloadFile();
		try {
			df.download(path+"upfile/baseinfo/", "预算科目信息导入模板.xlsx", "application/octet-stream", response, request);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 通用科目预算管理首页-业务单据弹出用
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/publicAccount.do")  
	public ModelAndView publicAccount(BudgetAccount budgetAccount){
		return new ModelAndView(new RedirectView("publicAccountQuery.do"));
	}

	/**
	 * 分页查询
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/publicAccountQuery.do")
	public ModelAndView publicAccountQuery(BudgetAccount budgetAccount, ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		budgetAccount.setName(budgetAccount.getName()!=null?budgetAccount.getName().trim():null);
		budgetAccount.setIsValidate("使用");
		Map<String, Object> map = budgetAccountService.select(pageNow, budgetAccount);
		budgetAccount.setBudgetAccountList((List<BudgetAccount>)map.get("list"));
		model.addAttribute("budgetAccount", budgetAccount);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/budget/budgetAccount/publicAccount",model);
	}

}