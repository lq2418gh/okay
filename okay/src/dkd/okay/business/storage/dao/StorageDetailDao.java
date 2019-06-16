package dkd.okay.business.storage.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.storage.bo.StorageDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "storageDetailDao")
public class StorageDetailDao extends BaseDaoImpl<StorageDetail, String>{

	/**
	 * 删除
	 */
	public void deleteDetalsByHeadId(String storge_head) {
		sqlSession.delete("StorageDetail.deleteDetalsByHeadId",storge_head);
	}
	/**
	 * 批量插入明细表
	 */
	public int bathInsert(List<StorageDetail> storageDetailList) {
		return sqlSession.insert("StorageDetail.bathInsert",storageDetailList);
	}
	/**
	 * 根据主表id查明细
	 */
	public List<StorageDetail> selectById(String storge_head) {
		return sqlSession.selectList("StorageDetail.selectById", storge_head);  
	}
}
