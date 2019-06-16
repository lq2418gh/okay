package dkd.okay.system.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Dictionary;
import dkd.okay.system.bo.FileInfo;
import dkd.okay.system.bo.User;
import dkd.okay.system.dao.DictionartDaoImpl;
import dkd.okay.system.dao.FileInfoDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.web.formmodel.FileInfoForm;


/**
 * 文件Service接口实现类
 * @author SY
 *
 */

@Transactional
@Service(value="FileInfoService")
public class FileInfoServiceImpl{
	
	@Resource(name="FileInfoDao")
	private FileInfoDaoImpl fileInfoDaoImpl;
	
	@Resource(name="dictionaryDao")
	private DictionartDaoImpl dictionartDaoImpl;
	/*@Autowired
	private QualityServiceImpl qualityService;*/
	
	/**
	 * 条件查询
	 * @param pageNow 当前页
	 * @param fileInfoForm 
	 * @return
	 */
	public Map<String, Object> selectFileInfoByCondition(String file_module_code,String fk_id,String pageNow,FileInfoForm fileInfoForm) {
		fileInfoForm.setFile_module_code(file_module_code);
		fileInfoForm.setFk_id(fk_id);
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("fileInfoForm", fileInfoForm);
		int totalCount = fileInfoDaoImpl.count(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<FileInfo> fileInfos = fileInfoDaoImpl.selectByCondition(map);
		map.put("fileInfos", fileInfos);
		map.put("file_module_id", dictionartDaoImpl.queryByCode(file_module_code).getDicId());
		return map;
	}
	
	
	/**
	 * 条件查询      【不以状态为关键字】
	 * @param pageNow 当前页
	 * @param fileInfoForm 
	 * @return
	 */
	
	public Map<String, Object> selectFileInfoByCondition_1(String importNo,String file_module_code,String fk_id,String pageNow,FileInfoForm fileInfoForm) {
		fileInfoForm.setFile_module_code(file_module_code);
		fileInfoForm.setFk_id(fk_id);
		fileInfoForm.setImportNo(importNo);
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("fileInfoForm", fileInfoForm);
		int totalCount = fileInfoDaoImpl.count(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<FileInfo> fileInfos = fileInfoDaoImpl.selectByCondition(map);
		map.put("fileInfos", fileInfos);
		Dictionary dictionary = dictionartDaoImpl.queryByCode(file_module_code);
		if(null != dictionary && StringUtils.isNotEmpty(dictionary.getDicId())){			
			map.put("file_module_id", dictionary.getDicId());
		}		
		return map;
	}
    	
	public String saveFile(FileInfo fileInfo) {
		//fileInfo.setFile_id(UUIDGenerator.getUUID());
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		fileInfo.setINPUT_USERID(user.getUserId());
		fileInfo.setINPUT_USERNAME(user.getUserInfo().getRealName());
		fileInfo.setINPUT_DEPTID(user.getUserInfo().getCompany().getCompanyId());
		fileInfo.setINPUT_DEPTNAME(user.getUserInfo().getCompany().getCompanyName());
		fileInfo.setINPUT_DATE(new Date());
		fileInfoDaoImpl.insert(fileInfo);
		return fileInfo.getFile_id();
	}
	
	
	public void deleteFile(String file_id){
		fileInfoDaoImpl.delete(file_id);
	}

	public FileInfo selectFileById(String file_id) {
		return fileInfoDaoImpl.get(file_id);
	}
	public List<FileInfo> selectFileByReceiveNo(String receivingNo){
		return fileInfoDaoImpl.selectFileByReceiveNo(receivingNo);
	}
	public void updateByQuality(String receivingNo,String qualityNo){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("receivingNo", receivingNo);
		map.put("qualityNo", qualityNo);
		fileInfoDaoImpl.updateByQuality(map);
	}
	public List<FileInfo> selectFileByName(String fkId,String fileName){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("fkId", fkId);
		map.put("fileName", fileName);
		return fileInfoDaoImpl.selectFileByName(map);
	}
	public List<FileInfo> selectFileBySupplierId(String fkId,String supplierName){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("fkId", fkId);
		List<String> names = new ArrayList<String>();
		names.add("1-质量体系检查表-" + supplierName + ".xlsx");
		names.add("2-供应商总体情况-" + supplierName + ".xlsx");
		names.add("3-供应商生产过程控制检查表-" + supplierName + ".xlsx");
		names.add("4-HSE体系检查表-" + supplierName + ".xlsx");
		map.put("names", names);
		return fileInfoDaoImpl.selectFileBySupplierId(map);
	}
	public List<FileInfo> selectByDeleteFile(String supplierId,String supplierName,String type){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("fkId", supplierId);
		List<String> names = new ArrayList<String>();
		if("1".equals(type)){
			names.add("1-质量体系检查表-" + supplierName + ".xlsx");
			names.add("2-供应商总体情况-" + supplierName + ".xlsx");
			names.add("3-供应商生产过程控制检查表-" + supplierName + ".xlsx");
			names.add("4-HSE体系检查表-" + supplierName + ".xlsx");
			names.add("新供应商资格预审表-" + supplierName + ".xlsx");
			names.add("新供应商资格预审表（贸易类）-" + supplierName + ".xlsx");
			names.add("新供应商资格预审结果-" + supplierName + ".xlsx");
		}else{
			//0表示年审退回
			map.put("type", "0");
		}
		names.add("合格供应商评价表-" + supplierName + ".xlsx");
		names.add("合格供应商评价表（贸易类）-" + supplierName + ".xlsx");
		names.add("特殊类供应商评价表-" + supplierName + ".xlsx");
		names.add("合格货运代理评价表（报关行）-" + supplierName + ".xlsx");
		names.add("合格货运代理评价表（国际货运）-" + supplierName + ".xlsx");
		map.put("names", names);
		return fileInfoDaoImpl.selectByDeleteFile(map);
	}
	//合格货运代理模块评价时因和新货运代理模块的文件名称一致（不好判断文件个数），故新建方法
	public List<FileInfo> selectFileByNameAndModule(String fkId,String fileName,String module){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("fkId", fkId);
		map.put("fileName", fileName);
		map.put("module", module);
		return fileInfoDaoImpl.selectFileByNameAndModule(map);
	}
	//根据file_model_code和PK_id来查找文件结果集
	public List<FileInfo> selectFileByCodeAndPk(String pk_id){
		return fileInfoDaoImpl.selectFileByCodeAndPk(pk_id);
	}
}