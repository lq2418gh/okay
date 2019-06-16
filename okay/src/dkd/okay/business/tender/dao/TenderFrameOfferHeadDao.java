package dkd.okay.business.tender.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tender.bo.TenderFrameOfferHead;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderFrameOfferHeadDao")
public class TenderFrameOfferHeadDao extends BaseDaoImpl<TenderFrameOfferHead, String>{
	
	/**
	 * 检查是否上传报价
	 */
	public List<TenderFrameOfferHead> checkPrice(String id) {
		return sqlSession.selectList("TenderFrameOfferHead.checkPrice", id);
	}
	/**
	 * 查询物资和单价
	 */
	public List<TenderFrameOfferHead> selectMaterialAndPrice(Map<String, Object> map) {
		return sqlSession.selectList("TenderFrameOfferHead.selectMaterialAndPrice", map);
	}
	/**
	 * 查询物资和单价
	 */
	public TenderFrameOfferHead selectByTenderAndSupplier(String tender_frame,String supplier,String tender_frame_supplier) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_frame", tender_frame);
		map.put("supplier", supplier);
		map.put("tender_frame_supplier", tender_frame_supplier);
		return sqlSession.selectOne("TenderFrameOfferHead.selectByTenderAndSupplier", map);
	}
	/**
	 * 删除第一次上传的报价信息
	 */
	public int deleteByTenderAndSupplier(String tender_frame,String supplier,String tender_frame_supplier) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_frame", tender_frame);
		map.put("supplier", supplier);
		map.put("tender_frame_supplier", tender_frame_supplier);
		return sqlSession.delete("TenderFrameOfferHead.deleteByTenderAndSupplier", map);
	}
	
}
