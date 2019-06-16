package dkd.okay.business.outstock.dao;


import org.springframework.stereotype.Repository;

import dkd.okay.business.outstock.bo.OutstockHead;
import dkd.okay.system.dao.BaseDaoImpl;
@Repository(value = "outstockHeadDao")
public class OutstockHeadDao extends BaseDaoImpl<OutstockHead, String>{
	
	/**
	 * 查看
	 */
	public OutstockHead view(String id) {
		return sqlSession.selectOne("OutstockHead.view", id);
	}
	/**
	 * 倒叙查询入库编号
	 */
	public String selectOutstock_no() {
		return sqlSession.selectOne("OutstockHead.selectOutstock_no");
	}
	/**
	 * 提交
	 */
	public int submit(String id) {
		return sqlSession.update("OutstockHead.submit", id);
	}
}
