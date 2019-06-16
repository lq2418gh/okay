package dkd.okay.business.outstock.controller;

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

import dkd.okay.business.outstock.bo.OutstockDetail;
import dkd.okay.business.outstock.bo.OutstockHead;
import dkd.okay.business.outstock.service.OutstockDetailService;
import dkd.okay.business.outstock.service.OutstockHeadService;
import dkd.okay.business.purchase.service.OrderServiceImpl;
import dkd.okay.business.stock.service.StockService;
import dkd.okay.system.bo.User;
import dkd.okay.system.util.downloadFile;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Controller
@RequestMapping(value="/outstock")
@Transactional
public class OutstockCotroller {

	@Autowired
	private OutstockHeadService outstockHeadService;
	
	@Autowired
	private OutstockDetailService outstockDetailService;
	
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	@Autowired
	private StockService stockService;
	
	/**
	 * 分页模糊 ：入库查询
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/query.do")
	public ModelAndView selectPurchase(OutstockHead outstockHead,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		outstockHead.setOutstock_no(outstockHead.getOutstock_no()!=null?outstockHead.getOutstock_no().trim():null);
		outstockHead.setState(outstockHead.getState()!=null?outstockHead.getState().trim():null);
		outstockHead.setOut_date_begin(outstockHead.getOut_date_begin()!=null?outstockHead.getOut_date_begin().trim():null);
		outstockHead.setOut_date_end(outstockHead.getOut_date_end()!=null?outstockHead.getOut_date_end().trim():null);
		Map<String, Object> map = outstockHeadService.select(pageNow, outstockHead);
		List<OutstockHead> list =(List<OutstockHead>) map.get("list");
		model.addAttribute("list", list);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("outstockHead", outstockHead);//用来显示上一次查询条件
		return new ModelAndView("business/outstock/outstockManagement/query",model);
	}
	/**
	 * 跳查看页面
	 */
	@RequestMapping(value="/view.do")
	public ModelAndView view(String id,ModelMap model) {
		OutstockHead outstockHead = outstockHeadService.view(id);
		model.addAttribute("outstockHead",outstockHead);
		return new ModelAndView("business/outstock/outstockManagement/view",model);
	}
	/**
	 * 跳添加页面
	 */
	@RequestMapping(value="/editAndEcho.do")
	public ModelAndView edit(String id,ModelMap model) {
		OutstockHead outstockHead =new OutstockHead();
		if(StringUtils.isEmpty(id)){
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			outstockHead.setUser_id(user.getUserId());;
			outstockHead.setUser_name(user.getUserInfo().getRealName());
			outstockHead.setState("新建");
		}else{
			outstockHead = outstockHeadService.view(id);
			List<OutstockDetail> list =outstockHead.getOutstockDetailList();
			for (OutstockDetail outstockDetail : list) {
				BigDecimal  stock = stockService.selectStockByMaterialAndWarehouse(outstockDetail.getMaterial(),outstockHead.getWarehouse());
				outstockDetail.setStock(stock);
			}
		}
		model.addAttribute("outstockHead",outstockHead);
		return new ModelAndView("business/outstock/outstockManagement/edit",model);
	}
	/**
	 * 编辑和保存
	 */
	@RequestMapping("/save.do")
	public ModelAndView save(ModelMap model,OutstockHead outstockHead,String id,HttpServletRequest request){
		String message="";
		if(StringUtils.isEmpty(outstockHead.getId())){
			outstockHead.setId(UUIDGenerator.getUUID());
			outstockHead.setOutstock_no(outstockHeadService.getOutstock_no());
			//插入主表
			outstockHeadService.insert(outstockHead);
			//批量插入明细表
			outstockDetailService.bathInserts(outstockHead);
			message="保存成功";
		}else{
			//更新主表
			outstockHeadService.update(outstockHead);
			//删除明细表
			outstockDetailService.deleteDetalsByHeadId(outstockHead.getId());
			//批量插入明细表
			message=outstockDetailService.bathInserts(outstockHead);
		}
		model.addAttribute("message",message);
		model.addAttribute("url","outstock/view.do?id="+outstockHead.getId());
		return new ModelAndView("common/message",model);
	}
	/**
	 * 提交审批
	 */
	@RequestMapping(value="/submit.do")
	public ModelAndView submit(String id,ModelMap model) {
		OutstockHead outstockHead = outstockHeadService.view(id);
		List<OutstockDetail> list = outstockHead.getOutstockDetailList();
		for (OutstockDetail outstockDetail : list) {
			//根据明细和仓库信息查询出库数量
			BigDecimal  stock = stockService.selectStockByMaterialAndWarehouse(outstockDetail.getMaterial(),outstockHead.getWarehouse());
			if(outstockDetail.getSecondary_quantity()!=null){
				//有辅助计量单位的情况,判断可入库数量是否足够
				if((outstockDetail.getSecondary_quantity().subtract(stock)).compareTo(BigDecimal.ZERO) == 1){
					model.addAttribute("message","第"+outstockDetail.getOutstock_row_no()+"条明细库存不足！请核查后重新提交");
					model.addAttribute("url","outstock/view.do?id="+id);
					return new ModelAndView("common/message",model);
				}
			}else{
				//没有辅助计量单位的情况,判断可入库数量是否足够
				if((outstockDetail.getMain_quantity().subtract(stock)).compareTo(BigDecimal.ZERO) == 1){
					model.addAttribute("message","第"+outstockDetail.getOutstock_row_no()+"条明细库存不足！请核查后重新提交");
					model.addAttribute("url","outstock/view.do?id="+id);
					return new ModelAndView("common/message",model);
				}
			}
		}
		//审批通过以后并且库存数量足够出库后修改采购订单已入库数量
		for (OutstockDetail outstockDetail : list) {
			if(outstockDetail.getSecondary_quantity()!=null){
				orderServiceImpl.updateStockNum(outstockDetail.getOrder_detail(), outstockDetail.getMain_quantity().multiply(new BigDecimal(-1)), outstockDetail.getSecondary_quantity().multiply(new BigDecimal(-1)));
				stockService.subStock(outstockDetail.getOrder_detail(),outstockDetail.getSecondary_quantity(),outstockHead.getWarehouse());//(双计量单位的情况)扣减库存，按入库时间排序（先进先出）
			}else{
				orderServiceImpl.updateStockNum(outstockDetail.getOrder_detail(), outstockDetail.getMain_quantity().multiply(new BigDecimal(-1)), outstockDetail.getSecondary_quantity());
				stockService.subStock(outstockDetail.getOrder_detail(),outstockDetail.getMain_quantity(),outstockHead.getWarehouse());//(没有辅助单位的情况)扣减库存，按入库时间排序（先进先出）
			}
		}
		model.addAttribute("message",outstockHeadService.submit(id));
		model.addAttribute("url","outstock/view.do?id="+id);
		return new ModelAndView("common/message",model);
	}
	/**
	 *下载存货验收入库单
	 */
	@RequestMapping("/excel.do") 
	public void excel(String id,HttpServletRequest request,HttpServletResponse response){
		//excel模板路径   
		try{
			OutstockHead outstockHead = outstockHeadService.view(id);
			String realPath = request.getSession().getServletContext().getRealPath("/");
			Workbook wb = null;
	        InputStream inp=null;
	        inp = new FileInputStream(realPath+"upfile\\outstock\\存货出库领用单.xlsx");  
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
	        OutstockDetail com;
	        for(int i = 0;i < outstockHead.getOutstockDetailList().size();i++){
	        	Row row=sheet.createRow(3+i);
	        	com = outstockHead.getOutstockDetailList().get(i);
	        	cell = row.createCell(0);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getOutstock_row_no());
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
	        	cell.setCellValue(com.getRemark());
	        }
	        cell=sheet.getRow(1).getCell(1);
	        cell.setCellValue(outstockHead.getDepartment_name());//设置领用部门
	        cell=sheet.getRow(1).getCell(3);
	        cell.setCellValue(outstockHead.getOutstock_no());//设置出库单号
	        cell=sheet.getRow(1).getCell(5);
	        cell.setCellValue(outstockHead.getWarehouse_name());//设置仓库名称
	        cell=sheet.getRow(1).getCell(7);
	        cell.setCellValue(new SimpleDateFormat("yyyy-MM-dd").format(outstockHead.getOut_date()));//设置出库日期
	        Row row=sheet.createRow(4+outstockHead.getOutstockDetailList().size());
	        cell = row.createCell(0);
	        cell.setCellValue("库管员");
	        cell = row.createCell(1);
	        cell.setCellValue(outstockHead.getUser_name());//购置经办人
	        cell = row.createCell(3);
	        cell.setCellValue("领用人:");
	        //cell = row.createCell(4);
	        //cell.setCellValue();//领用人
	        cell = row.createCell(6);
	        cell.setCellValue("归口管理部门责任人:");
	        //cell = row.createCell(8);
	        //cell.setCellValue();//归口管理部门责任人
	        FileOutputStream op = new FileOutputStream(realPath+"upfile\\outstock\\存货出库领用单"+outstockHead.getOutstock_no()+".xlsx");
	        wb.write(op);  
	        op.flush();
	        op.close();
	        //下载
			downloadFile df = new downloadFile();
			try {
				df.download(realPath+"upfile/outstock/", "存货出库领用单"+outstockHead.getOutstock_no()+".xlsx", "application/octet-stream", response, request);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}