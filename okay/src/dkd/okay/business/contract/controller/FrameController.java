package dkd.okay.business.contract.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
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
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.contract.bo.FrameAddress;
import dkd.okay.business.contract.bo.FrameDetail;
import dkd.okay.business.contract.bo.FrameHead;
import dkd.okay.business.contract.service.FrameAddressService;
import dkd.okay.business.contract.service.FrameDetailService;
import dkd.okay.business.contract.service.FrameHeadService;
import dkd.okay.business.tender.bo.TenderFrameDetail;
import dkd.okay.business.tender.bo.TenderFrameHead;
import dkd.okay.business.tender.service.TenderFrameHeadService;
import dkd.okay.system.util.Common;


/**
 * 框架协议Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/frame")
public class FrameController{
	@Autowired
	private FrameHeadService frameHeadService;
	@Autowired
	private FrameDetailService frameDetailService;
	@Autowired
	private FrameAddressService frameAddressService;
	@Autowired
	private TenderFrameHeadService tenderFrameHeadService;
	
	//定时自动执行任务
    @Scheduled(cron="0 0 10 * * ?") 
	public void doJob() {
    	Runnable runnable = new Runnable() {
        	@Override
            public void run() {  
        		Date d=new Date();
        		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        		String dateNow=f.format(d);
        		List<FrameHead>list=frameHeadService.selectAll();
        		String expireDate;
        		for(FrameHead frameHead:list){
        			expireDate=f.format(frameHead.getExtendedExpireDate());
        			if(dateNow.compareTo(expireDate)>=0 && frameHead.getState().equals("生效")){
        				frameHead.setState("终止");
        				frameHeadService.update(frameHead);
        			}
        		}
                System.out.println("自动追查并终止超出期限的协议！！");  
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
	public ModelAndView query(FrameHead frameHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		frameHead.setFrameNo(frameHead.getFrameNo()!=null?frameHead.getFrameNo().trim():null);
		frameHead.setSupplierName(frameHead.getSupplierName()!=null?frameHead.getSupplierName().trim():null);
		frameHead.setState(frameHead.getState()!=null?frameHead.getState().trim():null);
		frameHead.setEffectStartDate(frameHead.getEffectStartDate()!=null?frameHead.getEffectStartDate().trim():null);
		frameHead.setEffectEndDate(frameHead.getEffectEndDate()!=null?frameHead.getEffectEndDate().trim():null);
		frameHead.setSignStartDate(frameHead.getSignStartDate()!=null?frameHead.getSignStartDate().trim():null);
		frameHead.setSignEndDate(frameHead.getSignEndDate()!=null?frameHead.getSignEndDate().trim():null);
		Map<String, Object> map =frameHeadService.select(pageNow,frameHead);
		frameHead.setFrameHeadList((List<FrameHead>)map.get("list"));
		model.addAttribute("frameHead", frameHead);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/contract/frame/query",model);
	}
	/**
	 * 计划预算编辑页面
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(ModelMap model,String id,String type,String tenderFrameHeadID){
		FrameHead frameHead=new FrameHead();
		if(StringUtils.isEmpty(id)){
		    frameHead.setState("新建");
		    //生成框架协议
		    if("check".equals(type)){
		    	//查询中标供应商信息和物资的相关信息
		    	TenderFrameHead tenderFrameHead=tenderFrameHeadService.show(tenderFrameHeadID);
		    	model.addAttribute("tenderFrameHead",tenderFrameHead);
		    	//放入FrameHead对象中
		    	frameHead.setTenderFrame(tenderFrameHead.getId());
		    	frameHead.setSupplier(tenderFrameHead.getBig_supplier());
		    	frameHead.setSupplierName(tenderFrameHead.getBig_supplier_name());
		    	frameHead.setEmail(tenderFrameHead.getEmail());
		    	frameHead.setLinkman(tenderFrameHead.getLinkman());
		    	frameHead.setOpening_bank(tenderFrameHead.getOpening_bank());
		    	frameHead.setBank_account_number(tenderFrameHead.getBank_account_number());
		    	frameHead.setTel(tenderFrameHead.getTel());
		    	frameHead.setLegal_person(tenderFrameHead.getLegal_person());
		    	List<TenderFrameDetail> list = tenderFrameHead.getTenderFrameDetailList();
		    	List<FrameDetail> lists=new ArrayList<FrameDetail>();
		    	for (int i = 0; i < list.size(); i++) {
		    		FrameDetail frameDetail=new FrameDetail();
		    		frameDetail.setTenderFrameDetail(list.get(i).getId());
		    		frameDetail.setMainPrice(list.get(i).getMain_Price());
		    		frameDetail.setMaterial(list.get(i).getMaterial());
		    		frameDetail.setName(list.get(i).getName());
		    		//判断有箱容的时候再赋值
		    		if(StringUtils.isNotEmpty(list.get(i).getConversion())){
		    			frameDetail.setSecondaryPrice(list.get(i).getSecondary_Price());
		    			frameDetail.setConversion(Integer.parseInt(list.get(i).getConversion()));
		    		}
		    		frameDetail.setSpec(list.get(i).getSpec());
		    		frameDetail.setUnit(list.get(i).getUnit());
		    		lists.add(frameDetail);
				}
		    	frameHead.setFrameDetailList(lists);
		    }
		}
		else{
			BeanUtils.copyProperties(frameHeadService.selectById(id),frameHead);
			List<FrameDetail> list1=frameDetailService.selectById(id,null);
			frameHead.setFrameDetailList(list1);
			List<FrameAddress> list2=frameAddressService.selectById(id);
			frameHead.setFrameAddressList(list2);
		}
		return new ModelAndView("business/contract/frame/edit","frameHead",frameHead);
	}
	/**
	 * 保存
	 * @param model
	 * @return
	 * @throws ParseException 
	 */
	
	@RequestMapping("/save.do")
	public ModelAndView save(FrameHead frameHead,String param,ModelMap model,HttpServletRequest request) throws ParseException{
		if(StringUtils.isEmpty(frameHead.getId())){
			Date d=new Date();
		    SimpleDateFormat f = new SimpleDateFormat("yyyyMM");
		    frameHead.setYearMon(f.format(d));
		    int countNo=frameHeadService.countNo(frameHead.getYearMon());
		    String frameNo;
		    if(countNo>=1){
		    	int i=countNo+1;
		    	frameNo="NO"+frameHead.getYearMon()+Common.formatNumber(i, 2);
		    }else{
		    	frameNo="NO"+frameHead.getYearMon()+"01";
		    }
		    frameHead.setFrameNo(frameNo);
		}
		String message=frameHeadService.save(frameHead);
		model.addAttribute("message",message);
		String id=frameHead.getId();
		model.addAttribute("url","/frame/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	
	/**
	 *框架协议查看页面
	 * @return
	 */
	@RequestMapping("/view.do")  
	public ModelAndView view(ModelMap model,String id){
		FrameHead frameHead=new FrameHead();
		BeanUtils.copyProperties(frameHeadService.selectById(id),frameHead);
		List<FrameDetail> list1=frameDetailService.selectById(id,null);
		frameHead.setFrameDetailList(list1);
		List<FrameAddress> list2=frameAddressService.selectById(id);
		frameHead.setFrameAddressList(list2);
		return new ModelAndView("business/contract/frame/view","frameHead",frameHead);
	}
	/**
	 * 
	 * 校验协议编号重名
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/repeatcode.do") 
	public void repeatName(String frameNo, String id,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(frameHeadService.selectNoRepeat(frameNo,id));
	}
	/**
	 * 
	 * 提交
	 * @param name
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/submit.do")
	public ModelAndView submit(ModelMap model,String id, HttpServletRequest request){
		String message=frameHeadService.submit(id);
		model.put("message", message);
		model.put("url", "frame/query.do");
		return new ModelAndView("common/message");
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
		FrameHead frameHead=new FrameHead();
		BeanUtils.copyProperties(frameHeadService.selectById(id),frameHead);
		frameHead.setState("终止");
		frameHeadService.update(frameHead);
		String message="修改状态完成！";
		model.put("message", message);
		model.put("url", "frame/query.do");
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
	public ModelAndView publicQuery(FrameHead frameHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		frameHead.setFrameNo(frameHead.getFrameNo()!=null?frameHead.getFrameNo().trim():null);
		frameHead.setSupplierName(frameHead.getSupplierName()!=null?frameHead.getSupplierName().trim():null);
		frameHead.setState("生效");
		frameHead.setEffectStartDate(frameHead.getEffectStartDate()!=null?frameHead.getEffectStartDate().trim():null);
		frameHead.setEffectEndDate(frameHead.getEffectEndDate()!=null?frameHead.getEffectEndDate().trim():null);
		frameHead.setSignStartDate(frameHead.getSignStartDate()!=null?frameHead.getSignStartDate().trim():null);
		frameHead.setSignEndDate(frameHead.getSignEndDate()!=null?frameHead.getSignEndDate().trim():null);
		Map<String, Object> map =frameHeadService.selectPublic(pageNow,frameHead);
		frameHead.setFrameHeadList((List<FrameHead>)map.get("list"));
		model.addAttribute("frameHead", frameHead);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/contract/frame/publicFrame",model);
	}
	/**
	 * 框架协议明细公共查询页面
	 * @return
	 */
	@RequestMapping("/publicFrameDetail.do") 
	public ModelAndView publicFrameDetail(String frameHead,String details,ModelMap model,HttpServletRequest request){
		List<FrameDetail> list=frameDetailService.selectById(frameHead,details);
		model.addAttribute("frameDetailList",list);
		return new ModelAndView("business/contract/frame/publicFrameDetail",model);
	}
}