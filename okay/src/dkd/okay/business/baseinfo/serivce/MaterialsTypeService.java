package dkd.okay.business.baseinfo.serivce;
 
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.MaterialType;
import dkd.okay.business.baseinfo.dao.MaterialTypeDao;
import dkd.okay.system.service.DictionaryServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;
/**
 * 物资类别实现类
 * @author ZhangYang
 *
 */
@Service(value="materialsTypeService")
@Transactional
public class MaterialsTypeService{
	
	@Autowired
	private MaterialTypeDao materialsTypeDao;
	@Autowired
	DictionaryServiceImpl dictionaryService;
	
	/**
	 * 查询所有物料类别信息
	 */
	public List<MaterialType> selectAllTwo(String id) {
		return materialsTypeDao.selectAllTwo(id);
	}	
	/**
	 * 根据父级id分页查询所有下级物料类别信息
	 */
	public Map<String, Object> selectMaterialsTypeByParentId(String pageNow,String parentId,MaterialType materialType) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("parentId", parentId);
		map.put("materialType", materialType);
		map.put("page", pageUtil.getPage(pageNow, materialsTypeDao.count(map)));//根据父ID查询数量
		List<MaterialType> materialsTypeList = materialsTypeDao.selectByCondition(map);//根据父ID查询信息
		map.put("materialsTypeList", materialsTypeList);
		return map;
	}
	
	/**
	 * 根据ID查询物资类别信息
	 */
	public MaterialType selectMaterialsTypeById(String parentId){
		return materialsTypeDao.get(parentId);
	}
	
	/**
	 * 根据ID查询物资类别信息(含单位显示中文)-查看用
	 */
	public MaterialType selectMaterialsTypeAndDicAndParentById(String id){
		return materialsTypeDao.selectMaterialsTypeAndDicAndParentById(id);
	}
	
	/**
	 * 根据ID查询物资类别信息(不含单位，父类编码和父类名称)-编辑用
	 */
	public MaterialType selectMaterialsTypeAndParentById(String id){
		return materialsTypeDao.selectMaterialsTypeAndParentById(id);
	}
	
	/**
	 * 根据父节点id查找子节点code信息-新建物资类别用（编码自动赋值）
	 */
	public String selectParentCode(String parentId){
		List<MaterialType> list=materialsTypeDao.selectParentCode(parentId);
		for (MaterialType materialType : list) {
			if(materialType!=null){
				return materialType.getCode();
			}
		}
		return null;
	}
	/**
	 * 保存物资类别信息
	 */
	public String saveMaterialsType(MaterialType materialType) {
		 String back="";
		if(StringUtils.isEmpty(materialType.getId())){
			materialType.setId(UUIDGenerator.getUUID());
			//拼接字符串 ,设置code
			materialType.setCode(materialType.getParentCode()+materialType.getCode());
			if(materialsTypeDao.insert(materialType)>0){
				back="保存成功";
			}else{
				back="保存失败";
			}
		}else{
			if(materialsTypeDao.update(materialType)>0){
				back="修改成功";
			}else{
				back="修改失败";
			}
		}
		return back;
	}
	/**
	 * 删除物资类别
	 */
	public String deleteMaterialsType(String id) {
		String back="";
		if(materialsTypeDao.delete(id)>0){
			back="删除成功";
		}else{
			back="删除失败";
		}
		return back;
	}
	/**
	 * 根据父级ID查询物资信息
	 */
	public List<MaterialType> selectMaterialTypeByPid(String parent){
		List<MaterialType> list =  materialsTypeDao.selectByPid(parent);
		return list;
	}
	/**
	 * 根据ID查询物资类别的code是否存在重复
	 */
	public boolean selectMaterialTypeCode(String code){
		List<MaterialType> list = materialsTypeDao.selectMaterialTypeCode(code);
		if(list.size()>0){
			return false;
		}
		return true;
	}	
//别的模块调取物资方法-------------------------------------------------------------------------	
	/**
	 * 查询所有物料类别信息
	 */
	public List<MaterialType> selectAll(){
		return materialsTypeDao.selectAll();
	}
	/**
	 * 根据code查询物资类别导入用
	 */
	public MaterialType selectMaterialTypeByCode(String code) {
		return materialsTypeDao.selectMaterialTypeByCode(code);
	}
//物资类别导入功能开始-------------------------------------------------------------------------------	
	/**
	 * 保存上传物料类别
	 */
	public String saveMaterialsTypeExcle(HttpServletRequest request,ExcleFileForm excleFileForm){
		String validateMaterialsTypeExcleFile=null;
		try {
		validateMaterialsTypeExcleFile = this.validateMaterialsTypeExcle(request,excleFileForm.getExcle());
		} catch (IOException e) {
			e.printStackTrace();
			return "上传失败！";
		}
		if(StringUtils.isNotEmpty(validateMaterialsTypeExcleFile))//校验上传文档格式
			return validateMaterialsTypeExcleFile;
		validateMaterialsTypeExcleFile = this.validateMaterialsTypeExcleFile(excleFileForm.getExcle(),request);
		if(StringUtils.isNotEmpty(validateMaterialsTypeExcleFile))//校验上传文档格式
			return validateMaterialsTypeExcleFile;		
		return saveMaterialsTypeExcle(excleFileForm.getExcle(),request);
	}
	
	/**
	 * 校验物料类型编码文件格式
	 */
	public String validateMaterialsTypeExcle(HttpServletRequest request,MultipartFile excle)throws IOException{
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
		if (cell1 == null || StringUtils.isEmpty(getCellContentValue(cell1).toString()) || !StringUtils.equals("父类编码", getCellContentValue(cell1).toString()))
			return "excel导入模版不符和要求，缺少父类编码列";
		if (cell2 == null || StringUtils.isEmpty(getCellContentValue(cell2).toString()) || !StringUtils.equals("物资类别编码", getCellContentValue(cell2).toString()))
			return "excel导入模版不符和要求，缺少物资类别编码列";
		if (cell3 == null || StringUtils.isEmpty(getCellContentValue(cell3).toString()) || !StringUtils.equals("物资类别名称", getCellContentValue(cell3).toString()))
			return "excel导入模版不符和要求，缺少物资类别名称列";
		if (cell4 == null || StringUtils.isEmpty(getCellContentValue(cell4).toString()) || !StringUtils.equals("计量单位", getCellContentValue(cell4).toString()))
			return "excel导入模版不符和要求，缺少计量单位列";
		if (cell5 == null || StringUtils.isEmpty(getCellContentValue(cell5).toString()) || !StringUtils.equals("说明", getCellContentValue(cell5).toString()))
			return "excel导入模版不符和要求，缺少说明列";
		return null;
	}
	
	/**
	 * 校验上传的物料类别文件
	 */
	public String validateMaterialsTypeExcleFile(MultipartFile excle,HttpServletRequest request){
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
				XSSFCell cell1 = row.getCell(0);//父类编码
				XSSFCell cell2 = row.getCell(1);//物资类别编码
				XSSFCell cell3 = row.getCell(2);//物资类别名称
				if((cell1 == null || getCellContentValue(cell1).equals("")) 
						&& (cell2 == null || getCellContentValue(cell2).equals("")) 
						&& (cell3 == null || getCellContentValue(cell3).equals("")) 
						){
					continue;
				}
				//判断父类编码值为空的时候，物资编码长度不能大于1,切不为空。
				if(cell1 == null || ( StringUtils.isEmpty(getCellContentValue(cell1)))){//判空
					//判断物料类别编码为空，或格式不对，或值为空，或长度大于1。
					if(cell2 == null ||  StringUtils.isEmpty(getCellContentValue(cell2)) || getCellContentValue(cell2).length() != 1){
						return "第"+(i+1)+"行excel文件数据错误,父类编码为空时，物资编码长度是1位(不能为空,格式不能有误)";						
					}
				//判断父类编码不为空，同时符合格式，同时值不为空，值不等于1位或3位
				}else if(cell1 != null && StringUtils.isNotEmpty(getCellContentValue(cell1)) && getCellContentValue(cell1).length() != 1 && getCellContentValue(cell1).length() != 3 ){//判长度
					return "第"+(i+1)+"行excel文件数据错误,父类编码长度有误";	
				}
				//判断父类编码不为空的时候，物资编码的长度
				if(cell1 != null && StringUtils.isNotEmpty(getCellContentValue(cell1))){
					if(getCellContentValue(cell1).length() == 1 && getCellContentValue(cell2).length()!=3){return "第"+(i+1)+"行excel文件数据错误,物资编码长度有误";}
					if(getCellContentValue(cell1).length() == 3 && getCellContentValue(cell2).length()!=6){return "第"+(i+1)+"行excel文件数据错误,物资编码长度有误";}
					if(getCellContentValue(cell1).length() == 1 && !getCellContentValue(cell1).equals( getCellContentValue(cell2).substring(0,1))){return "第"+(i+1)+"行excel文件数据错误,物资编码和父类不匹配";}
					if(getCellContentValue(cell1).length() == 3 && !getCellContentValue(cell1).equals( getCellContentValue(cell2).substring(0,3))){return "第"+(i+1)+"行excel文件数据错误,物资编码和父类不匹配";}
				}
				//判断物料名称为空,格式错误
				if(cell3 == null || StringUtils.isEmpty(getCellContentValue(cell3))){
					return "第"+(i+1)+"行excel文件数据错误,物资名称有空值或类型错误";
				}
				//判断物料编码是否存在;
				if(materialsTypeDao.selectMaterialTypeCode(getCellContentValue(cell2)).size()>0){
					return "第"+(i+1)+"行excel文件物料编码已存在,请到系统中去修改";
				}
			}
		}
		return null;
	}
	
	/**
	 * 保存物料类别上传文件中的值
	 */
	public String saveMaterialsTypeExcle(MultipartFile excle,HttpServletRequest request){
		Map<String, String> map = dictionaryService.selectDictionaryByParentCode("unit");
		XSSFWorkbook xwb = null;
		try{
			xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
		}catch(Exception e){
			return Common.selectEnglish("请使用Excel2003或Excel2007格式版本", request);
		}
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		XSSFRow row = null;//行
		MaterialType materialsType = null;
		MaterialType materialsTypeParentId = null;
		String parentId = "0";
		Integer levels = 1;
		for (int i = 1; i < sheet.getPhysicalNumberOfRows(); i++) {//循环行数
			row = sheet.getRow(i);
			if(row == null){
				if(i != 1){
					continue;
				}else{
					return "excel文件没有数据";	
				}
			}else{
				XSSFCell cell1 = row.getCell(0);//格
				XSSFCell cell2 = row.getCell(1);//格
				XSSFCell cell3 = row.getCell(2);//格
				XSSFCell cell4 = row.getCell(3);//格
				XSSFCell cell5 = row.getCell(4);//格
				if((cell1 == null || getCellContentValue(cell1).equals("")) 
						&& (cell2 == null || getCellContentValue(cell2).equals("")) 
						&& (cell3 == null || getCellContentValue(cell3).equals("")) 
						&& (cell4 == null || getCellContentValue(cell4).equals(""))){
					continue;
				}
				if(cell1!=null){
					if(StringUtils.isNotEmpty(getCellContentValue(cell1)))//ParentId
						materialsTypeParentId = materialsTypeDao.selectMaterialTypeByCode(getCellContentValue(cell1));
				
					if(materialsTypeParentId == null)
						return "第"+(i+1)+"行excel文件数据错误,数据库没有此父类编码";
					else
						parentId = materialsTypeParentId.getId();
				}
				if(getCellContentValue(cell2).length() == 3)
					levels = 2;
				else if(getCellContentValue(cell2).length() == 6)
					levels = 3;
				
				materialsType = new MaterialType();
				if(materialsTypeDao.selectMaterialTypeByCode(getCellContentValue(cell2))==null){
					materialsType.setId(UUIDGenerator.getUUID());
					materialsType.setParent(parentId);
					materialsType.setCode(getCellContentValue(cell2));
					materialsType.setName(getCellContentValue(cell3));
					materialsType.setLevels(levels);
					if (cell4 != null && !getCellContentValue(cell4).equals("")&&map.get(getCellContentValue(cell4))==null) {
						return "第"+(i+1)+"行excel文件数据错误,数据库没有此计量单位";
					}else{
						materialsType.setUnit(cell4==null?"":getCellContentValue(cell4));
					}
					if(cell5 != null){
						materialsType.setRemark(getCellContentValue(cell5));	
					}
					materialsTypeDao.insert(materialsType);
				}
			}
		}
		return "上传成功！";
	}
	/**
	 * 校验数据格式的
	 * @param cell
	 * @return
	 */
	private static String getCellContentValue(XSSFCell cell) {
		if(cell != null){
			switch (cell.getCellType()) {  
				case Cell.CELL_TYPE_BLANK:  
					return "";  
				case Cell.CELL_TYPE_BOOLEAN:  
					return String.valueOf(cell.getBooleanCellValue()).trim();  
				case Cell.CELL_TYPE_ERROR:  
					return String.valueOf(cell.getErrorCellValue()).trim();  
				case Cell.CELL_TYPE_FORMULA:  
					return cell.getCellFormula();  
				case Cell.CELL_TYPE_NUMERIC: 
					DecimalFormat df = new DecimalFormat("0");   
					String string = df.format(cell.getNumericCellValue()).trim();
					if (string.length()==6) {
						return string;
					}
					if(3<string.length()&&string.length()<6) {
						  int length = string.length();
						  
						  for (int i = 0; i < 6-length; i++) {
							  string=string+"0";
					      }
						  return string;
					}
					if (string.length()==3) {
						return string;
					}
					if (string.length()<3) {
						int length = string.length();
						  
						  for (int i = 0; i < 3-length; i++) {
							  string=string+"0";
					      }
						  return string;
					}
				default:  
					return cell.getStringCellValue().trim(); 
			}  
		}else{
			return "";
		}
	}

//物资类别导入功能结束-------------------------------------------------------------------------------	
}