package dkd.okay.business.baseinfo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.baseinfo.bo.Warehouse;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 仓库信息DAO
 * @author 王莹
 *
 */
@Repository(value = "warehouseDao")
public class WarehouseDaoImpl  extends BaseDaoImpl<Warehouse, String>{
	/**
	 * 判断数据库中仓库编码是否存在
	 * @param warehouseCode
	 */
	public int selectWarehouseRepeat(String warehouseCode){
		Integer count = (Integer) sqlSession.selectOne("Warehouse.selectWarehouseRepeat", warehouseCode);
		return count.intValue(); 
	}
	
	/**
	 * 根据Code查询仓库信息 modify by wangqian 物料盘点
	 */
	public List<Warehouse> getWarehouseTreeByCode(String wareHouseId){
		return sqlSession.selectList("Warehouse.getWarehouseTreeByCode", wareHouseId);
	}
	
	
	/**
	 * 导入时，根据Code查询仓库信息 modify by luochuan 
	 */
	public Warehouse getWarehouseByCode(String warehouseCode){
		return sqlSession.selectOne("Warehouse.import_select", warehouseCode);
	}
	
	public List<Warehouse> selectAllIgnoreState() {
    	return sqlSession.selectList("Warehouse.SQLID_SELECT_ALL_INGORE_STATE");  
	}

	public int selectWarehouseNameRepeat(Map<String, Object> map) {
		Integer count = (Integer) sqlSession.selectOne("Warehouse.selectWarehouseNameRepeat", map);
		return count.intValue(); 
	}
	
}
