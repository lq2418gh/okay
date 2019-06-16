package dkd.okay.business.tenderContract.dao;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tenderContract.bo.TenderContractOfferDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderContractOfferDetailDao")
public class TenderContractOfferDetailDao extends BaseDaoImpl<TenderContractOfferDetail, String>{


	public int deleteTenderContractOfferHeadID(String contract_offer_head) {
		// TODO Auto-generated method stub
		return sqlSession.delete("TenderContractOfferDetail.deleteTenderContractOfferHeadID",contract_offer_head);
	}

}
