package dkd.okay.business.payment.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import dkd.okay.business.payment.bo.Payment;
import dkd.okay.business.payment.service.PaymentService;



/**
 * 付款管理Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/payment")
public class PaymentController{
	@Autowired
	private PaymentService paymentService;
	
	/**
	 * 分页查询
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")
	public ModelAndView query(Payment payment,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		payment.setPaymentNo(payment.getPaymentNo()!=null?payment.getPaymentNo().trim():null);
		payment.setFillingStartDate(payment.getFillingStartDate()!=null?payment.getFillingStartDate().trim():null);
		payment.setFillingEndDate(payment.getFillingEndDate()!=null?payment.getFillingEndDate().trim():null);
		Map<String, Object> map =paymentService.select(pageNow,payment);
		payment.setPaymentList((List<Payment>)map.get("list"));
		model.addAttribute("payment", payment);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/payment/query",model);
	}
	/**
	 * 编辑页面
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(ModelMap model,String id){
		Payment payment=new Payment();
		if(StringUtils.isNotEmpty(id)){
			BeanUtils.copyProperties(paymentService.selectById(id),payment);
		}
		return new ModelAndView("business/payment/edit","payment",payment);
	}
	/**
	 * 保存
	 * @param model
	 * @return
	 * @throws ParseException 
	 */
	
	@RequestMapping("/save.do")
	public ModelAndView save(Payment payment,String param,ModelMap model,HttpServletRequest request) throws ParseException{
		String message="";
		if(StringUtils.isEmpty(payment.getId())){
			Date d=new Date();
		    SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
		    payment.setYmd(f.format(d));
		}else{
			if(StringUtils.isNotEmpty(payment.getInvoiceIds())||StringUtils.isNotEmpty(payment.getStorageIds())){
				paymentService.delTCD(payment.getId());
			}
		}
		message=paymentService.save(payment);
		model.addAttribute("message",message);
		model.addAttribute("url","/payment/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 校验amount
	 * @param amount
	 * @param storageIds
	 * @param invoiceIds
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/checkAmount.do",produces="text/html;charset=UTF-8")
	public String checkAmount(BigDecimal amount,String storageIds,String invoiceIds) {
		String message=""; 
		message=paymentService.check(invoiceIds, storageIds, amount);
		if (message.equals("金额符合标准")) {
			return "yes";
		}else{
			return message;
		}
	}
	/**
	 * 查看页面
	 * @return
	 */
	@RequestMapping("/view.do")  
	public ModelAndView view(ModelMap model,String id){
		Payment payment=new Payment();
		if(StringUtils.isNotEmpty(id)){
			BeanUtils.copyProperties(paymentService.selectById(id),payment);
		}
		return new ModelAndView("business/payment/view","payment",payment);
	}
	/**
	 * 
	 * 删除信息
	 * @param model
	 * @param budgetAccountId
	 * @return
	 */
	@RequestMapping("/delete.do") 
	public ModelAndView delete(ModelMap model,String id){
		String message="";
		message=paymentService.delete(id);
		model.addAttribute("message",message);
		model.addAttribute("url","/payment/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 
	 * 提交
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/updateState.do")
	public ModelAndView updateState(ModelMap model,String id,HttpServletRequest request){
		String message=paymentService.updateState(id);;
		model.put("message", message);
		model.put("url", "payment/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 校验编码重复
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/checkRepeat.do")
	public void checkRepeat(String id,String paymentNo ,HttpServletResponse response) throws IOException {	
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(paymentService.selectNoRepeat(paymentNo,id));
	}
}