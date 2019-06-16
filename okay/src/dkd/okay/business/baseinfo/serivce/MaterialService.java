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

import dkd.okay.business.Constants;
import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.business.baseinfo.bo.MaterialType;
import dkd.okay.business.baseinfo.dao.MaterialDao;
import dkd.okay.system.service.DictionaryServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;


/**
 * 物资信息Service类
 * @author ZhangYang
 *
 */
@Service(value="materialService")
@Transactional
public class MaterialService{
	
	@Autowired
	private MaterialDao materialDao;
	
	@Autowired
	private MaterialsTypeService materialsTypeService;

	@Autowired
	private DictionaryServiceImpl dictionaryServiceImpl;
	
	/**
	 * 根据父级id分页查询所有下级物料类别信息
	 */
	public Map<String, Object> selectCommodityByParentId(String pageNow,String parentId,Material material,HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		if(!StringUtils.equals("0", parentId)){
			MaterialType materialType = materialsTypeService.selectMaterialsTypeById(parentId);
			map.put("code", materialType.getCode());
			map.put("parentId",parentId);
		}		
		map.put("material", material);
		map.put("page", pageUtil.getPage(pageNow, materialDao.count(map)));
		List<Material> commodityList = materialDao.selectByCondition(map);
		map.put("commodityList", commodityList);
		return map;
	}
	
	/**
	 * 根据ID查询物资信息
	 */
	public Material selectCommodityById(String id){
		return materialDao.get(id);
	}
	
	/**
	 * 根据ID查询物资信息
	 */
	public Material selectMterialAndDicAndParentByPk(String id){
		return materialDao.selectMterialAndDicAndParentByPk(id);
	}
	
	/**
	 * 根据ID查询物资信息
	 * @param commodityId
	 * @return
	 */
	public Material selectMterialAndParentByPk(String id){
		return materialDao.selectMterialAndParentByPk(id);
	}
	
	/**
	 * 根据父级ID查询物资信息
	 */
	public List<Material> selectMaterialByPid(String material_type){
		List<Material> list =  materialDao.selectByPid(material_type);
		return list;
	}
	
	/**
	 * 根据父节点id查找子节点code信息-新建物资用（编码自动赋值）
	 */
	public String selectParentCode(String parentId){
		List<Material> list=materialDao.selectByPidDesc(parentId);
		for (Material material : list) {
			if(material!=null){
				return material.getCode();
			}
		}
		return null;
	}
	
	/**
	 * 保存物资信息
	 */
	public String saveCommodity(Material material) {
		String back="";
		if(StringUtils.isEmpty(material.getId())){
		material.setId(UUIDGenerator.getUUID());
		//拼接code编码
		material.setCode(material.getParentCode()+material.getCode());
			if(materialDao.insert(material)>0){
				back="保存成功";
			}else{
				back="保存失败";
			}
		}else{
			if(materialDao.update(material)>0){
				back="修改成功";
			}else{
				back="修改失败";
			}
		}
		return back;
	}
	
	/**
	 * 删除物资信息
	 */
	public String deleteCommodity(String id) {
		String back="";
		if(materialDao.delete(id)>0){
			back="删除成功";
		}else{
			back="删除失败";
		}
		return back;
	}
	
	/**
	 * 判断数据库中物料类型编码是否存在
	 * @param materialsTypeCode
	 * @param parentCode
	 */
	public boolean selectMaterialCodeRepeat(String code) {
		if(materialDao.selectMaterialCodeRepeat(code).size()>0){
			return false;
		}else
			return true;
	}
	
	/**
	 * 导出物资明细
	 */
	/*public void exportData(String parentId,Material material,HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
		Map<String, Object> map = new HashMap<String, Object>();
		if(!StringUtils.equals("0", parentId)){
			MaterialType materialType = materialsTypeService.selectMaterialsTypeById(parentId);
			map.put("code", materialType.getCode());
			map.put("parentId",parentId);
			System.out.println(materialType.getCode());
		}		
		map.put("material", material);
		List<Material> commodityList = materialDao.selectByExport(map);
		try{
			String dateStr = new SimpleDateFormat("yyyyMMdd").format(new Date());
			if("en".equals(obj.toString())){
				response.setHeader("Content-disposition", "attachment; filename=" + new String(("物料明细信息EN" + dateStr).getBytes("GB2312"), "ISO8859-1") + ".xlsx");
	        }else{
	        	response.setHeader("Content-disposition", "attachment; filename=" + new String(("物料明细信息" + dateStr).getBytes("GB2312"), "ISO8859-1") + ".xlsx");
	        }
			response.setContentType("application/octet-stream");
			String realPath = request.getSession().getServletContext().getRealPath("/");
			Workbook wb = null;
	        InputStream inp=null;
	        inp = new FileInputStream(realPath+"upfile\\baseinfo\\物料明细导入模板.xlsx");  
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
	        Row row;
	        Material com;
	        for(int i = 0;i < commodityList.size();i++){
	        	com = commodityList.get(i);
	        	row = sheet.createRow(i + 1);
	        	cell = row.createCell(0);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getCode());
	        	cell = row.createCell(1);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getName());
	        	cell = row.createCell(2);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getUnit());
	        	cell = row.createCell(3);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getSpec());
	        	cell = row.createCell(4);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getExplain());
	        	cell = row.createCell(5);
	        	cell.setCellStyle(cloneStyle);
	        	cell.setCellValue(com.getState());
	        }
	        OutputStream op = response.getOutputStream();
	        wb.write(op);  
	        op.flush();
	        op.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}*/
//物资类别导入功能开始-------------------------------------------------------------------------------	
		/**
		 * 保存上传物料
		 */
		public String saveMaterialExcle(HttpServletRequest request,ExcleFileForm excleFileForm){
			String validateMaterialExcleFile=null;
			try {
				validateMaterialExcleFile = this.validateMaterialExcle(request,excleFileForm.getExcle());
			} catch (IOException e) {
				e.printStackTrace();
				return "上传失败！";
			}
			if(StringUtils.isNotEmpty(validateMaterialExcleFile))//校验上传文档格式
				return validateMaterialExcleFile;
			validateMaterialExcleFile = this.validateMaterialExcleFile(excleFileForm.getExcle(),request);
			if(StringUtils.isNotEmpty(validateMaterialExcleFile))//校验上传文档格式
				return validateMaterialExcleFile;		
			return saveMaterialExcle(excleFileForm.getExcle(),request);
		}
		
		/**
		 * 校验物料类型编码文件格式
		 */
		public String validateMaterialExcle(HttpServletRequest request,MultipartFile excle)throws IOException{
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
			if (cell1 == null || StringUtils.isEmpty(cell1.getRichStringCellValue().toString()) || !StringUtils.equals("父类编码（6位）", cell1.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少父类编码列";
			if (cell2 == null || StringUtils.isEmpty(cell2.getRichStringCellValue().toString()) || !StringUtils.equals("物资编码（12位）", cell2.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少物资类别编码列";
			if (cell3 == null || StringUtils.isEmpty(cell3.getRichStringCellValue().toString()) || !StringUtils.equals("物资名称", cell3.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少物资名称列";
			if (cell4 == null || StringUtils.isEmpty(cell4.getRichStringCellValue().toString()) || !StringUtils.equals("主计量单位", cell4.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少主计量单位列";
			if (cell5 == null || StringUtils.isEmpty(cell5.getRichStringCellValue().toString()) || !StringUtils.equals("辅助计量单位", cell5.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少辅助计量单位列";
			if (cell6 == null || StringUtils.isEmpty(cell6.getRichStringCellValue().toString()) || !StringUtils.equals("换算关系", cell6.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少换算关系列";
			if (cell7 == null || StringUtils.isEmpty(cell7.getRichStringCellValue().toString()) || !StringUtils.equals("规格型号", cell7.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少规格型号列";
			if (cell8 == null || StringUtils.isEmpty(cell8.getRichStringCellValue().toString()) || !StringUtils.equals("说明", cell8.getRichStringCellValue().toString()))
				return "excel导入模版不符和要求，缺少说明列";
			return null;
		}
		
		/**
		 * 校验上传的物料类别文件
		 */
		public String validateMaterialExcleFile(MultipartFile excle,HttpServletRequest request){
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
					XSSFCell cell1 = row.getCell(0);//父类编码（6位）
					XSSFCell cell2 = row.getCell(1);//物资编码（12位）
					XSSFCell cell3 = row.getCell(2);//物资名称
					XSSFCell cell4 = row.getCell(3);//主计量单位
					XSSFCell cell5 = row.getCell(4);//辅助计量单位
					XSSFCell cell6 = row.getCell(5);//换算关系
					XSSFCell cell7 = row.getCell(6);//规格型号
					XSSFCell cell8 = row.getCell(7);//说明
					if((cell1 == null || Constants.getCellContent(cell1).equals("")) 
						&& (cell2 == null || Constants.getCellContent(cell2).equals("")) 
						&& (cell3 == null || Constants.getCellContent(cell3).equals("")) 
						&& (cell4 == null || Constants.getCellContent(cell4).equals(""))
						&& (cell5 == null || Constants.getCellContent(cell5).equals(""))
						&& (cell6 == null || Constants.getCellContent(cell6).equals(""))
						&& (cell7 == null || Constants.getCellContent(cell7).equals(""))
						&& (cell8 == null || Constants.getCellContent(cell8).equals(""))){
						continue;
					}
					//判断父类编码值为6位,切不为空。
					
					if(cell1 == null  || StringUtils.isEmpty(getCellContent(cell1)) || getCellContent(cell1).length() != 6 ){
						return "第"+(i+1)+"行excel文件数据错误,父类编码为空值或长度有误";	
					}
					//判断物资编码长度为12位，切不为空,
					System.out.println("+++++++++++++++++++++++"+getCellContent(cell2));
					if(cell2 == null ||  StringUtils.isEmpty(getCellContent(cell2)) || getCellContent(cell2).length() != 12 ){
						return "第"+(i+1)+"行excel文件数据错误,物资编码为空值或长度有误";	
					}
					//判断是否和父类物资匹配
					System.out.println("---------------"+getCellContent(cell1));
					System.out.println("-------------------"+getCellContent(cell2));
					if(!getCellContent(cell1).equals(getCellContent(cell2).substring(0,6))){
						return "第"+(i+1)+"行excel文件数据错误,父类编码和物资编码不匹配";	
					}
					//判断物资格式是否有误
					if(!"00".equals(getCellContent(cell2).substring(10,12))){
						return "第"+(i+1)+"行excel文件数据错误,物资编码最后两位是0";	
					}
					//判断物料名称为空,格式错误
					if(cell3 == null || StringUtils.isEmpty(getCellContent(cell3))){
						return "第"+(i+1)+"行excel文件数据错误,物资名称有空值或类型错误";
					}
					//判断物料类别的主计量单位为空,或格式不对。
					if(cell4 == null  || StringUtils.isEmpty(getCellContent(cell4))){
						return "第"+(i+1)+"行excel文件数据错误,主计量单位有空值或类型错误";
					}
					//判断有辅助计量单位时一定要有计量换算
					if(StringUtils.isNotEmpty(getCellContent(cell5)) && StringUtils.isEmpty(getCellContent(cell6))){
						return "第"+(i+1)+"行excel文件数据错误,辅助计量单位不为空时,计量换算不能为空";
					}
					//判断有计量换算时一定要有辅助单位
					if(StringUtils.isNotEmpty(getCellContent(cell6)) && StringUtils.isEmpty(getCellContent(cell5))){
						return "第"+(i+1)+"行excel文件数据错误,计量换算不为空时,辅助计量单位不能为空";
					}
					//判断物料编码是否存在;
					if(materialDao.selectMaterialCodeRepeat(getCellContent(cell2)).size()>0){
						return "第"+(i+1)+"行excel文件物料编码已存在,请到系统中去修改";
					}
				}
			}
			return null;
		}
		/**
		 * 保存物料类别上传文件中的值
		 */
		public String saveMaterialExcle(MultipartFile excle,HttpServletRequest request){
			Map<String, String> map = dictionaryServiceImpl.selectDictionaryByParentCode("unit");
			XSSFWorkbook xwb = null;
			try{
				xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
			}catch(Exception e){
				return Common.selectEnglish("请使用Excel2003或Excel2007格式版本", request);
			}
			XSSFSheet sheet = xwb.getSheetAt(0);//表
			XSSFRow row = null;//行
			Material material = null;
			MaterialType materialParentId = null;
			String parentId = "0";
			for (int i = 1; i < sheet.getPhysicalNumberOfRows(); i++) {//循环行数
				row = sheet.getRow(i);
				if(row == null){
					if(i != 1){
						continue;
					}else{
						return "excel文件没有数据";	
					}
				}else{
					XSSFCell cell1 = row.getCell(0);//父类编码（6位）
					XSSFCell cell2 = row.getCell(1);//物资编码（12位）
					XSSFCell cell3 = row.getCell(2);//物资名称
					XSSFCell cell4 = row.getCell(3);//主计量单位
					XSSFCell cell5 = row.getCell(4);//辅助计量单位
					XSSFCell cell6 = row.getCell(5);//换算关系
					XSSFCell cell7 = row.getCell(6);//规格型号
					XSSFCell cell8 = row.getCell(7);//说明
					if((cell1 == null || Constants.getCellContent(cell1).equals("")) 
						&& (cell2 == null || Constants.getCellContent(cell2).equals("")) 
						&& (cell3 == null || Constants.getCellContent(cell3).equals("")) 
						&& (cell4 == null || Constants.getCellContent(cell4).equals(""))
						&& (cell5 == null || Constants.getCellContent(cell5).equals(""))
						&& (cell6 == null || Constants.getCellContent(cell6).equals(""))
						&& (cell7 == null || Constants.getCellContent(cell7).equals(""))
						&& (cell8 == null || Constants.getCellContent(cell8).equals(""))){
						continue;
					}
					if(cell1!=null){
						String c1 = getCellContent(cell1);
						if(StringUtils.isNotEmpty(c1))//ParentId
							materialParentId = materialsTypeService.selectMaterialTypeByCode(c1);
					
						if(materialParentId == null)
							return "第"+(i+1)+"行excel文件数据错误,数据库没有此父类编码";
						else
							parentId = materialParentId.getId();
					}
					material = new Material();
					String c2 = getCellContent(cell2);
					String c3 = getCellContent(cell3);
					String c4 = getCellContent(cell4);
					String c5 = getCellContent(cell5);
					String c6 = getCellContent(cell6);
//					String c7 = getCellContent(cell7);
					if(materialDao.selectMaterialCodeRepeat(c2).size()==0){
						material.setId(UUIDGenerator.getUUID());
						material.setMaterial_type(parentId);
						material.setCode(c2);
						material.setName(c3);
						if(map.get(c4)!=null){
							material.setUnit(map.get(c4));
						}else{
							return "第"+(i+1)+"行excel文件数据错误,数据库没有此主计量单位";
						}
						if(StringUtils.isNotEmpty(c5)){
							if(map.get(c5)!=null){
								material.setUnit_help(map.get(c5));
							}else{
								return "第"+(i+1)+"行excel文件数据错误,数据库没有此辅助计量单位";
							}
						}
						if(StringUtils.isNotEmpty(c6)){
							try {
								Integer.parseInt(c6);
							} catch (Exception e) {
								return "第"+(i+1)+"行excel文件数据错误,换算关系必须为数字";
							}
							material.setConversion(Integer.parseInt(c6));	
						}
						if(cell7 != null){
							material.setSpec(Constants.getCellContent(cell7));	
						}
						if(cell8 != null){
							material.setExplain(Constants.getCellContent(cell8));	
						}
						material.setState("使用");;
						materialDao.insert(material);
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
		private static String getCellContent(XSSFCell cell) {
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
						if (string.length()==12) {
							return string;
						}
						if(6<string.length()&&string.length()<12) {
							  int length = string.length();
							  
							  for (int i = 0; i < 12-length; i++) {
								  string=string+"0";
						      }
							  return string;
						}
						if (string.length()==6) {
							return string;
						}
						if (string.length()<6) {
							int length = string.length();
							  
							  for (int i = 0; i < 6-length; i++) {
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

	//物资类别导入功能结束--------------------------------------------------------------
	/**
	 * 根据编码查询物资信息
	 */
	public Material selectByCode(String code) {
		return materialDao.selectCode(code);
	}
	/**
	 * 查询所有不符合的物资名字
	 * @param noMaterialids
	 * @return
	 */
	public List<Material> findNoMaterialName(List<String> noMaterialIds) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noMaterialIds", noMaterialIds);
		return materialDao.findNoMaterialName(map);
	}
	
}