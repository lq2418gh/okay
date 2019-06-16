package dkd.okay.business.contract.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.business.baseinfo.serivce.MaterialService;
import dkd.okay.business.baseinfo.serivce.SupplierCapacityService;
import dkd.okay.business.contract.bo.PurchaseContractAddress;
import dkd.okay.business.contract.bo.PurchaseContractDetail;
import dkd.okay.business.contract.bo.PurchaseContractHead;
import dkd.okay.business.contract.service.PurchaseContractAddressService;
import dkd.okay.business.contract.service.PurchaseContractDetailService;
import dkd.okay.business.contract.service.PurchaseContractHeadService;
import dkd.okay.business.tenderContract.bo.TenderContractDetail;
import dkd.okay.business.tenderContract.bo.TenderContractHead;
import dkd.okay.business.tenderContract.service.TenderContractHeadService;
import dkd.okay.system.util.Common;


/**
 * 采购合同Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/purchaseContract")
public class PurchaseContractController{
	@Autowired
	private PurchaseContractHeadService purchaseContractHeadService;
	@Autowired
	private PurchaseContractDetailService purchaseContractDetailService;
	@Autowired
	private PurchaseContractAddressService purchaseContractAddressService;
	@Autowired
	private TenderContractHeadService tenderContractHeadService;
	@Autowired
	private SupplierCapacityService supplierCapacityService;
	@Autowired
	private MaterialService materialService;
	
	//定时自动执行任务
    @Scheduled(cron="0 0 10 * * ?") 
	public void doJob() {
    	Runnable runnable = new Runnable() {
        	@Override
            public void run() {  
        		Date d=new Date();
        		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        		String dateNow=f.format(d);
        		List<PurchaseContractHead>list=purchaseContractHeadService.selectAll();
        		String expireDate;
        		for(PurchaseContractHead purchaseContractHead:list){
        			expireDate=f.format(purchaseContractHead.getExtendedExpireDate());
        			if(dateNow.compareTo(expireDate)>=0 && purchaseContractHead.getState().equals("生效")){
        				purchaseContractHead.setState("终止");
        				purchaseContractHeadService.update(purchaseContractHead);
        			}
        		}
                System.out.println("自动追查并终止超出期限的采购合同！！");  
            }  
        };  
        ScheduledExecutorService service = Executors.newSingleThreadScheduledExecutor();  
        // 第二个参数为首次执行的延时时间，第三个参数为定时执行的间隔时间  
        service.scheduleAtFixedRate(runnable, 0, 86400, TimeUnit.SECONDS);  
    }
	
	/**
	 * 分页查询
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")
	public ModelAndView query(PurchaseContractHead purchaseContractHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		purchaseContractHead.setContractNo(purchaseContractHead.getContractNo()!=null?purchaseContractHead.getContractNo().trim():null);
		purchaseContractHead.setSupplierName(purchaseContractHead.getSupplierName()!=null?purchaseContractHead.getSupplierName().trim():null);
		purchaseContractHead.setState(purchaseContractHead.getState()!=null?purchaseContractHead.getState().trim():null);
		purchaseContractHead.setEffectStartDate(purchaseContractHead.getEffectStartDate()!=null?purchaseContractHead.getEffectStartDate().trim():null);
		purchaseContractHead.setEffectEndDate(purchaseContractHead.getEffectEndDate()!=null?purchaseContractHead.getEffectEndDate().trim():null);
		purchaseContractHead.setSignStartDate(purchaseContractHead.getSignStartDate()!=null?purchaseContractHead.getSignStartDate().trim():null);
		purchaseContractHead.setSignEndDate(purchaseContractHead.getSignEndDate()!=null?purchaseContractHead.getSignEndDate().trim():null);
		Map<String, Object> map =purchaseContractHeadService.select(pageNow,purchaseContractHead);
		purchaseContractHead.setPurchaseContractList((List<PurchaseContractHead>)map.get("list"));
		model.addAttribute("purchaseContractHead", purchaseContractHead);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/contract/purchaseContract/query",model);
	}
	/**
	 * 编辑页面
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(ModelMap model,String id,String tenderContractHeadID,String type ){
		PurchaseContractHead purchaseContractHead=new PurchaseContractHead();
		if(StringUtils.isEmpty(id)){
		    purchaseContractHead.setState("新建");
		    //---------生成合同----------
		    if("check".equals(type)){
		    	//查询中标供应商信息和物资的相关信息
		    	TenderContractHead tenderContractHead = tenderContractHeadService.show(tenderContractHeadID);
		    	model.addAttribute("tenderContractHead",tenderContractHead);
		    	//放入PurchaseContractHead对象中
		    	purchaseContractHead.setEmail(tenderContractHead.getEmail());
		    	purchaseContractHead.setOpening_bank(tenderContractHead.getOpening_bank());
		    	purchaseContractHead.setSupplier(tenderContractHead.getBig_supplier());
		    	purchaseContractHead.setSupplierName(tenderContractHead.getBig_supplier_name());
		    	purchaseContractHead.setLegal_person(tenderContractHead.getLegal_person());
		    	purchaseContractHead.setLinkman(tenderContractHead.getLinkman());
		    	purchaseContractHead.setMaterialsPurchaseId(tenderContractHead.getMaterialsPurchaseId());
		    	purchaseContractHead.setPurchase_no(tenderContractHead.getPurchase_no());
		    	purchaseContractHead.setTel(tenderContractHead.getTel());
		    	purchaseContractHead.setLinkman(tenderContractHead.getLinkman());
		    	purchaseContractHead.setTenderContract(tenderContractHead.getId());
		    	purchaseContractHead.setBank_account_number(tenderContractHead.getBank_account_number());
		    	List<TenderContractDetail> list = tenderContractHead.getTenderContractDetailList();
		    	List<PurchaseContractDetail> lists=new ArrayList<PurchaseContractDetail>();
		    	for (int i = 0; i < list.size(); i++) {
		    		PurchaseContractDetail purchaseContractDetail = new PurchaseContractDetail();
		    		purchaseContractDetail.setTenderContractDetail(list.get(i).getId());
		    		purchaseContractDetail.setMainPrice(list.get(i).getMain_Price());
		    		purchaseContractDetail.setMaterial(list.get(i).getMaterial());
		    		purchaseContractDetail.setName(list.get(i).getName());
		    		purchaseContractDetail.setPurchase_detail_id(list.get(i).getPurchase_detail_id());
		    		purchaseContractDetail.setPurchase_head_id(list.get(i).getPurchase_head_id());
		    		purchaseContractDetail.setBudget_plan_detail(list.get(i).getBudget_plan_detail());
		    		purchaseContractDetail.setCentralized_department(list.get(i).getCentralized_department());
		    		purchaseContractDetail.setAccount(list.get(i).getAccount());
		    		if(StringUtils.isNotEmpty(list.get(i).getConversion())){
		    			purchaseContractDetail.setSecondaryPrice(list.get(i).getSecondary_Price());
		    			purchaseContractDetail.setConversion(Integer.parseInt(list.get(i).getConversion()));
		    		}
		    		purchaseContractDetail.setQuantity(list.get(i).getQuantity());
		    		BigDecimal main_Price = list.get(i).getMain_Price();
		    		BigDecimal quantity = list.get(i).getQuantity();
		    		BigDecimal multiply = main_Price.multiply(quantity);
		    		purchaseContractDetail.setTotalPrice(multiply);
		    		purchaseContractDetail.setSpec(list.get(i).getSpec());
		    		purchaseContractDetail.setUnit(list.get(i).getUnit());
		    		lists.add(purchaseContractDetail);
				}
		    	purchaseContractHead.setPurchaseContractDetailList(lists);
		    }
		}
		else{
			BeanUtils.copyProperties(purchaseContractHeadService.selectById(id),purchaseContractHead);
			List<PurchaseContractDetail> list1=purchaseContractDetailService.selectDetailByCId(id);
			purchaseContractHead.setPurchaseContractDetailList(list1);
			List<PurchaseContractAddress> list2=purchaseContractAddressService.selectById(id);
			purchaseContractHead.setPurchaseContractAddressList(list2);
		}
		return new ModelAndView("business/contract/purchaseContract/edit","purchaseContractHead",purchaseContractHead);
	}
	/**
	 * 保存
	 * @param model
	 * @return
	 * @throws ParseException 
	 */
	
	@RequestMapping("/save.do")
	public ModelAndView save(PurchaseContractHead purchaseContractHead,String param,ModelMap model,HttpServletRequest request) throws ParseException{
		if(StringUtils.isEmpty(purchaseContractHead.getId())){
			Date d=new Date();
		    SimpleDateFormat f = new SimpleDateFormat("yyyyMM");
		    purchaseContractHead.setYearMon(f.format(d));
		    int countNo=purchaseContractHeadService.countNo(purchaseContractHead.getYearMon());
		    String contractNo;
		    if(countNo>=1){
		    	int i=countNo+1;
		    	contractNo="NOHT"+purchaseContractHead.getYearMon()+Common.formatNumber(i, 2);
		    }else{
		    	contractNo="NOHT"+purchaseContractHead.getYearMon()+"01";
		    }
		    purchaseContractHead.setContractNo(contractNo);
		}else{
			purchaseContractDetailService.delTCD(purchaseContractHead.getId());
		}
		String message=purchaseContractHeadService.save(purchaseContractHead);
		model.addAttribute("message",message);
		String id=purchaseContractHead.getId();
		model.addAttribute("url","/purchaseContract/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 *查看页面
	 * @return
	 */
	@RequestMapping("/view.do")  
	public ModelAndView view(ModelMap model,String id){
		PurchaseContractHead purchaseContractHead=new PurchaseContractHead();
		BeanUtils.copyProperties(purchaseContractHeadService.selectById(id),purchaseContractHead);
		List<PurchaseContractDetail> list1=purchaseContractDetailService.selectDetailByCId(id);
		purchaseContractHead.setPurchaseContractDetailList(list1);
		List<PurchaseContractAddress> list2=purchaseContractAddressService.selectById(id);
		purchaseContractHead.setPurchaseContractAddressList(list2);
		return new ModelAndView("business/contract/purchaseContract/view","purchaseContractHead",purchaseContractHead);
	}
	/**
	 * 
	 * 提交
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/submit.do")
	public ModelAndView submit(ModelMap model,String id,HttpServletRequest request){
		String message=purchaseContractHeadService.submit(id);;
		model.put("message", message);
		model.put("url", "purchaseContract/query.do");
		return new ModelAndView("common/message");
	}
	
	
	/**
	 * 公共分页查询
	 * @param query
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/publicQuery.do")
	public ModelAndView publicQuery(PurchaseContractHead purchaseContractHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		purchaseContractHead.setContractNo(purchaseContractHead.getContractNo()!=null?purchaseContractHead.getContractNo().trim():null);
		purchaseContractHead.setSupplierName(purchaseContractHead.getSupplierName()!=null?purchaseContractHead.getSupplierName().trim():null);
		purchaseContractHead.setState("生效");
		purchaseContractHead.setEffectStartDate(purchaseContractHead.getEffectStartDate()!=null?purchaseContractHead.getEffectStartDate().trim():null);
		purchaseContractHead.setEffectEndDate(purchaseContractHead.getEffectEndDate()!=null?purchaseContractHead.getEffectEndDate().trim():null);
		purchaseContractHead.setSignStartDate(purchaseContractHead.getSignStartDate()!=null?purchaseContractHead.getSignStartDate().trim():null);
		purchaseContractHead.setSignEndDate(purchaseContractHead.getSignEndDate()!=null?purchaseContractHead.getSignEndDate().trim():null);
		Map<String, Object> map =purchaseContractHeadService.select(pageNow,purchaseContractHead);
		purchaseContractHead.setPurchaseContractList((List<PurchaseContractHead>)map.get("list"));
		model.addAttribute("purchaseContractHead", purchaseContractHead);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/contract/purchaseContract/publicContract",model);
	}
	/**
	 * 框架协议明细公共查询页面
	 * @return
	 */
	@RequestMapping("/publicContractDetail.do") 
	public ModelAndView publicContractDetail(String contractHead,String details,ModelMap model,HttpServletRequest request){
		List<PurchaseContractDetail> list=purchaseContractDetailService.selectByIdNotIn(contractHead,details);
		model.addAttribute("contractDetailList",list);
		return new ModelAndView("business/contract/purchaseContract/publicContractDetail",model);
	}
	
	/**
	 * 
	 * 终止
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/end.do")
	public ModelAndView end(ModelMap model,String id,HttpServletRequest request){
		PurchaseContractHead purchaseContractHead=new PurchaseContractHead();
		BeanUtils.copyProperties(purchaseContractHeadService.selectById(id),purchaseContractHead);
		purchaseContractHead.setState("终止");
		purchaseContractHeadService.update(purchaseContractHead);
		String message="修改状态完成！";
		model.put("message", message);
		model.put("url", "purchaseContract/query.do");
		return new ModelAndView("common/message");
	}
	
	/**
	 *判断供应商里面有没有物资）
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(value="/viewSupplierCapacity.do",produces="text/html;charset=UTF-8")
	public String viewSupplierCapacity(String supplierId,String materialIds,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		if(StringUtils.isEmpty(supplierId)){
			return "yes";
		}else{
			List<SupplierCapacity> viewSupplierCapacity = supplierCapacityService.viewSupplierCapacity(supplierId,materialIds);
			String[] split = materialIds.split(",");
			Set<String> set= new HashSet<String>(Arrays.asList(split));
			if(viewSupplierCapacity==null||viewSupplierCapacity.size()<set.size()){
				//-----得到不符合的物资Name-----
				List<SupplierCapacity> findSMidList=supplierCapacityService.findSMid(supplierId);
				String strings[]=new String[findSMidList.size()];
				for (int i=0;i<findSMidList.size();i++) {
					strings[i]=findSMidList.get(i).getMateriel_id();
				}
				List<String> noMaterialIds = new ArrayList<String>();
				outer:
				for(String str : split){
					for(String temp : strings){
						if(temp.equals(str)){
							continue outer;
						}
					}
					noMaterialIds.add(str);
				}
				List<Material> noMaterialNameList=materialService.findNoMaterialName(noMaterialIds);
				String no="";
				for (Material material : noMaterialNameList) {
					String name = material.getName();
					no+=name+" ";
				}
				return no;//不符合
			}
		}
		return "yes";//符合
	}
	
}
