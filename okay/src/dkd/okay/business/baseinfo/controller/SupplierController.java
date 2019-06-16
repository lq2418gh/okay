package dkd.okay.business.baseinfo.controller;

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

import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.Supplier;
import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.business.baseinfo.serivce.SupplierService;
import dkd.okay.system.service.FlowsetServiceImpl;
import dkd.okay.system.util.downloadFile;

/**
 * @author:linss
 * @date:2017年8月21日
 */
@Controller
@RequestMapping(value="/supplier")
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private FlowsetServiceImpl flowsetServiceImpl;
	
	/**
	 * 供应商分页查询
	 * @param supplier
	 * @param model
	 * @param request
	 * @return
	 * @date:2017年8月22日
	 * @author:linss
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/supplierQuery.do")  
	public ModelAndView supplierQuery(Supplier supplier, ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		supplier.setSupplier_no(supplier.getSupplier_no()!=null?supplier.getSupplier_no().trim():null);
		supplier.setSupplier_name(supplier.getSupplier_name()!=null?supplier.getSupplier_name().trim():null);
		supplier.setProvince(supplier.getProvince()!=null?supplier.getProvince().trim():null);
		supplier.setSupplier_type(supplier.getSupplier_type()!=null?supplier.getSupplier_type().trim():null);
		supplier.setState(supplier.getState()!=null?supplier.getState().trim():null);
		
		Map<String, Object> map = supplierService.query(supplier,pageNow);
		supplier.setSupplierList((List<Supplier>) map.get("supplierList"));
		model.addAttribute("supplier", supplier);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/baseinfo/supplier/query",model);   
	}
	/**
	 * 编辑供应商
	 * @param model
	 * @param supplierId
	 * @return
	 * @date:2017年8月22日
	 * @author:linss
	 */
	@RequestMapping("/editSupplier.do")
	public ModelAndView editSupplier( ModelMap model,String supplierId){
		Supplier supplier = new Supplier();
		if(StringUtils.isNotEmpty(supplierId)){
			BeanUtils.copyProperties(supplierService.selectSupplierById(supplierId),supplier);
		}else{
			supplier.setState("新建");
		}
		return new ModelAndView("business/baseinfo/supplier/supplierEdit","supplier", supplier);
	}
	@RequestMapping("/viewSupplier.do")
	public ModelAndView viewSupplier( ModelMap model,String supplierNo){
		/*Supplier supplier = new Supplier();
		if(StringUtils.isNotEmpty(supplierId)){
			BeanUtils.copyProperties(supplierService.selectSupplierById(supplierId),supplier);
		}  */
		boolean flag = flowsetServiceImpl.checkRole(supplierNo);
		model.put("flag", flag);
		Supplier localSupplier = supplierService.getSupplierByNo(supplierNo);
		model.put("supplier", localSupplier);
		return new ModelAndView("business/baseinfo/supplier/supplierView",model );
	}
	//保存
	@RequestMapping("/saveSupplier.do")
	public ModelAndView saveSupplier(ModelMap model,Supplier supplier,HttpServletRequest request){
		supplierService.saveSupplier(supplier);
		model.put("message", "保存成功");
		model.put("url", "supplier/supplierQuery.do");
		return new ModelAndView("common/message");
	}
	//删除供应商
	@RequestMapping("/deleteSupplier.do")
	public ModelAndView deleteWarehouse(String supplierId,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		supplierService.deleteSupplier(supplierId);
		response.getWriter().print("删除成功");
		return new ModelAndView(new RedirectView ("supplierQuery.do"));
	}
	
	@RequestMapping("/findSupplierByName.do")
	public void findSupplierByName(String supplier_name,String id,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(supplierService.findSupplierByName(supplier_name,id));
	}
	
	@RequestMapping("/supplierTj.do")
	public ModelAndView supplierTj(ModelMap model,String id,HttpServletRequest request){
		supplierService.supplierTj(id);
		model.put("message", "提交成功");
		model.put("url", "supplier/supplierQuery.do");
		return new ModelAndView("common/message");
	}
	//根据供应商id获取供应商产能
	@RequestMapping("viewSupplierCapacity.do")
	public ModelAndView viewSupplierCapacity( ModelMap model,String supplierId){
		SupplierCapacity supplierCapacity = new SupplierCapacity();
		supplierCapacity.setSupplier_id(supplierId);
		supplierCapacity.setCapacityList(supplierService.getSupplierCapacity(supplierId));
		model.addAttribute("supplierCapacity",supplierCapacity );
		return new ModelAndView("business/baseinfo/supplier/supplierCapacity");
	}
	@RequestMapping("editSupplierCapacity.do")
	public ModelAndView editSupplierCapacity( ModelMap model,String supplierId){
		SupplierCapacity supplierCapacity = new SupplierCapacity();
		supplierCapacity.setSupplier_id(supplierId);
		supplierCapacity.setCapacityList(supplierService.getSupplierCapacity(supplierId));
		model.addAttribute("supplierCapacity",supplierCapacity );
		return new ModelAndView("business/baseinfo/supplier/editSupplierCapacity");
	}
	/**
	 * 可使用供应商编辑提交
	 */
	@RequestMapping("saveSupplierTj.do")
	public ModelAndView saveSupplierTj(ModelMap model,Supplier supplier,HttpServletRequest request){
		supplierService.saveSupplierTj(supplier);
		model.put("message", "保存成功");
		model.put("url", "supplier/supplierQuery.do");
		return new ModelAndView("common/message");
	}
	/**
	 * 跳转公共页面模糊分页查询供应商
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/publicSupplierQuery.do")  
	public ModelAndView publicSupplierQuery(Supplier supplier, ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		supplier.setState("可使用");
		supplier.setSupplier_no(supplier.getSupplier_no()!=null?supplier.getSupplier_no().trim():null);
		supplier.setSupplier_name(supplier.getSupplier_name()!=null?supplier.getSupplier_name().trim():null);
		supplier.setProvince(supplier.getProvince()!=null?supplier.getProvince().trim():null);
		supplier.setSupplier_type(supplier.getSupplier_type()!=null?supplier.getSupplier_type().trim():null);
		Map<String, Object> map = supplierService.query(supplier,pageNow);
		supplier.setSupplierList((List<Supplier>) map.get("supplierList"));
		model.addAttribute("supplier", supplier);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/baseinfo/supplier/publicSupplier",model);   
	}
	/*根据供应商id获取供应商产能
	 * 跳转公共页面
	 */
	@RequestMapping("publicViewSupplierCapacity.do")
	public ModelAndView publicViewSupplierCapacity( ModelMap model,String supplierId){
		SupplierCapacity supplierCapacity = new SupplierCapacity();
		supplierCapacity.setSupplier_id(supplierId);
		supplierCapacity.setCapacityList(supplierService.getSupplierCapacity(supplierId));
		model.addAttribute("supplierCapacity",supplierCapacity );
		return new ModelAndView("business/baseinfo/supplier/publicSupplierCapacity");
	}
	/**
	 * 下载供应商导入模板
	 */
	@RequestMapping("/downloadSupplierTemplate.do")  
	public void downloadSupplierTemplate(HttpServletRequest request,HttpServletResponse response){
		//获取项目路径
		String path = request.getSession().getServletContext().getRealPath("/");
		downloadFile df = new downloadFile();
		try {
			df.download(path+"upfile/baseinfo/", "供应商导入模板.xlsx", "application/octet-stream", response, request);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 编辑供应商信息上传页
	 */
	@RequestMapping("/editImpSupplier.do")  
	public ModelAndView editImpSupplier( ModelMap model){
		ExcleFileForm excleFileForm = new ExcleFileForm();
		return new ModelAndView("business/baseinfo/supplier/impSupplier","excleFileForm", excleFileForm); 
	}
	/**
	 * 保存上传供应商信息
	 */
	@RequestMapping("/saveImpSupplier.do")  
	public ModelAndView saveImpSupplier(HttpServletRequest request,ExcleFileForm excleFileForm, ModelMap model) throws IOException{
		model.addAttribute("message", supplierService.saveSupplierExcle(request,excleFileForm));
		model.addAttribute("url","supplier/supplierQuery.do");
		return new ModelAndView("common/message");  
	}
}
