package dkd.okay.business.tender.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tender.bo.TenderFrameHead;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderFrameHeadDao")
public class TenderFrameHeadDao extends BaseDaoImpl<TenderFrameHead, String>{
	/**
	 * 倒叙查询编号
	 * @return
	 */
	public String selectTender_no() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("TenderFrameHead.selectTender_no");
	}


	/**
	 * 查看
	 */
	public TenderFrameHead view(String id) {
		return sqlSession.selectOne("TenderFrameHead.view", id);
	}
	/**
	 * 更新状态
	 */
	public int updateTenderFrameHead(String id) {
		return sqlSession.update("TenderFrameHead.updateTenderFrameHead", id);
	}
	/**
	 * 废标
	 */
	public int cancel(String id) {
		return sqlSession.update("TenderFrameHead.cancel", id);
	}
	/**
	 * 设置中标供应商id
	 */
	public int updateSupplier(Map<String, Object> map) {
		return sqlSession.update("TenderFrameHead.updateSupplier", map);
	}
	/**
	 * 显示中标供应商的相关信息
	 */
	public TenderFrameHead show(String id) {
		return sqlSession.selectOne("TenderFrameHead.show", id);
	}
	
}
