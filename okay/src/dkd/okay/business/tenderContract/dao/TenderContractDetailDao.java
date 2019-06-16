package dkd.okay.business.tenderContract.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tenderContract.bo.TenderContractDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderContractDetailDao")
public class TenderContractDetailDao extends BaseDaoImpl<TenderContractDetail, String>{


	/**
	 * 设置中标价格
	 */
	public List<TenderContractDetail> selectMaterial(String tender_contract) {
		return sqlSession.selectList("TenderContractDetail.selectMaterial", tender_contract);
	}
	/**
	 * 查找ID
	 */
	public TenderContractDetail selectID(Map<String, Object> map) {
		return sqlSession.selectOne("TenderContractDetail.selectID", map);
	}
	/**
	 * 设置中标价格
	 */
	public int updatePrice(Map<String, Object> map) {
		return sqlSession.update("TenderContractDetail.updatePrice", map);
	}
	public List<TenderContractDetail> findDtetailById(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("TenderContractDetail.findDtetailById", id);
	}
}
