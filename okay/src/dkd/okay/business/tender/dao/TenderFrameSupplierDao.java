package dkd.okay.business.tender.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tender.bo.TenderFrameSupplier;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderFrameSupplierDao")
public class TenderFrameSupplierDao extends BaseDaoImpl<TenderFrameSupplier, String>{
	
	/**
	 * 检查供应商信息是否存在
	 */
	public List<TenderFrameSupplier> selectSupplierName(Map<String, Object> map) {
		return sqlSession.selectList("TenderFrameSupplier.selectSupplierName", map);
	}
	/**
	 *  查找供应商id和框架协议招标供应商ID
	 */
	public TenderFrameSupplier selectSupplierIdAndId(Map<String, Object> map) {
		return sqlSession.selectOne("TenderFrameSupplier.selectSupplierIdAndId", map);
	}
	

}
