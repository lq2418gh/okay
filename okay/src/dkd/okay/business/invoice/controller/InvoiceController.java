package dkd.okay.business.invoice.controller;

import java.io.IOException;
import java.text.ParseException;
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

import dkd.okay.business.invoice.bo.Invoice;
import dkd.okay.business.invoice.bo.InvoiceDetail;
import dkd.okay.business.invoice.service.InvoiceDetailService;
import dkd.okay.business.invoice.service.InvoiceService;
import dkd.okay.business.payment.bo.Payment;
import dkd.okay.business.payment.service.PaymentService;


/**
 * 发票管理Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/invoice")
public class InvoiceController{
	@Autowired
	private InvoiceService invoiceService;
	@Autowired
	private InvoiceDetailService invoiceDetailService;
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
	public ModelAndView query(Invoice invoice,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		invoice.setInvoiceNo(invoice.getInvoiceNo()!=null?invoice.getInvoiceNo().trim():null);
		invoice.setBillingStartDate(invoice.getBillingStartDate()!=null?invoice.getBillingStartDate().trim():null);
		invoice.setBillingEndDate(invoice.getBillingEndDate()!=null?invoice.getBillingEndDate().trim():null);
		Map<String, Object> map =invoiceService.select(pageNow,invoice);
		invoice.setInvoiceList((List<Invoice>)map.get("list"));
		model.addAttribute("invoice", invoice);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/invoice/query",model);
	}
	/**
	 * 编辑页面
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(ModelMap model,String id){
		Invoice invoice=new Invoice();
		if(StringUtils.isNotEmpty(id)){
			BeanUtils.copyProperties(invoiceService.selectById(id),invoice);
			List<InvoiceDetail> list=invoiceDetailService.selectById(id);
			invoice.setInvoiceDetailList(list);
		}
		return new ModelAndView("business/invoice/edit","invoice",invoice);
	}
	/**
	 * 保存
	 * @param model
	 * @return
	 * @throws ParseException 
	 */
	
	@RequestMapping("/save.do")
	public ModelAndView save(Invoice invoice,ModelMap model,HttpServletRequest request) throws ParseException{
		String message=invoiceService.save(invoice);
		model.addAttribute("message",message);
		String id=invoice.getId();
		model.addAttribute("url","/invoice/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 *框架协议查看页面
	 * @return
	 */
	@RequestMapping("/view.do")  
	public ModelAndView view(ModelMap model,String id){
		Invoice invoice=new Invoice();
		BeanUtils.copyProperties(invoiceService.selectById(id),invoice);
		List<InvoiceDetail> list=invoiceDetailService.selectById(id);
		invoice.setInvoiceDetailList(list);
		return new ModelAndView("business/invoice/view","invoice",invoice);
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
		Invoice invoice=new Invoice();
		String message="";
		BeanUtils.copyProperties(invoiceService.selectById(id),invoice);
		if(invoice.getIs_already().equals("1")){
			message="此条数据已被引用，无法删除!";
		}else{
			message=invoiceService.delete(id);
		}
		model.addAttribute("message",message);
		model.addAttribute("url","/invoice/query.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 
	 * 校验协议编号重名
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatcode.do") 
	public void repeatName(String invoiceNo, String id,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(invoiceService.selectNoRepeat(invoiceNo,id));
	}
	
	/**
	 * 发票单公共查询
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/publicQuery.do")
	public ModelAndView publicQuery(String paymentId,Invoice invoice,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		invoice.setInvoiceNo(invoice.getInvoiceNo()!=null?invoice.getInvoiceNo().trim():null);
		invoice.setBillingStartDate(invoice.getBillingStartDate()!=null?invoice.getBillingStartDate().trim():null);
		invoice.setBillingEndDate(invoice.getBillingEndDate()!=null?invoice.getBillingEndDate().trim():null);
		String invoiceIds="";
		if(StringUtils.isNotEmpty(paymentId)){
			Payment payment=paymentService.selectById(paymentId);
			invoiceIds=payment.getInvoiceIds();
		}
		Map<String, Object> map =invoiceService.query(invoiceIds,pageNow,invoice);
		invoice.setInvoiceList((List<Invoice>)map.get("list"));
		model.addAttribute("invoice", invoice);
		model.addAttribute("paymentId", paymentId);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/invoice/publicQuery",model);
	}
	
}