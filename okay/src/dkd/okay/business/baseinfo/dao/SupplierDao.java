package dkd.okay.business.baseinfo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.baseinfo.bo.Supplier;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * @author:linss
 * @date:2017年8月21日
 */
@Repository(value = "supplierDao")
public class SupplierDao extends BaseDaoImpl<Supplier, String>{

	public String findMaxNo() {
		String count =  sqlSession.selectOne("Supplier.findMaxNo");
		return count; 
	}
	/**
	 * 查看供应商名称是否存在
	 * @param supplier_name
	 * @return
	 * @date:2017年8月23日
	 * @author:linss
	 */
	public int findSupplierByName(String supplier_name) {
		Integer count = (Integer) sqlSession.selectOne("Supplier.findSupplierByName",supplier_name);
		return count.intValue(); 
	}
	public Supplier getSupplierByNo(String supplier_no) {
		return (Supplier) sqlSession.selectOne("Supplier.getSupplierByNo", supplier_no);  
	}
	public int findSupplierByNameAndId(String supplier_name, String id) {
		Map<String, Object> map = new HashMap<>();
		map.put("supplier_name", supplier_name);
		map.put("id", id);
		Integer count = (Integer) sqlSession.selectOne("Supplier.findSupplierByNameAndId",map);
		return count.intValue(); 
	}
	public List<Supplier> findNoSupplierName(Map<String, Object> map) {
		return sqlSession.selectList("Supplier.findNoSupplierName", map);
	}
	
}
