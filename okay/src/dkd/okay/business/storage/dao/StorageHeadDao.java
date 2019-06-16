package dkd.okay.business.storage.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.storage.bo.StorageHead;
import dkd.okay.system.dao.BaseDaoImpl;
@Repository(value = "storageHeadDao")
public class StorageHeadDao extends BaseDaoImpl<StorageHead, String>{
	
	/**
	 * 查看
	 */
	public StorageHead view(String id) {
		return sqlSession.selectOne("StorageHead.view", id);
	}
	/**
	 * 提交
	 */
	public int submit(String id) {
		return sqlSession.update("StorageHead.submit", id);
	}
	/**
	 * 倒叙查询入库编号
	 */
	public String selectStorage_no() {
		return sqlSession.selectOne("StorageHead.selectStorage_no");
	}
	/**
	 * 修改单据是否已经选择
	 */
	public int selectStorage_noAndIs_choice(Map<String, Object> map) {
		return sqlSession.update("StorageHead.selectStorage_noAndIs_choice", map);
	}
	public int countPublic(Object param) {
		Integer count = (Integer) sqlSession.selectOne("StorageHead.countPublic",param);
		return count.intValue();
	}
	public List<StorageHead> selectPublic(Map<String, Object> map) {
		return sqlSession.selectList("StorageHead.selectPublic", map);  
	}
}
