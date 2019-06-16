package dkd.okay.business.purchase.controller;

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
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.purchase.bo.Order;
import dkd.okay.business.purchase.service.OrderServiceImpl;
import dkd.okay.system.bo.User;
import dkd.okay.system.util.page.PageUtil;
/**
 * 采购订单Controller类
 * @author 周渤涛
 *
 */
@Controller
@RequestMapping(value="/order")
@Transactional
public class OrderCotroller {
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	/**
	 * 分页模糊：协议采购订单
	 * @param order
	 * @param model
	 * @param pageNow
	 * @param pageUtil
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/query.do")
	public ModelAndView selectPurchase(Order order,ModelMap model,String pageNow,PageUtil pageUtil,HttpServletRequest request) {
		Map<String, Object>  map = orderServiceImpl.selectOrderList(order, pageNow, pageUtil);
		List<Order> orderList=(List<Order>) map.get("orderList");
		model.addAttribute("orderList", orderList);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("order", order);
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/purchase/order/query",model);
	}
	/**
	 * 编辑框架采购订单
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/orderEditFrame.do")
	public ModelAndView orderEditFrame (ModelMap model,String id) {
		Order order = new Order();
		if(StringUtils.isEmpty(id)){
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String realName = user.getUserInfo().getRealName();
			String input_userid = user.getUserId();
			order.setPurchase_user_id(input_userid);
			order.setRealName(realName);
			order.setState("新建");
			order.setSign_date(new Date());
		}else{
			order = orderServiceImpl.selectById(id);
		}
		model.addAttribute("type","frame");
		model.addAttribute("order",order);

		model.addAttribute("companyList",orderServiceImpl.getCompany());
		model.addAttribute("planDetailList",orderServiceImpl.selectPlanDetailByFrame());
		return new ModelAndView("business/purchase/order/edit",model);
	}
	
	/**
	 * 编辑合同采购订单
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/orderEditContract.do")
	public ModelAndView orderEditContract (ModelMap model,String id) {
		Order order = new Order();
		if(StringUtils.isEmpty(id)){
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String realName = user.getUserInfo().getRealName();
			String input_userid = user.getUserId();
			order.setPurchase_user_id(input_userid);
			order.setRealName(realName);
			order.setState("新建");
			order.setSign_date(new Date());
		}else{
			order = orderServiceImpl.selectById(id);
		}
		model.addAttribute("type","contract");
		model.addAttribute("order",order);

		return new ModelAndView("business/purchase/order/edit",model);
	}
	
	/**
	 * 编辑框架采购订单
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/orderEditPurchase.do")
	public ModelAndView orderEditPurchase (ModelMap model,String id) {
		Order order = new Order();
		if(StringUtils.isEmpty(id)){
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String realName = user.getUserInfo().getRealName();
			String input_userid = user.getUserId();
			order.setPurchase_user_id(input_userid);
			order.setRealName(realName);
			order.setState("新建");
			order.setSign_date(new Date());
		}else{
			order = orderServiceImpl.selectById(id);
		}
		model.addAttribute("type","purchase");
		model.addAttribute("order",order);

		return new ModelAndView("business/purchase/order/edit",model);
	}
	
	/**
	 * 查看采购订单
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/view.do")
	private ModelAndView view(ModelMap model,String id) {
		Order order = orderServiceImpl.selectById(id);
		model.put("order", order);	
		if(StringUtils.isNotEmpty(order.getContract_id()))
			model.put("type", "contract");	
		else if(StringUtils.isNotEmpty(order.getFrame_id()) && StringUtils.isNotEmpty(order.getMaterialsPurchaseId()))
			model.put("type", "purchase");	
		else
			model.put("type", "frame");	
		return new ModelAndView("business/purchase/order/view",model);
	}
	/**
	 * 保存采购订单
	 * @param order
	 * @param model
	 * @return
	 */
	@RequestMapping("/save.do")  
	public ModelAndView save(Order order,ModelMap model){
		String message ="";
		if(StringUtils.isEmpty(order.getId())){
			message = orderServiceImpl.insertOAndOd(order);
		}else{
			message = orderServiceImpl.updateOAndOd(order);
		}
		model.put("message", message);
		model.put("url", "order/view.do?id="+order.getId());
		return new ModelAndView("common/message");
	}
	/**
	 * 提交
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/submit.do")
	public ModelAndView submit(ModelMap model,String id,HttpServletRequest request){
		String message=orderServiceImpl.submit(id);
		model.put("message", message);
		model.put("url", "order/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 * 审批通过
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/approvalOk.do")
	public ModelAndView approvalOk(ModelMap model,String id,HttpServletRequest request){
		String message=orderServiceImpl.approvalOk(id);
		model.put("message", message);
		model.put("url", "order/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 * 审批退回
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/approvalNo.do")
	public ModelAndView approvalNo(ModelMap model,String id,HttpServletRequest request){
		String message=orderServiceImpl.approvalNo(id);
		model.put("message", message);
		model.put("url", "order/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	
	/**
	 * 审批退回
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/orderEnd.do")
	public ModelAndView orderEnd(ModelMap model,String id,HttpServletRequest request){
		String message=orderServiceImpl.updateOrderState(id,"已完结");
		model.put("message", message);
		model.put("url", "order/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	
	/**
	 * 公共查询页面
	 * @param order
	 * @param model
	 * @param pageNow
	 * @param pageUtil
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/publicOrder.do")
	public ModelAndView publicSearch(Order order,ModelMap model,String pageNow,PageUtil pageUtil,HttpServletRequest request) {
		Map<String, Object>  map = orderServiceImpl.publicSearch(order, pageNow, pageUtil);
		List<Order> orderList=(List<Order>) map.get("orderList");
		model.addAttribute("orderList", orderList);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("order", order);
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/purchase/order/publicOrder",model);
	}
	/**
	 * 公共查询页面(明细表)----入库
	 * @param model
	 * @param id
	 * @param order_detail
	 * @return
	 */
	@RequestMapping(value="/publicOrderDetail.do")
	public ModelAndView publicSearch(ModelMap model,String id,String order_detail) {
		Order order= orderServiceImpl.selectByIdNotIn(id,order_detail);
		model.addAttribute("order",order);
		return new ModelAndView("business/purchase/order/publicOrderDetail",model);
	}
	/**
	 * 公共查询页面(明细表)----出库
	 * @param model
	 * @param id
	 * @param order_detail
	 * @return
	 */
	@RequestMapping(value="/publicOrderDetailOut.do")
	public ModelAndView publicSearchOut(ModelMap model,String id,String order_detail,String warehouse) {
		Order order= orderServiceImpl.selectByIdNotOut(id,order_detail,warehouse);
		model.addAttribute("order",order);
		return new ModelAndView("business/purchase/order/publicOrderDetail",model);
	}
	
}