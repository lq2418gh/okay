package dkd.okay.business.storage.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.storage.bo.DirectDetail;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 直达现场
 * @author 周渤涛
 *
 */
@Repository(value = "directDetailDao")
public class DirectDetailDao extends BaseDaoImpl<DirectDetail, String>{

	/**
	 * 删除
	 */
	public void deleteDetalsByHeadId(String direct_head) {
		sqlSession.delete("DirectDetail.deleteDetalsByHeadId",direct_head);
	}
	/**
	 * 批量插入明细表
	 */
	public int bathInsert(List<DirectDetail> directDetailList) {
		return sqlSession.insert("DirectDetail.bathInsert",directDetailList);
	}
}
