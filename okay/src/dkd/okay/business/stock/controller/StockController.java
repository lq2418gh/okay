package dkd.okay.business.stock.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.stock.bo.Stock;
import dkd.okay.business.stock.service.StockService;

@Controller
@RequestMapping(value="/stock")
@Transactional
public class StockController {

	@Autowired
	private StockService stockService;
	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")
	public ModelAndView query(ModelMap model,HttpServletRequest request,Stock stock,String pageNow){
		stock.setEntry_date_begin(StringUtils.isNotEmpty(stock.getEntry_date_begin())?stock.getEntry_date_begin().trim():null);
		stock.setEntry_date_end(StringUtils.isNotEmpty(stock.getEntry_date_end())?stock.getEntry_date_end().trim():null);
		stock.setStorage_no(StringUtils.isNotEmpty(stock.getStorage_no())?stock.getStorage_no().trim():null);
		stock.setOrder_no(StringUtils.isNotEmpty(stock.getOrder_no())?stock.getOrder_no().trim():null);
		stock.setName(StringUtils.isNotEmpty(stock.getName())?stock.getName().trim():null);
		stock.setWarehouse_name(StringUtils.isNotEmpty(stock.getWarehouse_name())?stock.getWarehouse_name().trim():null);
		stock.setSupplier_name(StringUtils.isNotEmpty(stock.getSupplier_name())?stock.getSupplier_name().trim():null);
		stock.setUser_name(StringUtils.isNotEmpty(stock.getUser_name())?stock.getUser_name().trim():null);
		stock.setFrame_no(StringUtils.isNotEmpty(stock.getFrame_no())?stock.getFrame_no().trim():null);
		stock.setContract_no(StringUtils.isNotEmpty(stock.getContract_no())?stock.getContract_no().trim():null);
		Map<String, Object> map = stockService.select(pageNow, stock);
		List<Stock> list =(List<Stock>) map.get("list");
		model.addAttribute("list", list);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("stock", stock);//用来显示上一次查询条件
		return new ModelAndView("business/instore/stock/query",model);
	}

	
}
