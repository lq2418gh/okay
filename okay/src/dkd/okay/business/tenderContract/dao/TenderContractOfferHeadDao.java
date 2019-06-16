package dkd.okay.business.tenderContract.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tenderContract.bo.TenderContractOfferHead;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderContractOfferHeadDao")
public class TenderContractOfferHeadDao extends BaseDaoImpl<TenderContractOfferHead, String>{

	public List<TenderContractOfferHead> checkPrice(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("TenderContractOfferHead.checkPrice", id);
	}

	public List<TenderContractOfferHead> selectMaterialAndPrice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("TenderContractOfferHead.selectMaterialAndPrice", map);
	}

	public TenderContractOfferHead selectByTenderAndSupplier(String tender_contract, String supplier, String id) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("tender_contract", tender_contract);
		map.put("supplier", supplier);
		map.put("id", id);
		return sqlSession.selectOne("TenderContractOfferHead.selectByTenderAndSupplier", map);
	}

	public int deleteByTenderAndSupplier(String tender_contract, String supplier, String id) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("tender_contract", tender_contract);
		map.put("supplier", supplier);
		map.put("id", id);
		return sqlSession.delete("TenderContractOfferHead.deleteByTenderAndSupplier",map);
	}

}
