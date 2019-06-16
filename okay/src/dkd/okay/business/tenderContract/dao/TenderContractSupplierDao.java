package dkd.okay.business.tenderContract.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.tenderContract.bo.TenderContractSupplier;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "TenderContractSupplierDao")
public class TenderContractSupplierDao extends BaseDaoImpl<TenderContractSupplier, String>{

	/**
	 * 检查供应商信息是否存在
	 */
	public List<TenderContractSupplier> selectSupplierName(Map<String, Object> map) {
		return sqlSession.selectList("TenderContractSupplier.selectSupplierName", map);
	}

	/**
	 *  查找供应商id和框架协议招标供应商ID
	 */
	public TenderContractSupplier selectSupplierIdAndId(Map<String, Object> map) {
		return sqlSession.selectOne("TenderContractSupplier.selectSupplierIdAndId", map);
	}
}
