package dkd.okay.business.storage.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.budget.service.PlanDetailService;
import dkd.okay.business.payment.bo.Payment;
import dkd.okay.business.payment.service.PaymentService;
import dkd.okay.business.purchase.service.OrderServiceImpl;
import dkd.okay.business.stock.service.StockService;
import dkd.okay.business.storage.bo.StorageDetail;
import dkd.okay.business.storage.bo.StorageHead;
import dkd.okay.business.storage.service.StorageDetailService;
import dkd.okay.business.storage.service.StorageHeadService;
import dkd.okay.system.bo.User;
import dkd.okay.system.util.downloadFile;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Controller
@RequestMapping(value="/storage")
@Transactional
public class StorageCotroller {

	@Autowired
	private StorageHeadService storageHeadService;
	
	@Autowired
	private StorageDetailService storageDetailService;
	
	@Autowired
	private StockService stockService;
	
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	@Autowired
	private PlanDetailService planDetailService;
	
	@Autowired
	private PaymentService paymentService;
	
	
	/**
	 * 分页模糊 ：入库查询
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/query.do")
	public ModelAndView selectPurchase(StorageHead storageHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		storageHead.setStorage_no(storageHead.getStorage_no()!=null?storageHead.getStorage_no().trim():null);
		storageHead.setState(storageHead.getState()!=null?storageHead.getState().trim():null);
		storageHead.setEntry_date_begin(storageHead.getEntry_date_begin()!=null?storageHead.getEntry_date_begin().trim():null);
		storageHead.setEntry_date_end(storageHead.getEntry_date_end()!=null?storageHead.getEntry_date_end().trim():null);
		Map<String, Object> map = storageHeadService.select(pageNow, storageHead);
		List<StorageHead> list =(List<StorageHead>) map.get("list");
		model.addAttribute("list", list);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("storageHead", storageHead);//用来显示上一次查询条件
		return new ModelAndView("business/storage/storageManagement/query",model);
	}
	/**
	 * 跳添加页面
	 */
	@RequestMapping(value="/editAndEcho.do")
	public ModelAndView edit(String id,ModelMap model) {
		StorageHead storageHead =new StorageHead();
		if(StringUtils.isEmpty(id)){
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			storageHead.setUser_id(user.getUserId());;
			storageHead.setUser_name(user.getUserInfo().getRealName());
			storageHead.setState("新建");
		}else{
			storageHead = storageHeadService.view(id);
		}
		model.addAttribute("storageHead",storageHead);
		return new ModelAndView("business/storage/storageManagement/edit",model);
	}
	/**
	 * 跳查看页面
	 */
	@RequestMapping(value="/view.do")
	public ModelAndView view(String id,ModelMap model) {
		StorageHead storageHead = storageHeadService.view(id);
		model.addAttribute("storageHead",storageHead);
		return new ModelAndView("business/storage/storageManagement/view",model);
	}
	/**
	 * 提交审批
	 */
	@RequestMapping(value="/submit.do")
	public ModelAndView submit(String id,ModelMap model) {
		StorageHead storageHead = storageHeadService.view(id);
		List<StorageDetail> list = storageHead.getStorageDetailList();
		for (StorageDetail storageDetail : list) {
			//判断可入库数量是否足够
			if(storageDetail.getSecondary_quantity()!=null){//有辅助计量单位的情况
				if((storageDetail.getSecondary_quantity().subtract(storageDetail.getResidue())).compareTo(BigDecimal.ZERO) == 1){
					model.addAttribute("message","第"+storageDetail.getNo()+"条明细可入库数量不足！请核查后重新提交");
					model.addAttribute("url","storage/view.do?id="+id);
					return new ModelAndView("common/message",model);
				}
			}else{//没有辅助计量单位的情况
				if((storageDetail.getMain_quantity().subtract(storageDetail.getMain_quantity())).compareTo(BigDecimal.ZERO) == 1){
					model.addAttribute("message","第"+storageDetail.getNo()+"条明细可入库数量不足！请核查后重新提交");
					model.addAttribute("url","storage/view.do?id="+id);
					return new ModelAndView("common/message",model);
				}
			}
		}
		for (StorageDetail storageDetail : list) {
			//审批通过以后修改采购订单已入库数量
			//审批通过以后修改采购订单出库可用数量
			//回填预算科目的可用金额
			orderServiceImpl.updateAlreadyNum(storageDetail.getOrder_detail(), storageDetail.getMain_quantity(), storageDetail.getSecondary_quantity());
			orderServiceImpl.updateStockNum(storageDetail.getOrder_detail(), storageDetail.getMain_quantity(), storageDetail.getSecondary_quantity());
			planDetailService.updateResidualAmountStorage(storageDetail.getBudget_plan_detail(), storageDetail.getMain_price().multiply(storageDetail.getMain_quantity()));
		}
		addStock(id);
		orderServiceImpl.updateOrderStateAutomatic(storageHead.getOrder_frame());
		model.addAttribute("message",storageHeadService.submit(id));
		model.addAttribute("url","storage/view.do?id="+id);
		return new ModelAndView("common/message",model);
	}
	/**
	 * 添加库存
	 * @param id
	 */
	public void addStock(String id) {
		// TODO Auto-generated method stub
		StorageHead storageHead = storageHeadService.view(id);
		List<StorageDetail> storageDetailList = storageHead.getStorageDetailList();
		stockService.save(storageHead,storageDetailList,id,true);
	}
	/**
	 *下载存货验收入库单
	 */
	@RequestMapping("/excel.do") 
	public void excel(String id,HttpServletRequest request,HttpServletResponse response){
		//excel模板路径   
		try{
			StorageHead storageHead = storageHeadService.view(id);
			String realPath = request.getSession().getServletContext().getRealPath("/");
			Workbook wb = null;
	        InputStream inp=null;
	        inp = new FileInputStream(realPath+"upfile\\storage\\存货验收入库单.xlsx");  
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
	        Cell cell;
	        StorageDetail com;
	        for(int i = 0;i < storageHead.getStorageDetailList().size();i++){
	        	Row row=sheet.createRow(3+i);
	        	com = storageHead.getStorageDetailList().get(i);
	        	cell = row.createCell(0);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getNo());
	        	cell = row.createCell(1);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getName());
	        	cell = row.createCell(2);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getSpec());
	        	cell = row.createCell(3);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getPacking()+"");
	        	cell = row.createCell(4);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getConversion());
	        	cell = row.createCell(5);
	        	cell.setCellStyle(cloneStyle);
	        	if(com.getUnit_help()!=null){
	        		cell.setCellValue(com.getUnit_help());
	        	}else{
	        		cell.setCellValue(com.getUnit());
	        	}
	        	cell = row.createCell(6);
	        	cell.setCellStyle(cloneStyle);
	        	if(com.getUnit_help()!=null){
	        		cell.setCellValue(com.getSecondary_quantity()+"");
	        	}else{
	        		cell.setCellValue(com.getMain_quantity()+"");
	        	}
	        	cell = row.createCell(7);
	        	cell.setCellStyle(cloneStyle);
	        	if(com.getUnit_help()!=null){
	        		cell.setCellValue(com.getSecondary_price()+"");
	        	}else{
	        		cell.setCellValue(com.getMain_price()+"");
	        	}
	        	cell = row.createCell(8);
	        	cell.setCellStyle(cloneStyle);
	        	if(StringUtils.isNotEmpty(storageHead.getFrame_no())){
	        		cell.setCellValue(storageHead.getFrame_no());
	        	}else{
	        		cell.setCellValue(storageHead.getContract_no());
	        	}
	        	cell = row.createCell(9);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getRemark());
	        }
	        cell=sheet.getRow(1).getCell(1);
	        cell.setCellValue(storageHead.getSupplier_name());//设置供应商名称
	        cell=sheet.getRow(1).getCell(3);
	        cell.setCellValue(storageHead.getStorage_no());//设置入库单号
	        cell=sheet.getRow(1).getCell(5);
	        cell.setCellValue(storageHead.getWarehouse_name());//设置仓库名称
	        cell=sheet.getRow(1).getCell(8);
	        cell.setCellValue(new SimpleDateFormat("yyyy-MM-dd").format(storageHead.getEntry_date()));//设置仓库名称
	        Row row=sheet.createRow(4+storageHead.getStorageDetailList().size());
	        cell = row.createCell(0);
	        cell.setCellValue("购置经办人");
	        cell = row.createCell(1);
	        cell.setCellValue(storageHead.getUser_name());//购置经办人
	        cell = row.createCell(3);
	        cell.setCellValue("入库接收:");
	        //cell = row.createCell(4);
	        //cell.setCellValue();//入库接收
	        cell = row.createCell(7);
	        cell.setCellValue("归口管理部门责任人:");
	        //cell = row.createCell(8);
	        //cell.setCellValue();//归口管理部门责任人
	        FileOutputStream op = new FileOutputStream(realPath+"upfile\\storage\\存货验收入库单"+storageHead.getStorage_no()+".xlsx");
	        wb.write(op);  
	        op.flush();
	        op.close();
	        //下载
			downloadFile df = new downloadFile();
			try {
				df.download(realPath+"upfile/storage/", "存货验收入库单"+storageHead.getStorage_no()+".xlsx", "application/octet-stream", response, request);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/**
	 * 编辑和保存
	 */
	@RequestMapping("/save.do")
	public ModelAndView save(ModelMap model,StorageHead storageHead,String id,HttpServletRequest request){
		String message="";
		//循环明细 算出总金额
		List<StorageDetail> list = storageHead.getStorageDetailList();
		BigDecimal num = new BigDecimal(0);
		for (StorageDetail storageDetail : list) {
			//有没有辅助计量单位的情况
			if(storageDetail.getSecondary_price()!=null){
				storageDetail.setMain_quantity(storageDetail.getSecondary_quantity().divide(new BigDecimal(storageDetail.getConversion()), 2, BigDecimal.ROUND_HALF_UP));
			}
			num = num.add(storageDetail.getMain_price().multiply(storageDetail.getMain_quantity()));
		}
		storageHead.setMain_totalAmount(num.setScale(2,BigDecimal.ROUND_HALF_UP));
		if(StringUtils.isEmpty(storageHead.getId())){
			storageHead.setId(UUIDGenerator.getUUID());
			storageHead.setStorage_no(storageHeadService.getStorage_no());
			storageHead.setIs_choice("0");
			//插入主表
			storageHeadService.insert(storageHead);
			//批量插入明细表
			storageDetailService.bathInserts(storageHead);
			message="保存成功";
		}else{
			//更新主表
			storageHeadService.update(storageHead);
			//删除明细表
			storageDetailService.deleteDetalsByHeadId(storageHead.getId());
			//批量插入明细表
			message=storageDetailService.bathInserts(storageHead);
		}
		model.addAttribute("message",message);
		model.addAttribute("url","storage/view.do?id="+storageHead.getId());
		return new ModelAndView("common/message",model);
	}
//--------------------------------------------------------------------------------------------------
	/**
	 * 公共页面 查询入库单号和id
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/publicQuery.do")
	public ModelAndView publicQuery(String paymentId,StorageHead storageHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		storageHead.setStorage_no(storageHead.getStorage_no()!=null?storageHead.getStorage_no().trim():null);
		storageHead.setState("审批通过");
		storageHead.setEntry_date_begin(storageHead.getEntry_date_begin()!=null?storageHead.getEntry_date_begin().trim():null);
		storageHead.setEntry_date_end(storageHead.getEntry_date_end()!=null?storageHead.getEntry_date_end().trim():null);
		String storageIds="";
		if(StringUtils.isNotEmpty(paymentId)){
			Payment payment=paymentService.selectById(paymentId);
			storageIds=payment.getStorageIds();
		}
		Map<String, Object> map = storageHeadService.selectPublic(storageIds,pageNow, storageHead);
		List<StorageHead> list =(List<StorageHead>) map.get("list");
		model.addAttribute("list", list);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("storageHead", storageHead);//用来显示上一次查询条件
		model.addAttribute("paymentId", paymentId);
		return new ModelAndView("business/storage/storageManagement/publicQuery",model);
	}
}