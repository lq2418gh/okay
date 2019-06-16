package dkd.okay.business.tender.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.tender.dao.TenderFrameOfferDetailDao;

@Service(value="TenderFrameOfferDetailService")
@Transactional
public class TenderFrameOfferDetailService {
	
	@Autowired
	private TenderFrameOfferDetailDao tenderFrameOfferDetailDao;
}
