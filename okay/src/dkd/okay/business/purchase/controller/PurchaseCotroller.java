package dkd.okay.business.purchase.controller;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.purchase.bo.Purchase;
import dkd.okay.business.purchase.bo.PurchaseDetail;
import dkd.okay.business.purchase.service.PurchaseDetailServiceImpl;
import dkd.okay.business.purchase.service.PurchaseServiceImpl;
import dkd.okay.business.stock.service.StockService;
import dkd.okay.system.bo.User;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
/**
 * 物质采购Controller类
 * @author 李奇
 *
 */
@Controller
@RequestMapping(value="/purchase")
@Transactional
public class PurchaseCotroller {

	@Autowired
	private PurchaseServiceImpl purchaseServiceImpl;
	
	@Autowired
	private PurchaseDetailServiceImpl purchaseDetailServiceImpl;
	
	@Autowired
	private StockService stockService;
	
	/**
	 * 分页模糊 ：物资采购计划
	 * @param purchase model pageNow year plan_no pageUtil request
	 * @return
	 * @throws ParseException 
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/query.do")
	public ModelAndView selectPurchase(Purchase purchase,ModelMap model,String pageNow,PageUtil pageUtil,HttpServletRequest request) throws ParseException{
		purchase.setPlan_no(!StringUtils.isEmpty(purchase.getPlan_no())?purchase.getPlan_no().trim():null);
		purchase.setYear(!StringUtils.isEmpty(purchase.getYear())?purchase.getYear().trim():null);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyId = user.getUserInfo().getCompany().getCompanyId();//部门id
		model.put("isManager", companyId.equals("0") || companyId.equals("50b765068857433c9199b5cfe4"));
		if(!companyId.equals("0") && !companyId.equals("50b765068857433c9199b5cfe4")){
			purchase.setDepartmentId(companyId);
		}
		Map<String, Object>  map = purchaseServiceImpl.selectPurchaseList(purchase,pageNow, pageUtil);
		List<Purchase> purchaseList=(List<Purchase>) map.get("purchaseList");
		model.addAttribute("PurchaseList", purchaseList);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("purchase", purchase);
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/purchase/purchasePlan/query",model);
	}
	/**
	 * 回显添加和  编辑回显
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/purchaseEdit.do")
	public ModelAndView addPurchase (ModelMap model,String id) {
		Purchase purchase = new Purchase();
		if(StringUtils.isEmpty(id)){
			Calendar now = Calendar.getInstance();
			String year =now.get(Calendar.YEAR)+"";//当前时间的 年份2017
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String realName = user.getUserInfo().getRealName();
			String companyName = user.getUserInfo().getCompany().getCompanyName();//部门名
			String departmentId = user.getUserInfo().getCompany().getCompanyId();//部门id
			String input_userid = user.getUserId();
			purchase.setCompany_name(companyName);
			purchase.setRealName(realName);
			purchase.setDepartmentId(departmentId);
			purchase.setYear(year);
			purchase.setInput_userid(input_userid);
			purchase.setInput_date(new Date());
		}else{
			purchase = purchaseServiceImpl.selectPur(id);
			//查询库存数量
			List<PurchaseDetail> list = purchase.getPurchaseDetailList();
			for (PurchaseDetail purchaseDetail : list) {
				purchaseDetail.setStock(stockService.selectStockByMaterial(purchaseDetail.getMateriel_id())+"");
			}
			purchase.setPurchaseDetailList(list);
		}
		model.addAttribute("purchase",purchase);
		return new ModelAndView("business/purchase/purchasePlan/edit",model);
	}
	/**
	 * 采购查询明细和物资
	 * @param model
	 * @param plan_id
	 * @return
	 */
	@RequestMapping(value="/view.do")
	private ModelAndView view(ModelMap model,String id) {
		Purchase pur =  purchaseServiceImpl.selectPur(id);
		//查询库存数量
		List<PurchaseDetail> list = pur.getPurchaseDetailList();
		for (PurchaseDetail purchaseDetail : list) {
			purchaseDetail.setStock(stockService.selectStockByMaterial(purchaseDetail.getMateriel_id())+"");
		}
		pur.setPurchaseDetailList(list);
		model.put("pur", pur);	
		return new ModelAndView("business/purchase/purchasePlan/view",model);
	}
	/**
	 * 根据year和部门id查询数据
	 * @param year
	 * @param departmentId
	 * @return
	 */
	@RequestMapping("/checkPlanNo.do")  
	@ResponseBody
	public String checkPlanNo( String year,String departmentId,String id){
		Purchase purchase= new Purchase();
		purchase.setYear(year);
		purchase.setDepartmentId(departmentId);
		if(StringUtils.isNotEmpty(id)){
			String nowYear=purchaseServiceImpl.selectById(id);
			if (nowYear.equals(year)) {
				return "1";
			}
		}
		int countPlan = purchaseServiceImpl.selectCountPlan(purchase);
		if(countPlan<=0){
			return "1";
		}else{
			return "0";
		}
	}
	/**
	 * 保存手动导入结果
	 *  判断四位流水号 paln_no-----每过一年流水号从0001开始------
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/save.do")  
	public ModelAndView mtorderSave(Purchase purchase,ModelMap model){
		String message ="";
		if(StringUtils.isEmpty(purchase.getId())){
			Calendar now = Calendar.getInstance();
			String nowYear =now.get(Calendar.YEAR)+"";
			String plan_no = purchaseServiceImpl.selectPurchasePlanNo();//倒叙查询编号
			int countByYear = purchaseServiceImpl.selectCountByYear(nowYear);//查询今年有多少条数据
			if(countByYear<=0){ 
				plan_no="YH"+nowYear+"0001";
			}else {
				String substring = plan_no.substring(6, 10);
				int i = Integer.parseInt(substring)+1;
				String str_no = Common.formatNumber(i, 4);
				plan_no="YH"+nowYear+str_no;
			}
			purchase.setPlan_no(plan_no);
			message = purchaseServiceImpl.insertPAndPd(purchase);
		}else{
			purchaseServiceImpl.updPur(purchase);//更新主表 year和all_amount
			purchaseDetailServiceImpl.delDet(purchase.getId());//删除表体
			message = purchaseDetailServiceImpl.insertPd(purchase.getPurchaseDetailList(),purchase.getId());//添加表体信息
		}
		model.addAttribute("message",message.substring(0, 4));
		model.addAttribute("url","purchase/view.do?id="+message.substring(4));
		return new ModelAndView("common/message"); 
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/delPur.do") 
	@ResponseBody
	public void delPur(String id) {
		purchaseServiceImpl.delPur(id);
		purchaseDetailServiceImpl.delDet(id);
	}
	/**
	 *查询库存数量
	 */
	@ResponseBody
	@RequestMapping(value="/selectStock.do")
	public String selectStock(String material){
		return stockService.selectStockByMaterial(material)+"";
	}
}