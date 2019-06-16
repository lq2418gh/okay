package dkd.okay.business.baseinfo.dao;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * @author:linss
 * @date:2017年8月25日
 */
@Repository(value = "supplierCapacityDao")
public class SupplierCapacityDao extends BaseDaoImpl<SupplierCapacity, Serializable>{

	public List<SupplierCapacity> getSupplierCapacity(String supplierId) {
		return sqlSession.selectList("SupplierCapacity.getSupplierCapacity",supplierId); 
	}
	/**
	 * 校验供应伤的物资和明细的物资
	 * @param supplierId
	 * @return
	 */
	public List<SupplierCapacity> viewSupplierCapacizty(Map<String, Object> map) {
		return sqlSession.selectList("SupplierCapacity.viewSupplierCapacity", map);
	}
	public List<SupplierCapacity> compareSupplierCapacity(Map<String, Object> map) {
		return sqlSession.selectList("SupplierCapacity.compareSupplierCapacity", map);
	}
	public List<SupplierCapacity> findSMid(String supplierId) {
		return sqlSession.selectList("SupplierCapacity.findSMid",supplierId);
	}
	public List<SupplierCapacity> findMids(String materialId) {
		return sqlSession.selectList("SupplierCapacity.findMids",materialId);
	}

	public SupplierCapacity findCanpacityBySupplierIdandMaterialId(String supplierId, String materialId) {
		Map<String, Object> map = new HashMap<>();
		map.put("supplier_id", supplierId);
		map.put("material_id", materialId);
		return sqlSession.selectOne("SupplierCapacity.findCanpacityBySupplierIdandMaterialId",map);
	}
	public List<SupplierCapacity> findMidss(Map<String, Object> map) {
		return sqlSession.selectList("SupplierCapacity.findMidss",map);
	}
	public List<SupplierCapacity> compareSupplierM(Map<String, Object> map) {
		return sqlSession.selectList("SupplierCapacity.compareSupplierM", map);
	}
}
