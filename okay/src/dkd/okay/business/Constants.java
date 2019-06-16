package dkd.okay.business;

import java.math.BigDecimal;
import java.text.DecimalFormat;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.usermodel.Cell;


/**
 * @作者: 周渤涛
 * @概述: 常量类
 */
public class Constants {
	/**
	 * 计量单位反算,例：10000除（计量换算乘1000）
	 * @return reverse
	 */
	public static final BigDecimal getReverseHalpNum(BigDecimal num,BigDecimal conversion) {
		if(null == conversion || conversion.compareTo(BigDecimal.ZERO) <=0){
			return null;
		}else{
			BigDecimal newConversion = conversion.multiply(new BigDecimal(1000));
			BigDecimal reverse = new BigDecimal(10000);
			return num.multiply(reverse.divide(newConversion)).setScale(4 ,BigDecimal.ROUND_HALF_UP);
		}		
	}
	
	/**
	 * 调拨中的调拨状态-调拨出库
	 */
	public static final String ALLOCATIONTYPE_DBCK = "调拨出库";
	/**
	 * 调拨中的调拨状态-完结调拨
	 */
	public static final String ALLOCATIONTYPE_WJDB = "完结调拨";
	/**
	 * 调拨中的调拨状态-公司调拨
	 */
	public static final String ALLOCATIONTYPE_GSDB = "公司调拨";
	
	public static boolean isNum(String str,int newScale){
		if(null == str || StringUtils.equals("", str)){
			return false;
		}
		if(str.matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$")){
			BigDecimal num = new BigDecimal(str).setScale(newScale, BigDecimal.ROUND_HALF_UP);
			return num.toString().matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$");
		}else{
			return false;
		}		
	}
	
	
	/**
	 * 转换单元格值的类型
	 * @param cell
	 * @return
	 */
	
	public static String getCellContent(Cell cell) {  
		if(null == cell)
			return "";
		switch (cell.getCellType()) {  
			case Cell.CELL_TYPE_BLANK:  
				return "";  
			case Cell.CELL_TYPE_BOOLEAN:  
				return String.valueOf(cell.getBooleanCellValue());  
			case Cell.CELL_TYPE_ERROR:  
				return String.valueOf(cell.getErrorCellValue());  
			case Cell.CELL_TYPE_FORMULA: 
//				double a = cell.getNumericCellValue();
				System.out.println(cell.getNumericCellValue());
				return String.valueOf(cell.getNumericCellValue());  
			case Cell.CELL_TYPE_NUMERIC:
				DecimalFormat df = new DecimalFormat("0.00");
				String value = df.format(cell.getNumericCellValue());
				if(value.endsWith(".00")){
					return value.substring(0,value.length() - 3);
				}else{
					return value;
				}
				//return String.valueOf(cell.getNumericCellValue());  
//				return FORMATTER.formatCellValue(cell);  
			case Cell.CELL_TYPE_STRING:  
				return cell.getStringCellValue().trim();  
			default:  
				return "";  
		}  
	}	
    
	
	/**
	 * 仓库储位编码中间的分割符
	 */
	public static final String WAREHOUSE_FLAG = "_";
	
	/**
	 * 仓库储位编码中间的分割符
	 */
	public static final String EXCLEFILE_XLS = "application/vnd.ms-excel";
	/**
	 * 仓库储位编码中间的分割符
	 */
	public static final String EXCLEFILE_XLSX = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
	
	public static final String EXCEL_BOMESC = "application/x-zip-compressed";
	public static final String EXCEL_BOMESC_T = "application/octet-stream"; 
	
	
	
	/**
	 * 导入物料信息时，查询业务字典中的单位的ID
	 */
	public static final String EXCLE_UNIT_PARENTID = "1";
	

//***********************************************发送邮件所涉及到的常量********************************************************
	//审批类型
	public static final String pendTask="您有一条待审任务";
	public static final String waitTask="您有一条待办任务";
	public static final String waitContract="采办合同";
	public static final String waitChange="采办合同变更";
	public static final String waitInvite="采购招标";
	public static final String waitNonbidding="采购非招标";
}