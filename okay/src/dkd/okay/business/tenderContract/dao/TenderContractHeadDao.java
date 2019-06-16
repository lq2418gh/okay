package dkd.okay.business.tenderContract.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tenderContract.bo.TenderContractHead;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderContractHeadDao")
public class TenderContractHeadDao extends BaseDaoImpl<TenderContractHead, String>{

	/**
	 * 查看
	 */
	public TenderContractHead view(String id) {
		return sqlSession.selectOne("TenderContractHead.view", id);
	}
	/**
	 * 发布
	 */
	public int updateTenderContractHead(String id) {
		// TODO Auto-generated method stub
		return sqlSession.update("TenderContractHead.updateTenderContractHead", id);
	}

	/**
	 * 废标
	 */
	public int cancel(String id) {
		return sqlSession.update("TenderContractHead.cancel", id);
	}
	/**
	 * 设置中标供应商id
	 */
	public int updateSupplier(Map<String, Object> map) {
		return sqlSession.update("TenderContractHead.updateSupplier", map);
	}
	/**
	 * 显示中标供应商的相关信息
	 */
	public TenderContractHead show(String id) {
		return sqlSession.selectOne("TenderContractHead.show", id);
	}
	/**
	 * 倒叙查询编号
	 * @return
	 */
	public String selectTender_no() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("TenderContractHead.selectTender_no");
	}

}
