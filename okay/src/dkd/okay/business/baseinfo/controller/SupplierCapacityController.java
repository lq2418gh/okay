package dkd.okay.business.baseinfo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.business.baseinfo.serivce.SupplierCapacityService;

/**
 * @author:linss
 * @date:2017年8月25日
 */
@Controller
@RequestMapping(value = "/supplierCapacity")
public class SupplierCapacityController {
	@Autowired
	private SupplierCapacityService supplierCapacityService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/supplierCapacityQuery.do")
	public ModelAndView supplierCapacityQuery(ModelMap model,HttpServletRequest request,SupplierCapacity supplierCapacity){
		String pageNow = request.getParameter("pageNow");
		supplierCapacity.setWzcode(supplierCapacity.getWzcode()!=null?supplierCapacity.getWzcode().trim():null);
		supplierCapacity.setWzname(supplierCapacity.getWzname()!=null?supplierCapacity.getWzname().trim():null);
		supplierCapacity.setSupplier_id(supplierCapacity.getSupplier_id()!=null?supplierCapacity.getSupplier_id().trim():null);
		Map<String, Object> map = supplierCapacityService.query(supplierCapacity,pageNow);
		supplierCapacity.setCapacityList((List<SupplierCapacity>) map.get("supplierCapacityList"));
		model.addAttribute("supplierCapacity", supplierCapacity);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/baseinfo/supplier/supplierCapacity",model);
	}
	
	@RequestMapping("/supplierCapacitySave.do")
	public ModelAndView supplierCapacitySave(ModelMap model,HttpServletRequest request,SupplierCapacity supplierCapacity){
		supplierCapacityService.save(supplierCapacity);
		model.put("message", "保存成功");
		model.put("url", "supplier/viewSupplierCapacity.do?supplierId="+supplierCapacity.getSupplier_id());
		return new ModelAndView("common/message");
	}
	
	
}
