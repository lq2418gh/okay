package dkd.okay.business.stock.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.stock.bo.Stock;
import dkd.okay.system.dao.BaseDaoImpl;
@Repository(value = "StockDao")
public class StockDao  extends BaseDaoImpl<Stock, String>{

	/**
	 * 添加库存
	 * @param stock
	 */
	public void save(Stock stock) {
		// TODO Auto-generated method stub
		sqlSession.insert("Stock.save",stock);
	}
	/**
	 * 根据订单明细分组 正序找出所有的库存信息
	 */
	public List<Stock> selectByDetail(String detail,String warehouse){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("warehouse", warehouse);
		map.put("detail",detail);
		return sqlSession.selectList("Stock.selectByDetail",map);
	}
	/**
	 * 扣减库存数量 回填数据
	 */
	public void updateStockNum(Map<String, Object> map){
		sqlSession.update("Stock.updateStockNum",map);
	}
	/**
	 * 查询物资库存数量
	 * @param material
	 * @return int
	 */
	public String selectStockByMaterial(String material){
		return sqlSession.selectOne("Stock.selectStockByMaterial",material);
	}
	/**
	 * 根据物资id和仓库id查询物资库存数量
	 */
	public String selectStockByMaterialAndWarehouse(String material,String warehouse){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("warehouse", warehouse);
		map.put("material",material);
		return sqlSession.selectOne("Stock.selectStockByMaterialAndWarehouse",map);
	}
	/**
	 * 根据仓库和采购订单 查询相关的明细信息
	 */
	public List<Stock> selectStockByWarehouseAndDetail(String order_detail,String warehouse) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("warehouse", warehouse);
		map.put("order_detail",order_detail);
		return sqlSession.selectList("Stock.selectStockByWarehouseAndDetail", map);	
	}

}
