package dkd.okay.business.outstock.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.outstock.bo.OutstockDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "outstockDetailDao")
public class OutstockDetailDao extends BaseDaoImpl<OutstockDetail, String>{

	/**
	 * 删除
	 */
	public void deleteDetalsByHeadId(String outstock_head) {
		sqlSession.delete("OutstockDetail.deleteDetalsByHeadId",outstock_head);
	}
	/**
	 * 批量插入明细表
	 */
	public int bathInsert(List<OutstockDetail> outstockDetailList) {
		return sqlSession.insert("OutstockDetail.bathInsert",outstockDetailList);
	}
}
