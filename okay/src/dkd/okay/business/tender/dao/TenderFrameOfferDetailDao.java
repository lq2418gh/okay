package dkd.okay.business.tender.dao;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tender.bo.TenderFrameOfferDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderFrameOfferDetailDao")
public class TenderFrameOfferDetailDao extends BaseDaoImpl<TenderFrameOfferDetail, String>{
	
	//删除第一次上传的报价信息
	public int deleteTenderFrameOfferHeadID(String frame_offer_head) {
		return sqlSession.delete("TenderFrameOfferDetail.deleteTenderFrameOfferHeadID", frame_offer_head);
	}
}
