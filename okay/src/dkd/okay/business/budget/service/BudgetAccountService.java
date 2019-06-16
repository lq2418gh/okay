package dkd.okay.business.budget.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.Constants;
import dkd.okay.business.budget.bo.BudgetAccount;
import dkd.okay.business.budget.bo.ExcleFileForm;
import dkd.okay.business.budget.dao.BudgetAccountDao;
import dkd.okay.system.service.DictionaryServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;


/**
 * 预算科目信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="budgetAccountService")
@Transactional
public class BudgetAccountService{
	@Autowired
	private BudgetAccountDao budgetAccountDao;
	
	@Autowired
	private DictionaryServiceImpl dictionaryServiceImpl;
	/**
	 * 
	 * 根据分页查询所有预算科目信息
	 */
	public Map<String, Object> select(String pageNow,BudgetAccount budgetAccount) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("budgetAccount", budgetAccount);
		map.put("page", pageUtil.getPage(pageNow, budgetAccountDao.count(map)));//根据父ID查询数量
		List<BudgetAccount> list = budgetAccountDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	
	}
	
	/**
	 * 根据ID查询预算科目信息
	 * @param budgetAccountId
	 * @return
	 */
	public BudgetAccount selectBudgetAccountById(String budgetAccountId){
		return budgetAccountDao.get(budgetAccountId);
	}
	/**
	 * 保存预算科目信息
	 * @param budgetAccount 
	 */
	public String save(BudgetAccount budgetAccount){
		String back="";
		if(StringUtils.isEmpty(budgetAccount.getBudgetAccountId())){
			budgetAccount.setBudgetAccountId(UUIDGenerator.getUUID());
			if(budgetAccountDao.selectNameRepeat(budgetAccount.getName()) > 0){
				back="预算科目名称重复，保存失败！";
			}else{
				budgetAccountDao.insert(budgetAccount);
				back="保存成功！";
			}
		}
		
		else{
			budgetAccountDao.update(budgetAccount);
			back="修改成功！";
		}
		return back;
	}
	/**
	 * 删除预算科目信息
	 * @param budgetAccountId
	 */
	public String delete(String budgetAccountId) {
		String back="";
		budgetAccountDao.delete(budgetAccountId);
		back="删除成功！";
		return back;
	}
	/**
	 * 判断数据库中预算科目名称是否存在
	 * @param warehouseCode
	 */
	public boolean selectNameRepeat(String name) {
		if(budgetAccountDao.selectNameRepeat(name) > 0){
			return false;
		}else{
			return true;
		}
	}
	/**
	 * 
	 * 编辑预算科目信息
	 * @param model
	 * @param budgetAccountId
	 * @return
	 */
	@RequestMapping("/edit.do")  
	public ModelAndView edit(){
		return new ModelAndView("business/budget/budgetPlan/edit");
	}

	public Object saveExcle(HttpServletRequest request,ExcleFileForm excleFileForm) {
		String validateExcleFile=null;
		validateExcleFile = this.validateExcle(request,excleFileForm.getExcle());
		if(StringUtils.isNotEmpty(validateExcleFile))//校验上传文档格式
			return validateExcleFile;
		validateExcleFile = this.validateExcleFile(excleFileForm.getExcle(),request);
		if(StringUtils.isNotEmpty(validateExcleFile))//校验上传文档格式
			return validateExcleFile;		
		return saveExcle(excleFileForm.getExcle(),request);
	}

	private Object saveExcle(MultipartFile excle, HttpServletRequest request) {
		XSSFWorkbook xwb = null;
		try{
			xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
		}catch(Exception e){
			return Common.selectEnglish("请使用Excel2003或Excel2007格式版本", request);
		}
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		XSSFRow row = null;//行
		BudgetAccount budgetAccount = null;
		for (int i = 1; i < sheet.getPhysicalNumberOfRows(); i++) {//循环行数
			row = sheet.getRow(i);
			if(row == null){
				if(i != 1){
					continue;
				}else{
					return "excel文件没有数据";	
				}
			}else{
				XSSFCell cell1 = row.getCell(0);//编码（6位）
				XSSFCell cell2 = row.getCell(1);//名称
				XSSFCell cell3 = row.getCell(2);//说明
				XSSFCell cell4 = row.getCell(3);//预警比例
				if((cell1 == null || Constants.getCellContent(cell1).equals("")) 
					&& (cell2 == null || Constants.getCellContent(cell2).equals("")) 
					&& (cell3 == null || Constants.getCellContent(cell3).equals("")) 
					&& (cell4 == null || Constants.getCellContent(cell4).equals(""))){
					continue;
				}
				budgetAccount = new BudgetAccount();
				if(budgetAccountDao.selectNameRepeat(cell2.getStringCellValue())==0){
					budgetAccount.setBudgetAccountId(UUIDGenerator.getUUID());
					budgetAccount.setBudgetAccountCode(cell1.getStringCellValue());
					budgetAccount.setName(cell2.getStringCellValue());
					if(cell3 != null){
					    budgetAccount.setExplain(cell3.getStringCellValue());
					}
					budgetAccount.setWarningRatio(Integer.parseInt(cell4.getStringCellValue()));
					budgetAccount.setIsValidate("使用");;
					budgetAccountDao.insert(budgetAccount);
				}else{
					return "第"+(i+1)+"行预算科目名称有重复！";
				}
			}
		}
		return "上传成功！";
	}

	private String validateExcleFile(MultipartFile excle,HttpServletRequest request) {
		XSSFWorkbook xwb = null;
		try {
			xwb = new XSSFWorkbook(excle.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		} //生成一个表格对象
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		XSSFRow row = null;//行
		for (int i = 1; i < sheet.getPhysicalNumberOfRows(); i++) {//循环行数
			row = sheet.getRow(i);
			if(row == null){
				if(i != 1){
					continue;
				}else{
					return "excel文件没有数据";	
				}
			}else{
				XSSFCell cell1 = row.getCell(0);//编码
				XSSFCell cell2 = row.getCell(1);//名称
				XSSFCell cell3 = row.getCell(2);//说明
				XSSFCell cell4 = row.getCell(3);//预警比例
				if((cell1 == null || Constants.getCellContent(cell1).equals("")) 
					&& (cell2 == null || Constants.getCellContent(cell2).equals("")) 
					&& (cell3 == null || Constants.getCellContent(cell3).equals("")) 
					&& (cell4 == null || Constants.getCellContent(cell4).equals(""))){
					continue;
				}
				//判断编码不为空。
				if(cell1 == null || cell1.getCellType() != XSSFCell.CELL_TYPE_STRING ||StringUtils.isEmpty(cell1.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,预算编号为空值或类型错误";	
				}
				//判断名称为空,格式错误
				if(cell2 == null || cell2.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell2.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,预算科目名称有空值或类型错误";
				}
				//判断预警比例,或格式不对。
				if(cell4 == null || cell4.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell4.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,预警比例有空值或类型错误";
				}
			}
		}
		return null;
	}

	private String validateExcle(HttpServletRequest request, MultipartFile excle) {
		XSSFWorkbook xwb = null;
		try{
			xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
		}catch(Exception e){
			return "请使用Excel2003或Excel2007格式版本";
		}
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		if (sheet.getPhysicalNumberOfRows() <= 1)
			return "excel导入模版不符和要求";
		XSSFRow row = sheet.getRow(0);//行
		XSSFCell cell1 = row.getCell(0);//格
		XSSFCell cell2 = row.getCell(1);//格
		XSSFCell cell3 = row.getCell(2);//格
		XSSFCell cell4 = row.getCell(3);//格
		if (cell1 == null || StringUtils.isEmpty(cell1.getRichStringCellValue().toString()) || !StringUtils.equals("预算科目编号", cell1.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少预算科目编码列";
		if (cell2 == null || StringUtils.isEmpty(cell2.getRichStringCellValue().toString()) || !StringUtils.equals("预算科目名称", cell2.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少预算科目名称列";
		if (cell3 == null || StringUtils.isEmpty(cell3.getRichStringCellValue().toString()) || !StringUtils.equals("预算说明", cell3.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少预算说明列";
		if (cell4 == null || StringUtils.isEmpty(cell4.getRichStringCellValue().toString()) || !StringUtils.equals("预警比例", cell4.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少预算比例列";
		return null;
	}

	
	
}