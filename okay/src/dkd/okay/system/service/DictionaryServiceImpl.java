package dkd.okay.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Dictionary;
import dkd.okay.system.dao.DictionartDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value = "dictionaryService")
@Transactional
public class DictionaryServiceImpl{
	@Autowired
	private DictionartDaoImpl dictionaryDao;

	/**
	 * 查找所有树节点
	 * 
	 * @return
	 */
	public List<Dictionary> selectAll(int dic_type) {
		return dictionaryDao.selectAll(dic_type);
	}

	/**
	 * 根据父节点id 查找所有子节点
	 * 
	 * @param pageNow
	 * @param dicId
	 * @return
	 */
	public Map<String, Object> selectDictionaryByParentId(String pageNow,
			String dicId,int dic_type) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("dicId", dicId);
		map.put("dic_type", dic_type);
		int totalCount = dictionaryDao.selectDictionaryByParentId(map).size();
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<Dictionary> dictionaryList = dictionaryDao
				.selectDictionaryByParentId(map);
		map.put("dictionaryList", dictionaryList);
		return map;
	}
	public Map<String, String> selectDictionaryByParentCode(String dicCode){
		Map<String,String> dicDatas = new HashMap<String,String>();
		List<Dictionary> dictionaryList = dictionaryDao.selectDictionaryByParentCode(dicCode);
		for(Dictionary dic : dictionaryList){
			dicDatas.put(dic.getDicName(), dic.getDicCode());
		}
		return dicDatas;
	}
	/**
	 * 增加或修改字典
	 * 
	 * @param dictionary
	 */
	public void editDictionary(Dictionary dictionary) {
		if (StringUtils.isEmpty(dictionary.getDicId())) {
			dictionary.setDicId(UUIDGenerator.getUUID());
			if (StringUtils.equals("0", dictionary.getParentId())) {
				dictionary.setLevels(1);
			} else {
				dictionary.setLevels(2);
			}
			dictionaryDao.insert(dictionary);
		} else {
			dictionaryDao.update(dictionary);
		}
	}

	/**
	 * 根据条件查找子节点
	 * 
	 * @param pageNow
	 * @param dicName
	 * @param dicId
	 * @return
	 */
	public Map<String, Object> query(String pageNow, String dicName,
			String dicId,int dic_type) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("dicName", dicName);
		map.put("dicId", dicId);
		map.put("dic_type", dic_type);
		int totalCount = dictionaryDao.query(map).size();
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<Dictionary> dictionaryList = dictionaryDao.query(map);
		map.put("dictionaryList", dictionaryList);
		return map;
	}

	/**
	 * 查找节点明细
	 * 
	 * @param dicId
	 * @return
	 */
	public Dictionary selectDictionaryById(String dicId) {
		return dictionaryDao.get(dicId);
	}

	/**
	 * 删除节点及子节点
	 * 
	 * @param dicId
	 */
	public void delete(String dicId) {
		dictionaryDao.delete(dicId);
	}


	/**
	 * 新增和修改时校验该父节点下有没有同名节点
	 * 
	 * @param dictionary
	 * @return
	 */
	public int checkDic(Dictionary dictionary) {
		return dictionaryDao.checkDic(dictionary);
	}
	public List<Dictionary> selectZhuanye(String parentid) {
		return dictionaryDao.selectZhuanye(parentid);
	}
	
	public List<Dictionary> selectBizhong(String parentid) {
		return dictionaryDao.selectBizhong(parentid);
	}
	public Dictionary selectDictionaryByCode(String code){
		return dictionaryDao.queryByCode(code);
	}
	public int selectMaxOrder(String parentId){
		return dictionaryDao.selectMaxOrder(parentId);
	}
	public String getCodeByName(String name){
		return dictionaryDao.getCodeByName(name);
	}
	public String selectEnglishDicName(Map<String,String> map){
		return dictionaryDao.selectDicByChinese(map);
	}
	public String selectDicNameByEnglish(Map<String,String> map){
		return dictionaryDao.selectDicByEnglish(map);
	}

	/**
	 * @date 2017年5月23日
	 * @author zhaolw
	 * 描述：
	 */
	public List<Dictionary> selectZhuanyeEn(String parentid) {
		return dictionaryDao.selectZhuanyeEn(parentid);
	}

	/**
	 * @date 2017年5月23日
	 * @author zhaolw
	 * 描述：通过专业大类的parentid和name获取到专业大类的ID
	 */
	public String selectIDByParentIdAndName(Map<String, String> map) {
		return dictionaryDao.selectIDByParentIdAndName(map);
	}
	/**
	 * @date 2017年6月2日
	 * @author ZHAOLW
	 * @param code为字典的code name为字典的name
	 * 描述：通过字典的中文name和code查找英文name
	 */
	public String selectEnglishNameByNameAndCode(Map<String,String> map){
		return dictionaryDao.selectEnglishNameByNameAndCode(map);
	}
	
}