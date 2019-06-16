package dkd.okay.business.materialPurchase.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import dkd.okay.business.budget.service.PlanDetailService;
import dkd.okay.business.materialPurchase.bo.MaterialPurchaseDetail;
import dkd.okay.business.materialPurchase.bo.MaterialPurchaseHead;
import dkd.okay.business.materialPurchase.service.MaterialPurchaseDetailService;
import dkd.okay.business.materialPurchase.service.MaterialPurchaseHeadService;
import dkd.okay.business.stock.service.StockService;
import dkd.okay.system.bo.User;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;


@Controller
@RequestMapping(value="/materialPurchase")
@Transactional
public class MaterialPurchaseCotroller {
	
	@Autowired
	private MaterialPurchaseDetailService materialPurchaseDetailService;
	@Autowired
	private MaterialPurchaseHeadService materialPurchaseHeadService;
	@Autowired
	private PlanDetailService planDetailService;
	@Autowired
	private StockService stockService;
	
	
	/**
	 * 分页模糊
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/query.do")
	public ModelAndView query(ModelMap model,String pageNow,PageUtil pageUtil,MaterialPurchaseHead mph,HttpServletRequest request) {
		mph.setPurchase_no(!StringUtils.isEmpty(mph.getPurchase_no())?mph.getPurchase_no().trim():null);
		mph.setInputDateBegin(!StringUtils.isEmpty(mph.getInputDateBegin())?mph.getInputDateBegin().trim():null);
		mph.setInputDateEnd(!StringUtils.isEmpty(mph.getInputDateEnd())?mph.getInputDateEnd().trim():null);
		mph.setPtlBeginTime(!StringUtils.isEmpty(mph.getPtlBeginTime())?mph.getPtlBeginTime().trim():null);
		mph.setPtlEndTime(!StringUtils.isEmpty(mph.getPtlEndTime())?mph.getPtlEndTime().trim():null);
		mph.setState(!StringUtils.isEmpty(mph.getState())?mph.getState().trim():null);
		mph.setPurchase_type(!StringUtils.isEmpty(mph.getPurchase_type())?mph.getPurchase_type().trim():null);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyId = user.getUserInfo().getCompany().getCompanyId();//部门id
		model.put("isManager", companyId.equals("0") || companyId.equals("50b765068857433c9199b5cfe4"));
		if(!companyId.equals("0") && !companyId.equals("50b765068857433c9199b5cfe4")){
			mph.setCentralized_department(companyId);
		}
		Map<String, Object>  map = materialPurchaseHeadService.query(mph,pageNow, pageUtil);
		List<MaterialPurchaseHead> materialPurchaseHeadList=(List<MaterialPurchaseHead>) map.get("materialPurchaseHeadList");
		model.addAttribute("MaterialPurchaseHeadList", materialPurchaseHeadList);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("materialPurchaseHead",mph);
		return new ModelAndView("business/materialPurchase/query",model);
	}
	
	/**
	 *删除
	 */
	@RequestMapping("/deleteMaterialPurchase.do") 
	public ModelAndView deleteMaterialPurchase(String id,ModelMap model) {
		model.addAttribute("message",materialPurchaseHeadService.deleteMaterialPurchaseHead(id));
		model.addAttribute("url","materialPurchase/query.do");
		return new ModelAndView("common/message"); 
	}
	
	/**
	 * 跳添加页面
	 */
	@RequestMapping(value="/editAndEcho.do")
	public ModelAndView edit(String id,ModelMap model,String type) {
		MaterialPurchaseHead mp = new MaterialPurchaseHead();
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyName = user.getUserInfo().getCompany().getCompanyName();
		String companyId = user.getUserInfo().getCompany().getCompanyId();
		//根据当前登录用户部门id查询计划预算明细表
		model.addAttribute("planDetail",planDetailService.selectBPD(companyId));
		if(StringUtils.isEmpty(id)){
			Date date = new Date();
			mp.setInput_date(date);
			mp.setInput_userid(user.getUserId());
			mp.setRealName(user.getUserInfo().getRealName());
			mp.setCentralized_department(companyId);
			mp.setPurchase_department(companyId);
			mp.setCompany_name(companyName);
			mp.setPurchase_type(type);
			model.addAttribute("materialPurchaseHead", mp);
		}else{
			MaterialPurchaseHead mph =  materialPurchaseHeadService.findMP(id);
			//查询库存数量
			List<MaterialPurchaseDetail> list = mph.getMaterialPurchaseDetailList();
			for (MaterialPurchaseDetail materialPurchaseDetail : list) {
				materialPurchaseDetail.setStock(stockService.selectStockByMaterial(materialPurchaseDetail.getMaterial())+"");
			}
			mph.setMaterialPurchaseDetailList(list);
			model.addAttribute("materialPurchaseHead", mph);
		}
		
		return new ModelAndView("business/materialPurchase/edit",model);
		
	}
	
	/**
	 *查看
	 */
	@RequestMapping("/view.do") 
	public ModelAndView view(String id,ModelMap model) {
		MaterialPurchaseHead mp =  materialPurchaseHeadService.findMP(id);
		//查询库存数量
		List<MaterialPurchaseDetail> list = mp.getMaterialPurchaseDetailList();
		for (MaterialPurchaseDetail materialPurchaseDetail : list) {
			materialPurchaseDetail.setStock(stockService.selectStockByMaterial(materialPurchaseDetail.getMaterial())+"");
		}
		mp.setMaterialPurchaseDetailList(list);
		model.put("materialPurchase", mp);
		return new ModelAndView("business/materialPurchase/view",model); 
	}
	
	/**
	 *提交更新单据状态
	 */
	@ResponseBody
	@RequestMapping(value="/commit.do")
	public String commit(String id,String purchase_type){
		materialPurchaseHeadService.updateState(id);
		if("voluntarily".equals(purchase_type)){
			//回填计划预算金额
			MaterialPurchaseHead mp =  materialPurchaseHeadService.findMP(id);
			List<MaterialPurchaseDetail>  list = mp.getMaterialPurchaseDetailList();
			for (MaterialPurchaseDetail materialPurchaseDetail : list) {
				planDetailService.updateResidualAmountStorage(materialPurchaseDetail.getBudget_plan_detail(), materialPurchaseDetail.getMain_Price().multiply(materialPurchaseDetail.getMain_Quantity()));
			}
		}
		return null;
	}
	
	/**
	 *保存
	 */
	@RequestMapping("/save.do") 
	public ModelAndView save(MaterialPurchaseHead materialPurchaseHead,ModelMap model,String type) {
		String message ="";
		if(StringUtils.isEmpty(materialPurchaseHead.getId())){
			Date date = new Date();
			SimpleDateFormat s=new SimpleDateFormat("yyyyMMdd");
			String purchase_no="WZCG"+s.format(date);
			//根据部门id和查询明细表倒叙取出编号
			String purchaseMaxNo = materialPurchaseHeadService.selectByDepartment();
			if(StringUtils.isEmpty(purchaseMaxNo)){ 
				purchase_no=purchase_no+"001";
			}else {
				int i = Integer.parseInt(purchaseMaxNo.substring(12, 15))+1;
				String No = Common.formatNumber(i, 3);
				purchase_no=purchase_no+No;
			}
			materialPurchaseHead.setPurchase_no(purchase_no);
			message = materialPurchaseHeadService.insertMaterialPurchase(materialPurchaseHead);
		}else{
			materialPurchaseHeadService.update(materialPurchaseHead);
			materialPurchaseDetailService.deleteMaterialPurchaseDetail(materialPurchaseHead.getId());
			message = materialPurchaseDetailService.bathInsert(materialPurchaseHead);
		}
		if("1".equals(type)){
			this.commit(materialPurchaseHead.getId(),materialPurchaseHead.getPurchase_type());
			message = "提交成功"+materialPurchaseHead.getId();
		}
		model.addAttribute("message",message.substring(0, 4));
		model.addAttribute("url","materialPurchase/view.do?id="+message.substring(4));
		return new ModelAndView("common/message"); 
	}

	/**
	 * 分页模糊
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/publicMaterialPurchase2.do")
	public ModelAndView publicMaterialPurchase2(ModelMap model,String pageNow,PageUtil pageUtil,MaterialPurchaseHead mph,HttpServletRequest request) {
		mph.setPurchase_no(!StringUtils.isEmpty(mph.getPurchase_no())?mph.getPurchase_no().trim():null);
		mph.setInputDateBegin(!StringUtils.isEmpty(mph.getInputDateBegin())?mph.getInputDateBegin().trim():null);
		mph.setInputDateEnd(!StringUtils.isEmpty(mph.getInputDateEnd())?mph.getInputDateEnd().trim():null);
		mph.setPtlBeginTime(!StringUtils.isEmpty(mph.getPtlBeginTime())?mph.getPtlBeginTime().trim():null);
		mph.setPtlEndTime(!StringUtils.isEmpty(mph.getPtlEndTime())?mph.getPtlEndTime().trim():null);
		mph.setState("审批通过");
		mph.setPurchase_type("normal");
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String companyId = user.getUserInfo().getCompany().getCompanyId();//部门id
		model.put("isManager", companyId.equals("0") || companyId.equals("50b765068857433c9199b5cfe4"));
		if(!companyId.equals("0") && !companyId.equals("50b765068857433c9199b5cfe4")){
			mph.setCentralized_department(companyId);
		}
		Map<String, Object>  map = materialPurchaseHeadService.query(mph,pageNow, pageUtil);
		List<MaterialPurchaseHead> materialPurchaseHeadList=(List<MaterialPurchaseHead>) map.get("materialPurchaseHeadList");
		model.addAttribute("MaterialPurchaseHeadList", materialPurchaseHeadList);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("materialPurchaseHead",mph);
		return new ModelAndView("business/materialPurchase/publicMaterialPurchase2",model);
	}
	/**
	 * 物资审批明细公共查询
	 */
	@RequestMapping(value="/publicDetail.do")
	public ModelAndView publicDetail(String id,String detailId,String purchase_detail_ids,ModelMap model){
		List<MaterialPurchaseDetail> list=new  ArrayList<MaterialPurchaseDetail>();
		for(int i=0;i<id.split(",").length;i++){
			int count=0;
			String purchase_head_id=id.split(",")[i];
			List<MaterialPurchaseDetail> list1=materialPurchaseDetailService.selectById(purchase_head_id,purchase_detail_ids);
			for(MaterialPurchaseDetail m:list1){
				for(int x=0;x<detailId.split(",").length;x++){
					if(m.getId().equals(detailId.split(",")[x])){
						count=1;
					}else{
						count=0;
					}
					if(count==1){
						break;
					}
				}
				if(count==0){
					list.add(m);
				}
			}
		}
		model.addAttribute("materialPurchaseDetailList",list);
		model.addAttribute("type","");
		return  new ModelAndView("business/materialPurchase/publicDetail",model);
		
	}
	
	/**
	 * 物资审批明细公共查询
	 */
	@RequestMapping(value="/publicDetailByFrameId.do")
	public ModelAndView publicDetailByFrameId(String frame_head,String materialsPurchaseIds,String purchase_detail_ids,String order_frame,ModelMap model){
		List<MaterialPurchaseDetail> list=materialPurchaseDetailService.selectByFrameId(frame_head,materialsPurchaseIds, purchase_detail_ids,order_frame);
		model.addAttribute("materialPurchaseDetailList",list);
		model.addAttribute("type","frame");
		return  new ModelAndView("business/materialPurchase/publicDetail",model);
		
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