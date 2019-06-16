package dkd.okay.business.tender.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataValidationConstraint;
import org.apache.poi.ss.usermodel.DataValidationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.business.baseinfo.bo.Supplier;
import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.business.baseinfo.serivce.MaterialService;
import dkd.okay.business.baseinfo.serivce.SupplierCapacityService;
import dkd.okay.business.baseinfo.serivce.SupplierService;
import dkd.okay.business.contract.bo.FrameHead;
import dkd.okay.business.contract.service.FrameHeadService;
import dkd.okay.business.tender.bo.TenderFrameDetail;
import dkd.okay.business.tender.bo.TenderFrameHead;
import dkd.okay.business.tender.bo.TenderFrameOfferHead;
import dkd.okay.business.tender.bo.TenderFrameSupplier;
import dkd.okay.business.tender.service.TenderFrameDetailService;
import dkd.okay.business.tender.service.TenderFrameHeadService;
import dkd.okay.business.tender.service.TenderFrameOfferHeadService;
import dkd.okay.business.tender.service.TenderFrameSupplierService;
import dkd.okay.system.bo.FileInfo;
import dkd.okay.system.service.FileInfoServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.downloadFile;
import dkd.okay.system.util.email.MailSend;



@Controller
@RequestMapping(value="/tender")
@Transactional
public class TenderCotroller {
	
	@Autowired
	private TenderFrameHeadService tenderFrameHeadService;
	@Autowired
	private TenderFrameDetailService tenderFrameDetailService;
	@Autowired
	private TenderFrameOfferHeadService tenderFrameOfferHeadService;
	@Autowired
	private TenderFrameSupplierService tenderFrameSupplierService;	
	@Autowired
	private FileInfoServiceImpl fileInfoServiceImpl;
	@Autowired
	private SupplierCapacityService supplierCapacityService;
	@Autowired
	private FrameHeadService FrameHeadService;
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private MaterialService materialService;
	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/query.do")
	public ModelAndView query(TenderFrameHead tenderFrameHead, ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		tenderFrameHead.setTender_no(tenderFrameHead.getTender_no()!=null?tenderFrameHead.getTender_no().trim():null);
		tenderFrameHead.setBig_supplier_name(tenderFrameHead.getBig_supplier_name()!=null?tenderFrameHead.getBig_supplier_name().trim():null);
		tenderFrameHead.setState(tenderFrameHead.getState()!=null?tenderFrameHead.getState().trim():null);
		tenderFrameHead.setRelease_date_begin(tenderFrameHead.getRelease_date_begin()!=null?tenderFrameHead.getRelease_date_begin().trim():null);
		tenderFrameHead.setRelease_date_end(tenderFrameHead.getRelease_date_end()!=null?tenderFrameHead.getRelease_date_end().trim():null);
		tenderFrameHead.setOpen_date_begin(tenderFrameHead.getOpen_date_begin()!=null?tenderFrameHead.getOpen_date_begin().trim():null);
		tenderFrameHead.setOpen_date_end(tenderFrameHead.getOpen_date_end()!=null?tenderFrameHead.getOpen_date_end().trim():null);
		Map<String, Object> map = tenderFrameHeadService.select(pageNow, tenderFrameHead);
		List<TenderFrameHead> list =(List<TenderFrameHead>) map.get("list");
		model.addAttribute("list", list);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("tenderFrameHead", tenderFrameHead);//用来显示上一次查询条件
		return new ModelAndView("business/tender/tenderManagement/query",model);
	}
	/**
	 * 添加回显和编辑回显
	 */
	@RequestMapping("/editAndEcho.do")
	public ModelAndView editAndEcho(ModelMap model,TenderFrameHead tenderFrameHead,String id) {
		if(StringUtils.isEmpty(id)){
			tenderFrameHead.setRelease_date(new Date());
			tenderFrameHead.setState("新建");
			model.addAttribute("tenderFrameHead", tenderFrameHead);
		}else{
			TenderFrameHead tfh = tenderFrameHeadService.view(id);
			model.addAttribute("tenderFrameHead", tfh);
		}
		return new ModelAndView("business/tender/tenderManagement/edit",model);
	}
	/**
	 * 编辑和保存
	 */
	@RequestMapping("/save.do")
	public ModelAndView save(ModelMap model, TenderFrameHead tenderFrameHead,String id,HttpServletRequest request){
		String message ="";
		if(StringUtils.isEmpty(id)){
			Calendar now = Calendar.getInstance();
			String nowYear =now.get(Calendar.YEAR)+"-";
			String tender_no = tenderFrameHeadService.selectTender_no();//倒叙查询编号
			if(StringUtils.isEmpty(tender_no)){ 
				tender_no="OK-"+nowYear+"001";
			}else {
				String substring = tender_no.substring(8, 11);
				int i = Integer.parseInt(substring)+1;
				String str_no = Common.formatNumber(i, 3);
				tender_no="OK-"+nowYear+str_no;
			}
			tenderFrameHead.setTender_no(tender_no);
			message=tenderFrameHeadService.addTSM(tenderFrameHead);
		}else{
			tenderFrameHeadService.updTFH(tenderFrameHead);
			tenderFrameDetailService.delTFD(id);
			tenderFrameSupplierService.delTFS(id);
			message=tenderFrameHeadService.saveTSDS(tenderFrameHead);
		}
		model.addAttribute("message",message.substring(0, 4));
		model.addAttribute("url","tender/view.do?id="+message.substring(4));
		return new ModelAndView("common/message",model);
	}
	/**
	 *查看
	 */
	@RequestMapping("/view.do") 
	public ModelAndView view(String id,ModelMap model) {
		TenderFrameHead tenderFrameHead = tenderFrameHeadService.view(id);
		//判断是否已经上传报价
		model.put("list", tenderFrameOfferHeadService.checkPrice(id));
		model.put("tenderFrameHead", tenderFrameHead);	
		return new ModelAndView("business/tender/tenderManagement/view",model); 
	}
	/**
	 *发布
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/sendEmail.do") 
	public ModelAndView sendEmail(ModelMap model,String id,String emails,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		//更新状态为发布
		if(tenderFrameHeadService.updateTenderFrameHead(id)>0){
			//发送邮件
			MailSend mailSend=new MailSend();
			Map<String, String> files=new HashMap<String, String>();
			List<FileInfo> fileInfos=fileInfoServiceImpl.selectFileByCodeAndPk(id);
			for (FileInfo fileInfo : fileInfos) {
				files.put(new String(fileInfo.getFile_path().getBytes("GB2312"), "ISO8859-1"), Common.ROOT_PATH + "/"+fileInfo.getFile_module_code()+"/"+fileInfo.getRealName());
			}
			//取出邮箱
			String[] email = emails.split(";");
			for (int i = 0; i < email.length; i++) {
				mailSend.sendEmail("标书", "各位领导好", email[i], files);
			}
		}
		//生成excel模板
		this.excel(id,request,response);
		model.addAttribute("message","发布成功");
		model.addAttribute("url","tender/view.do?id="+id);
		return new ModelAndView("common/message"); 
	}
	/**
	 *废标
	 */
	@RequestMapping("/cancel.do") 
	public ModelAndView cancel(ModelMap model,String id){
		model.addAttribute("message",tenderFrameHeadService.cancel(id));
		model.addAttribute("url","tender/view.do?id="+id);
		return new ModelAndView("common/message"); 
	}
	/**
	 *生成报价模板
	 */
	@RequestMapping("/excel.do") 
	public void excel(String id,HttpServletRequest request,HttpServletResponse response){
		//excel模板路径   
		try{
			 TenderFrameHead tenderFrameHead=tenderFrameHeadService.view(id);
			String realPath = request.getSession().getServletContext().getRealPath("/");
			Workbook wb = null;
	        InputStream inp=null;
	        inp = new FileInputStream(realPath+"upfile\\tender\\报价表模板.xlsx");  
	        wb = WorkbookFactory.create(inp);
	        Sheet sheet = wb.getSheetAt(0);
	        Font font= wb.createFont();
	        font.setFontHeightInPoints((short)10);
	        font.setFontName("宋体");
	        //设置样式
	        CellStyle cloneStyle = wb.createCellStyle(); 
	        cloneStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
	        cloneStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN); 
	        cloneStyle.setBorderRight(HSSFCellStyle.BORDER_THIN); 
	        cloneStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); 
	        cloneStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
	        cloneStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); //设置样式垂直居中
	        cloneStyle.setFont(font);
	        // 生成下拉列表
	        DataValidationHelper helper = sheet.getDataValidationHelper(); 
	        // 只对(0，0)单元格有效  
	        CellRangeAddressList regions = new CellRangeAddressList(1, 1, 1, 1);  
	        // 生成下拉框内容  
	        //取出供应商名称
	       
			List<TenderFrameSupplier> list = tenderFrameHead.getTenderFrameSupplierList();
			List<TenderFrameDetail> material = tenderFrameHead.getTenderFrameDetailList();
	        String[] names=new String[list.size()];
	        for (int i = 0; i < list.size(); i++) {
	        	names[i]=list.get(i).getSupplier_name();
			}
	        DataValidationConstraint constraint = helper.createExplicitListConstraint(names);
	        //绑定下拉框和作用区域  
	        // 对sheet页生效  
	        sheet.addValidationData(helper.createValidation(constraint, regions));
	        Cell cell;
	        TenderFrameDetail com;
	        for(int i = 0;i < material.size();i++){
	        	Row row=sheet.createRow(5+i);
	        	com = material.get(i);
	        	cell = row.createCell(0);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getTenderFrameDetail_row_no());
	        	cell = row.createCell(1);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getCode());
	        	cell = row.createCell(2);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getName());
	        	cell = row.createCell(3);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getSpec());
	        	cell = row.createCell(4);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getUnit());
	        	cell = row.createCell(5);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getExplain());
	        	cell = row.createCell(6);
	        	cell.setCellStyle(cloneStyle);
	        }
	        cell=sheet.getRow(1).getCell(3);
	        cell.setCellStyle(cloneStyle); 
	        cell.setCellValue(tenderFrameHead.getTender_no());//设置招标号
	        cell=sheet.getRow(1).getCell(6);
	        cell.setCellStyle(cloneStyle); 
	        cell.setCellValue(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(tenderFrameHead.getRelease_date()));//设置发布日期
	        FileOutputStream out = new FileOutputStream(realPath+"upfile\\tender\\报价表"+tenderFrameHead.getTender_no()+".xlsx");    
	        wb.write(out); 
	        out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/**
	 *下载模板
	 */
	@RequestMapping("/download.do") 
	public void download(String tender_no,HttpServletRequest request,HttpServletResponse response){
		//获取项目路径
		String path = request.getSession().getServletContext().getRealPath("/");
		downloadFile df = new downloadFile();
		try {
			df.download(path+"upfile/tender/", "报价表"+tender_no+".xlsx", "application/octet-stream", response, request);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 *判断供应商里面有没有物资）
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(value="/viewSupplierCapacity.do",produces="text/html;charset=UTF-8")
	public String viewSupplierCapacity(String supplierId,String materialIds,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		if(StringUtils.isEmpty(materialIds)){
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
	/**
	 * 判断物资上面有没有不符合的供应商
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(value="/compareSupplierCapacity.do",produces="text/html;charset=UTF-8")
	public String compareSupplierCapacity(String materialId,String supplierIds,HttpServletRequest request) throws UnsupportedEncodingException {
		if(StringUtils.isEmpty(supplierIds)){
			return "yes";
		}else{
			List<SupplierCapacity> compareSupplierCapacity = supplierCapacityService.compareSupplierCapacity(supplierIds,materialId);
			String[] supIds = supplierIds.split(",");
			Set<String> set= new HashSet<String>(Arrays.asList(supIds));
			if(compareSupplierCapacity==null||compareSupplierCapacity.size()<set.size()){
				//----得到不符合的供应商Name-----
				List<SupplierCapacity> findSidsList=supplierCapacityService.findMids(materialId);
				String strings[]=new String[findSidsList.size()];
				for (int i=0;i<findSidsList.size();i++) {
					strings[i]=findSidsList.get(i).getSupplier_id();
				}
				List<String> noSuppliers = new ArrayList<String>();
				outer:
				for(String str2 : supIds){
					for(String temp2 : strings){
						if(temp2.equals(str2)){
							continue outer;
						}
					}
					noSuppliers.add(str2);
				}
				List<Supplier> nosupplierNameList=supplierService.findNoSupplierName(noSuppliers);
				String no="";
				for (Supplier supplier : nosupplierNameList) {
					String name = supplier.getSupplier_name();
					no+=name+" ";
				}
				return no;//不符合
			}
		}
		return "yes";//符合
	}
	/**
	 * 报价表上传页
	 */
	@RequestMapping("/ImpTender.do")  
	public ModelAndView editImpMaterialsType(ModelMap model,String parentId,String tender_no){
		ExcleFileForm excleFileForm = new ExcleFileForm();
		excleFileForm.setParentId(StringUtils.isEmpty(parentId) ? "0" : parentId);
		excleFileForm.setValidateStr(StringUtils.isEmpty(tender_no) ? "0" : tender_no);
		return new ModelAndView("business/tender/tenderManagement/impTenderFrameOffer","excleFileForm", excleFileForm); 
	}
	/**
	 * 中标
	 */
	@RequestMapping("/bidding.do")  
		public ModelAndView bidding(ModelMap model,String id,String supplier){
		//先查询出来物资的id和价格的集合
		List<TenderFrameOfferHead>  list = tenderFrameOfferHeadService.selectMaterialAndPrice(id,supplier);
		//设置中标供应商
		tenderFrameHeadService.updateSupplier(id,supplier);
		for (int i = 0; i < list.size(); i++) {
			//设置物资中标价
			tenderFrameDetailService.updatePrice(id,list.get(i).getTenderFrameOfferDetailList().get(0).getMaterial(),
					list.get(i).getTenderFrameOfferDetailList().get(0).getMain_Price(),list.get(i).getTenderFrameOfferDetailList().get(0).getSecondary_Price());
		}
		model.addAttribute("message","中标完成");
		model.addAttribute("url","tender/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 * 保存报价表
	 */
	@RequestMapping("/saveImpTenderFrameOffer.do")  
	public ModelAndView saveImpTenderFrameOffer(HttpServletRequest request,ExcleFileForm excleFileForm, ModelMap model) throws IOException{
		model.addAttribute("message", tenderFrameOfferHeadService.saveExcle(excleFileForm,request));
		model.addAttribute("url","tender/view.do?id="+excleFileForm.getParentId());
		return new ModelAndView("common/message"); 
	}
	/**
	 * 发布时检查是否有文件存在
	 */
	@RequestMapping("/checkFile.do")
	@ResponseBody
	public String saveImpTenderFrameOffer(String id){
		List<FileInfo> fileInfos=fileInfoServiceImpl.selectFileByCodeAndPk(id);
		if(fileInfos.size()<=0){
			return "1";
		}
		return "0";
	}
	/**
	 * 生成框架协议时是否已经生成过
	 */
	@RequestMapping("/checkAgreement.do")
	@ResponseBody
	public String checkAgreement(String id){
		FrameHead frameHead=FrameHeadService.selectByTenderFrame(id);
		if(frameHead!=null){
			return "1";
		}
		return "0";
	}
	
}