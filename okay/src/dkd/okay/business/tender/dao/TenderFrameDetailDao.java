package dkd.okay.business.tender.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tender.bo.TenderFrameDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderFrameDetailDao")
public class TenderFrameDetailDao extends BaseDaoImpl<TenderFrameDetail, String>{

	/**
	 * 设置中标价格
	 */
	public int updatePrice(Map<String, Object> map) {
		return sqlSession.update("TenderFrameDetail.updatePrice", map);
	}
	/**
	 * 设置中标价格
	 */
	public List<TenderFrameDetail> selectMaterial(String tender_frame) {
		return sqlSession.selectList("TenderFrameDetail.selectMaterial", tender_frame);
	}
	/**
	 * 查找ID
	 */
	public TenderFrameDetail selectID(Map<String, Object> map) {
		return sqlSession.selectOne("TenderFrameDetail.selectID", map);
	}
	

}
