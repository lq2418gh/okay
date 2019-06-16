package dkd.okay.system.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Dictionary;

@Repository(value = "dictionaryDao")
public class DictionartDaoImpl extends BaseDaoImpl<Dictionary, String>{
	public List<Dictionary> selectAll(int dic_type) {
    	return sqlSession.selectList("Dictionary.selectAll",dic_type);  
	}
	public List<Dictionary> selectDictionaryByParentId(Map<String, Object> map) {
		return sqlSession.selectList("Dictionary.selectDictionaryByParentId",
				map);
	}

	public List<Dictionary> query(Map<String, Object> map) {
		return sqlSession.selectList("Dictionary.query", map);
	}

	public int checkDic(Dictionary dictionary) {
		return (Integer)sqlSession.selectOne("Dictionary.checkDic", dictionary);
	}
	public List<Dictionary> selectById(String dicId) {
		return sqlSession.selectList("Dictionary.selectById", dicId);
	}
	public Dictionary selectByCode(Map<String, Object> map) {
		return sqlSession.selectOne("Dictionary.selectByCode", map);
	}
	public Dictionary selectDictionaryByEximCode(String code) {
		return sqlSession.selectOne("Dictionary.selectDictionaryByEximCode", code);
	}
	public Dictionary queryByCode(String dicCode){
		return sqlSession.selectOne("Dictionary.queryByCode", dicCode);
	}
	public int selectDictionaryCountByList(String parentid,List<String> list) {
		int count = 0;
		if(StringUtils.isNotEmpty(parentid) && null != list && list.size() > 0){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("parentid", parentid);
			map.put("nameList", list);
			Integer count1 = (Integer) sqlSession.selectOne("Dictionary.selectDictionaryCountByList",map);
			if(null != count1)
				count = count1.intValue();
		}
		 return count;
	}
	
	public List<Dictionary> selectZhuanye(String parentid) {
		return sqlSession.selectList("Dictionary.selectZhuanye", parentid);
	}
	public List<Dictionary> selectBizhong(String parentid) {
		return sqlSession.selectList("Dictionary.selectBizhong", parentid);
	}
	public List<Dictionary> selectDictionaryByParentCode(String parentCode) {
		return sqlSession.selectList("Dictionary.selectDictionaryByParentCode", parentCode);
	}
	public Dictionary selectByEximCode(Map<String, Object> map) {
		return sqlSession.selectOne("Dictionary.selectByEximCode", map);
	}
	public int selectMaxOrder(String parentId){
		Object obj = sqlSession.selectOne("Dictionary.selectMaxOrder", parentId);
		if(obj == null){
			return 0;
		}else{
			return (Integer)obj;			
		}
	}
	public String getCodeByName(String name){
		return sqlSession.selectOne("Dictionary.getCodeByName", name);
	}
	public String selectCodeByEximCode(String dicEximCode) {
		return sqlSession.selectOne("Dictionary.selectCodeByEximCode", dicEximCode);
	}
	/**
	 * @date 2017年5月23日
	 * @author zhaolw
	 * 描述：
	 */
	public List<Dictionary> selectZhuanyeEn(String parentid) {
		return sqlSession.selectList("Dictionary.selectZhuanyeEn", parentid);
	}
	/**
	 * @date 2017年5月23日
	 * @author zhaolw
	 * 描述：
	 */
	public String selectIDByParentIdAndName(Map<String, String> map) {
		return sqlSession.selectOne("Dictionary.selectIDByParentIdAndName",map);
	}
	/**
	 * @date 2017年6月2日
	 * @author zhaolw
	 * 描述：
	 */
	public String selectEnglishNameByNameAndCode(Map<String, String> map) {
		return sqlSession.selectOne("Dictionary.selectEnglishNameByNameAndCode",map);
	}
	/**
	 * 
	 * @param dicCode
	 * @return
	 * @date:2017年8月15日
	 * @author:linss
	 */
	public List<Dictionary> selectByDicCode(String dicCode) {
		return sqlSession.selectList("Dictionary.selectByDicCode", dicCode);
	}
}