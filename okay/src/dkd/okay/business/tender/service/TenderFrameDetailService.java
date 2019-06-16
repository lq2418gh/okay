package dkd.okay.business.tender.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.tender.bo.TenderFrameDetail;
import dkd.okay.business.tender.dao.TenderFrameDetailDao;

@Service(value="TenderFrameDetailService")
@Transactional
public class TenderFrameDetailService {
	
	@Autowired
	private TenderFrameDetailDao tenderFrameDetailDao;

	public void delTFD(String id) {
		tenderFrameDetailDao.delete(id);
	}
	/**
	 * 设置中标价格
	 */
	public void updatePrice(String id,String material,BigDecimal main_Price,BigDecimal secondary_Price) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("material", material);
		map.put("main_Price", main_Price);
		map.put("secondary_Price", secondary_Price);
		tenderFrameDetailDao.updatePrice(map);
	}
	/**
	 * 查询物资数量
	 */
	public List<TenderFrameDetail> selectMaterial(String tender_frame) {
		return tenderFrameDetailDao.selectMaterial(tender_frame);
	}
	/**
	 * 查找明细表的id
	 */
	public TenderFrameDetail selectID(String tender_frame,String material) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_frame", tender_frame);
		map.put("material", material);
		return tenderFrameDetailDao.selectID(map);
	}
}
