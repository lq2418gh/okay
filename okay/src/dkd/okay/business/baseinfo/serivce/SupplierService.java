package dkd.okay.business.baseinfo.serivce;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import dkd.okay.business.Constants;
import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.IntermediateSupplier;
import dkd.okay.business.baseinfo.bo.Supplier;
import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.business.baseinfo.bo.SupplierScore;
import dkd.okay.business.baseinfo.dao.IntermediateSupplierDao;
import dkd.okay.business.baseinfo.dao.SupplierDao;
import dkd.okay.system.service.DictionaryServiceImpl;
import dkd.okay.system.service.FlowsetServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * @author:linss
 * @date:2017年8月21日
 */
@Service(value="supplierService")
@Transactional
public class SupplierService {
	
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	private SupplierScoreService supplierScoreService;
	@Autowired
	private FlowsetServiceImpl flowsetServiceImpl;
	@Autowired
	private SupplierCapacityService supplierCapacityService;
	@Autowired
	private IntermediateSupplierDao middleSupplierDao;
	@Autowired
	private DictionaryServiceImpl dictionaryService;
   //分页查询
	public Map<String, Object> query(Supplier supplier, String pageNow) {
		Map<String, Object> map = new HashMap<String, Object>();
		Calendar now = Calendar.getInstance();
		String year =now.get(Calendar.YEAR)+"";//当前时间的 年份2017
		PageUtil pageUtil = new PageUtil();	
		map.put("year", year);
		map.put("supplier_name", supplier.getSupplier_name());
		map.put("supplier_no", supplier.getSupplier_no());
		map.put("province", supplier.getProvince());
		map.put("supplier_type", supplier.getSupplier_type());
		map.put("state", supplier.getState());
		int totalCount = supplierDao.count(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<Supplier> supplierList = supplierDao.selectByCondition(map);
		map.put("supplierList", supplierList);
		return map;
	}
	/**
	 * 根据id查找供应商信息
	 * @param supplierId
	 * @return 供应商
	 * @date:2017年9月27日
	 * @author:linss
	 */
	public Supplier selectSupplierById(String supplierId) {
		Supplier supplier= supplierDao.get(supplierId);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		Date date = new Date();
		String yyyy = sdf.format(date);
		List<SupplierScore> list  = supplier.getSupplierScoreList();
		boolean flag = checkYear(list);
		if(!flag){
			SupplierScore supplierScore = new SupplierScore();
			supplierScore.setYear(yyyy);
			supplierScore.setFlag("1");//当年的供应商等级信息可编辑
			list.add(supplierScore);
		}else{
			for (SupplierScore supplierScore : list) {
				if(StringUtils.equals(yyyy, supplierScore.getYear())){
					supplierScore.setFlag("1");
				}
			}
		}
		return supplier;
	}
   /**
    * 查看供应商是否有当年的等级信息
    * @param list
    * @return boolean
    * @date:2017年9月27日
    * @author:linss
    */
	private boolean checkYear(List<SupplierScore> list) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		boolean flag = false;
		String yyyy = sdf.format(new Date());
		for (SupplierScore supplierScore : list) {
			if(supplierScore.getYear().equals(yyyy)){
				flag = true;
			}
		}
		return flag;
	}
	//保存
	public void saveSupplier(Supplier supplier) {
		if(StringUtils.isNotEmpty(supplier.getId())){
			supplier.setState(supplierDao.get(supplier.getId()).getState());
			//不可使用状态or临时状态的供应商编辑保存时状态改为'新建' cause：只有新建状态的供应商才可提交审批
			if("临时".equals(supplier.getState()) || "不可使用".equals(supplier.getState())){
				supplier.setState("新建");
			}
			supplierDao.update(supplier);
			supplierScoreService.delete(supplier.getId());
			List<SupplierScore> scoreList = supplier.getSupplierScoreList();
			if(null!=scoreList){
				for (SupplierScore supplierScore : scoreList) {
					supplierScore.setSupplier_id(supplier);
					supplierScore.setId(UUIDGenerator.getUUID());
					supplierScoreService.insert(supplierScore);;
				}
			}
		}else{
			setDefault(supplier);
			supplierDao.insert(supplier);
		}
	}
	//生成id、状态、供应商编码
	private Supplier setDefault(Supplier supplier) {
		supplier.setId(UUIDGenerator.getUUID());//id
		supplier.setState("新建");//状态
		//流水号
		String num = supplierDao.findMaxNo();
		String size = "";
		if(StringUtils.isEmpty(num)){
			size = "1";
		}else{
			int a = Integer.parseInt(num.substring(4, num.length()));
			size = a +1 + "";
		}
		String zero = "000000";
		supplier.setSupplier_no("QSNO" + zero.substring(0,6 - size.length()) + size);//供应商编码
		return supplier;
	}
	/**
	 * 删除供应商
	 * @param supplierId 供应商id
	 * @date:2017年9月27日
	 * @author:linss
	 */
	public void deleteSupplier(String supplierId) {
		supplierDao.delete(supplierId);
	}
	/**
	 * 根据供应商名称和id查询供应商  (校验重复使用)
	 * @param supplier_name
	 * @param id
	 * @return boolean
	 * @date:2017年9月27日
	 * @author:linss
	 */
	public boolean findSupplierByName(String supplier_name, String id) {
		int num ;
		if(StringUtils.isNotEmpty(id)){
			num  = supplierDao.findSupplierByNameAndId(supplier_name,id);
		}else{
			num  = supplierDao.findSupplierByName(supplier_name);
		}
		if(num>0){
			return false;
		}else{
			return true;
		}
	}
	/**
	 * 提交审批
	 * @param supplierId
	 * @date:2017年9月27日
	 * @author:linss
	 */
	public void supplierTj(String supplierId) {
		Supplier supplier = supplierDao.get(supplierId);
		supplier.setState("待审批");
		supplierDao.update(supplier);
		flowsetServiceImpl.initRecord("supplierApproval",supplier.getSupplier_no());
	}

	public List<SupplierCapacity> getSupplierCapacity(String supplierId) {
		List<SupplierCapacity> list = supplierCapacityService.getSupplierCapacity(supplierId);
		return list;
	}
	
	//审批通过
	public void  passApproval(String supplier_no){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		Supplier supplier = supplierDao.getSupplierByNo(supplier_no);
		List<SupplierScore> scoreList = supplier.getSupplierScoreList();
		String score = null;
		for (SupplierScore supplierScore : scoreList) {
			if(supplierScore.getYear().equals(sdf.format(new Date()))){
				score = supplierScore.getScore();
			}
		}
		if("D".equals(score)){
			supplier.setState("不可使用");
		}else{
			supplier.setState("可使用");
		}
		supplierDao.update(supplier);
	}
	/**
	 * 审批不通过时调用
	 * @param supplier_no
	 * @date:2017年9月8日
	 * @author:linss
	 */
	public void rejectApproval(String supplier_no){
		Supplier supplier = supplierDao.getSupplierByNo(supplier_no);
		IntermediateSupplier iSupplier = middleSupplierDao.get(supplier.getId());
		if(null != iSupplier){
			BeanUtils.copyProperties(iSupplier, supplier);
			supplierDao.update(supplier);
			middleSupplierDao.delete(iSupplier.getTemp_id());
		}
	}
	/**
	 * 保存提交( 可使用状态供应商编辑信息时调用)
	 * @param supplier
	 * @date:2017年9月27日
	 * @author:linss
	 */
	public void saveSupplierTj(Supplier supplier) {
		Supplier originalSupplier = supplierDao.get(supplier.getId());
		supplierScoreService.delete(supplier.getId());
		List<SupplierScore> scoreList = supplier.getSupplierScoreList();
		if(null!=scoreList){
			for (SupplierScore supplierScore : scoreList) {
				supplierScore.setSupplier_id(supplier);
				supplierScore.setId(UUIDGenerator.getUUID());
				supplierScoreService.insert(supplierScore);;
			}
		}
		IntermediateSupplier middleSupplier = new IntermediateSupplier();
		BeanUtils.copyProperties(originalSupplier, middleSupplier);
		middleSupplier.setTemp_id(UUIDGenerator.getUUID());
		//1.保存原始数据至中间表
		middleSupplierDao.insert(middleSupplier);
		//2、保存数据
		supplierDao.update(supplier);
		//3.提交该供应商
		supplierTj(supplier.getId());
	}

	public List<Supplier> findNoSupplierName(List<String> noSuppliers) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noSuppliers", noSuppliers);
		return supplierDao.findNoSupplierName(map);
	}
	public Supplier getSupplierByNo(String supplierNo) {
		return supplierDao.getSupplierByNo(supplierNo);
	}
//物资类别导入功能开始-------------------------------------------------------------------------------	
	/**
	 * 保存上传物料类别
	 */
	public String saveSupplierExcle(HttpServletRequest request,ExcleFileForm excleFileForm){
		String validateSupplierExcleFile=null;
		try {
			validateSupplierExcleFile = this.validateSupplierExcleFile(request,excleFileForm.getExcle());
		} catch (IOException e) {
			e.printStackTrace();
			return "上传失败！";
		}
		if(StringUtils.isNotEmpty(validateSupplierExcleFile))//校验上传文档格式
			return validateSupplierExcleFile;
		validateSupplierExcleFile = this.validateSupplierExcleFile(excleFileForm.getExcle(),request);
		if(StringUtils.isNotEmpty(validateSupplierExcleFile))//校验上传文档格式
			return validateSupplierExcleFile;		
		return saveSipplierExcle(excleFileForm.getExcle(),request);
	}
	
	/**
	 * 校验物料类型编码文件格式
	 */
	public String validateSupplierExcleFile(HttpServletRequest request,MultipartFile excle)throws IOException{
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
		XSSFCell cell5 = row.getCell(4);//格
		XSSFCell cell6 = row.getCell(5);//格
		XSSFCell cell7 = row.getCell(6);//格
		XSSFCell cell8 = row.getCell(7);//格
		XSSFCell cell9 = row.getCell(8);//格
		XSSFCell cell10 = row.getCell(9);//格
		XSSFCell cell11 = row.getCell(10);//格
		XSSFCell cell12 = row.getCell(11);//格
		XSSFCell cell13 = row.getCell(12);//格
		XSSFCell cell14 = row.getCell(13);//格
		XSSFCell cell15 = row.getCell(14);//格
		XSSFCell cell16 = row.getCell(15);//格
		XSSFCell cell17 = row.getCell(16);//格
		XSSFCell cell18 = row.getCell(17);//格
		XSSFCell cell19 = row.getCell(18);//格
		XSSFCell cell20 = row.getCell(19);//格
		XSSFCell cell21 = row.getCell(20);//格
		if (cell1 == null || StringUtils.isEmpty(cell1.getRichStringCellValue().toString()) || !StringUtils.equals("供应商名称", cell1.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少供应商名称";
		if (cell2 == null || StringUtils.isEmpty(cell2.getRichStringCellValue().toString()) || !StringUtils.equals("法人", cell2.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少法人列";
		if (cell3 == null || StringUtils.isEmpty(cell3.getRichStringCellValue().toString()) || !StringUtils.equals("省份", cell3.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少省份列";
		if (cell4 == null || StringUtils.isEmpty(cell4.getRichStringCellValue().toString()) || !StringUtils.equals("地址", cell4.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少地址列";
		if (cell5 == null || StringUtils.isEmpty(cell5.getRichStringCellValue().toString()) || !StringUtils.equals("传真", cell5.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少传真列";
		if (cell6 == null || StringUtils.isEmpty(cell6.getRichStringCellValue().toString()) || !StringUtils.equals("邮箱", cell6.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少邮箱列";
		if (cell7 == null || StringUtils.isEmpty(cell7.getRichStringCellValue().toString()) || !StringUtils.equals("联系人", cell7.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少联系人列";
		if (cell8 == null || StringUtils.isEmpty(cell8.getRichStringCellValue().toString()) || !StringUtils.equals("职务", cell8.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少职务列";
		if (cell9 == null || StringUtils.isEmpty(cell9.getRichStringCellValue().toString()) || !StringUtils.equals("联系电话", cell9.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少联系电话列";
		if (cell10 == null || StringUtils.isEmpty(cell10.getRichStringCellValue().toString()) || !StringUtils.equals("财务联系人", cell10.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少财务联系人列";
		if (cell11 == null || StringUtils.isEmpty(cell11.getRichStringCellValue().toString()) || !StringUtils.equals("财务联系电话", cell11.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少财务联系电话列";
		if (cell12 == null || StringUtils.isEmpty(cell12.getRichStringCellValue().toString()) || !StringUtils.equals("财务邮箱", cell12.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少财务邮箱列";
		if (cell13 == null || StringUtils.isEmpty(cell13.getRichStringCellValue().toString()) || !StringUtils.equals("开户行", cell13.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少开户行列";
		if (cell14 == null || StringUtils.isEmpty(cell14.getRichStringCellValue().toString()) || !StringUtils.equals("开户行账号", cell14.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少开户行账号列";
		if (cell15 == null || StringUtils.isEmpty(cell15.getRichStringCellValue().toString()) || !StringUtils.equals("社会信用代码", cell15.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少社会信用代码列";
		if (cell16 == null || StringUtils.isEmpty(cell16.getRichStringCellValue().toString()) || !StringUtils.equals("质量体系", cell16.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少质量体系列";
		if (cell17 == null || StringUtils.isEmpty(cell17.getRichStringCellValue().toString()) || !StringUtils.equals("卫生许可证", cell17.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少卫生许可证列";
		if (cell18 == null || StringUtils.isEmpty(cell18.getRichStringCellValue().toString()) || !StringUtils.equals("食品流通许可证", cell18.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少食品流通许可证列";
		if (cell19 == null || StringUtils.isEmpty(cell19.getRichStringCellValue().toString()) || !StringUtils.equals("供应商类型", cell19.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少供应商类型列";
		if (cell20 == null || StringUtils.isEmpty(cell20.getRichStringCellValue().toString()) || !StringUtils.equals("企业简介", cell20.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少企业简介列";
		if (cell21 == null || StringUtils.isEmpty(cell21.getRichStringCellValue().toString()) || !StringUtils.equals("备注", cell21.getRichStringCellValue().toString()))
			return "excel导入模版不符和要求，缺少备注列";
		return null;
	}
	
	/**
	 * 校验上传的物料类别文件
	 */
	public String validateSupplierExcleFile(MultipartFile excle,HttpServletRequest request){
		XSSFWorkbook xwb = null;
		try {
			xwb = new XSSFWorkbook(excle.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		} //生成一个表格对象
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		XSSFRow row = null;//行
		Map<String, String> map = dictionaryService.selectDictionaryByParentCode("province");//查找出所有的省份信息
		Map<String, String> maps = dictionaryService.selectDictionaryByParentCode("supplier_type");//查找出供应商类型
		for (int i = 1; i < sheet.getPhysicalNumberOfRows(); i++) {//循环行数
			row = sheet.getRow(i);
			if(row == null){
				if(i != 1){
					continue;
				}else{
					return "excel文件没有数据";	
				}
			}else{
				XSSFCell cell1 = row.getCell(0);
				XSSFCell cell3 = row.getCell(2);
				XSSFCell cell4 = row.getCell(3);
				XSSFCell cell6 = row.getCell(5);
				XSSFCell cell7 = row.getCell(6);
				XSSFCell cell8 = row.getCell(7);
				XSSFCell cell9 = row.getCell(8);
				XSSFCell cell13 = row.getCell(12);
				XSSFCell cell14 = row.getCell(13);
				XSSFCell cell15 = row.getCell(14);
				XSSFCell cell19 = row.getCell(18);
				if((cell1 == null || Constants.getCellContent(cell1).equals(""))
						&& (cell3 == null || Constants.getCellContent(cell3).equals("")) 
						&& (cell4 == null || Constants.getCellContent(cell4).equals(""))
						&& (cell6 == null || Constants.getCellContent(cell6).equals(""))
						&& (cell7 == null || Constants.getCellContent(cell7).equals(""))
						&& (cell8 == null || Constants.getCellContent(cell8).equals(""))
						&& (cell9 == null || Constants.getCellContent(cell9).equals(""))
						&& (cell13 == null || Constants.getCellContent(cell13).equals(""))
						&& (cell14 == null || Constants.getCellContent(cell14).equals(""))
						&& (cell15 == null || Constants.getCellContent(cell15).equals(""))
						&& (cell19 == null || Constants.getCellContent(cell19).equals(""))){
					continue;
				}
				//判断供应商名称不能为空
				if(cell1 == null || (cell1.getCellType() == XSSFCell.CELL_TYPE_STRING && StringUtils.isEmpty(cell1.getStringCellValue()))){//判空
					return "第"+(i+1)+"行excel文件数据错误,供应商名称不能为空";	
				}
				//判断供应商名称不能重复
				if(supplierDao.findSupplierByName(cell1.getStringCellValue())>0){
					return "第"+(i+1)+"行excel文件数据错误,供应商名称不能重复";						
				}
				//判断省份不能为空
				if(cell3 == null || (cell3.getCellType() == XSSFCell.CELL_TYPE_STRING && StringUtils.isEmpty(cell3.getStringCellValue()))){//判空
					return "第"+(i+1)+"行excel文件数据错误,省份不能为空";	
				}
				//判断省份是否存在
				if(map.get(cell3.getStringCellValue())==null){
					return "第"+(i+1)+"行excel文件数据错误,省份不存在";						
				}
				//判断地址不能为空
				if(cell4 == null || cell4.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell4.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,地址不能为空";
				}
				//判断传真是否正确
				/*if(!Pattern.compile("d{3}-d{8}|d{4}-d{7}").matcher(cell5.getStringCellValue()).matches()){
					return "第"+(i+1)+"行excel文件数据错误,传真格式有误";
				}*/
				//判断邮箱不能为空
				if(cell6 == null || cell6.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell6.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,邮箱不能为空";
				}
				//判断邮箱是否正确
				if(!Pattern.compile("^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$").matcher(cell6.getStringCellValue()).matches()){
					return "第"+(i+1)+"行excel文件数据错误,邮箱格式有误";
				}
				//判断联系人不能为空
				if(cell7 == null || cell7.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell7.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,联系人不能为空";
				}
				//判断职务不能为空
				if(cell8 == null || cell8.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell8.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,职务不能为空";
				}
				//判断联系电话不能为空
				if(cell9 == null || cell9.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell9.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,联系电话不能为空";
				}
				//判断手机号是否正确
				if(!Pattern.compile("^(((13[0-9])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8})|(0\\d{2}-\\d{8})|(0\\d{3}-\\d{7})$").matcher(cell9.getStringCellValue()).matches()){
					return "第"+(i+1)+"行excel文件数据错误,联系电话格式有误";
				}
				//判断开户行不能为空
				if(cell13 == null || cell13.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell13.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,开户行不能为空";
				}
				//判断开户行账号不能为空
				if(cell14 == null || cell14.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell14.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,开户行账号不能为空";
				}
				//判断社会信用代码不能为空
				if(cell15 == null || cell15.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell15.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,社会信用代码不能为空";
				}
				//判断供应商类型不能为空
				if(cell19 == null || cell19.getCellType() != XSSFCell.CELL_TYPE_STRING || StringUtils.isEmpty(cell19.getStringCellValue())){
					return "第"+(i+1)+"行excel文件数据错误,供应商类型不能为空";
				}
				//判断供应商类型是否存在
				if(maps.get(cell19.getStringCellValue())==null){
					return "第"+(i+1)+"行excel文件数据错误,供应商类型不存在";						
				}
			}
		}
		return null;
	}
	
	/**
	 * 保存供应商上传文件中的值
	 */
	public String saveSipplierExcle(MultipartFile excle,HttpServletRequest request){
		XSSFWorkbook xwb = null;
		try{
			xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
		}catch(Exception e){
			return Common.selectEnglish("请使用Excel2003或Excel2007格式版本", request);
		}
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		XSSFRow row = null;//行
		Supplier supplier = null;
		for (int i = 1; i < sheet.getPhysicalNumberOfRows(); i++) {//循环行数
			row = sheet.getRow(i);
			if(row == null){
				if(i != 1){
					continue;
				}else{
					return "excel文件没有数据";	
				}
			}else{
				XSSFCell cell1 = row.getCell(0);
				XSSFCell cell2 = row.getCell(1);
				XSSFCell cell3 = row.getCell(2);
				XSSFCell cell4 = row.getCell(3);
				XSSFCell cell5 = row.getCell(4);
				XSSFCell cell6 = row.getCell(5);
				XSSFCell cell7 = row.getCell(6);
				XSSFCell cell8 = row.getCell(7);
				XSSFCell cell9 = row.getCell(8);
				XSSFCell cell10 = row.getCell(9);
				XSSFCell cell11 = row.getCell(10);
				XSSFCell cell12 = row.getCell(11);
				XSSFCell cell13 = row.getCell(12);
				XSSFCell cell14 = row.getCell(13);
				XSSFCell cell15 = row.getCell(14);
				XSSFCell cell16 = row.getCell(15);
				XSSFCell cell17 = row.getCell(16);
				XSSFCell cell18 = row.getCell(17);
				XSSFCell cell19 = row.getCell(18);
				XSSFCell cell20 = row.getCell(19);
				XSSFCell cell21 = row.getCell(20);
				if((cell1 == null || Constants.getCellContent(cell1).equals(""))
						&& (cell3 == null || Constants.getCellContent(cell3).equals("")) 
						&& (cell4 == null || Constants.getCellContent(cell4).equals(""))
						&& (cell6 == null || Constants.getCellContent(cell6).equals(""))
						&& (cell7 == null || Constants.getCellContent(cell7).equals(""))
						&& (cell8 == null || Constants.getCellContent(cell8).equals(""))
						&& (cell9 == null || Constants.getCellContent(cell9).equals(""))
						&& (cell13 == null || Constants.getCellContent(cell13).equals(""))
						&& (cell14 == null || Constants.getCellContent(cell14).equals(""))
						&& (cell15 == null || Constants.getCellContent(cell15).equals(""))
						&& (cell19 == null || Constants.getCellContent(cell19).equals(""))){
					continue;
				}
				supplier = new Supplier();
				supplier.setSupplier_name(Constants.getCellContent(cell1));
				supplier.setLegal_person(Constants.getCellContent(cell2));	
				supplier.setProvince(Constants.getCellContent(cell3));
				supplier.setAddress(Constants.getCellContent(cell4));
				supplier.setFax(Constants.getCellContent(cell5));
				supplier.setEmail(Constants.getCellContent(cell6));
				supplier.setLinkman(Constants.getCellContent(cell7));
				supplier.setPost(Constants.getCellContent(cell8));	
				supplier.setTel(Constants.getCellContent(cell9));
				supplier.setFinancial_contact(Constants.getCellContent(cell10));
				supplier.setFinancial_tel(Constants.getCellContent(cell11));
				supplier.setFinancial_email(Constants.getCellContent(cell12));
				supplier.setOpening_bank(Constants.getCellContent(cell13));
				supplier.setBank_account_number(Constants.getCellContent(cell14));
				supplier.setSocial_credit_code(Constants.getCellContent(cell15));
				supplier.setQuality_system(Constants.getCellContent(cell16));
				supplier.setHygiene_license(Constants.getCellContent(cell17));
				supplier.setFood_circulation_license(Constants.getCellContent(cell18));
				supplier.setSupplier_type(Constants.getCellContent(cell19));
				supplier.setBrief_introduction(Constants.getCellContent(cell20));
				supplier.setRemark(Constants.getCellContent(cell21));
				setDefault(supplier);
				supplierDao.insert(supplier);
			}
		}
		return "上传成功！";
	}
//供应商导入功能结束-------------------------------------------------------------------------------	
}
