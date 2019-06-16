package dkd.okay.business.purchase.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import dkd.okay.business.purchase.bo.OrderDetail;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 协议采购订单明细dao实现类
 * @author 周渤涛
 *
 */
@Repository(value = "orderDetailDao")
public class OrderDetailDaoImpl extends BaseDaoImpl<OrderDetail, String>{
	/**
	 * 根据主表id查询明细
	 * @param order_id
	 * @return
	 */
	public List<OrderDetail> selectDetailByOId(String order_id) {
		return sqlSession.selectList("OrderDetail.selectDetailByOId", order_id);	
	}
	/**
	 * 根据主表id删除全部明细
	 * @param order_id
	 */
	public void delDet(String order_id) {
		sqlSession.delete("OrderDetail.delDet", order_id);
	}
	/**
	 * 更新已入库数量
	 * @param od
	 * @return
	 */
	public boolean updateAlready(OrderDetail od){
		return sqlSession.update("OrderDetail.updateAlready", od) > 0;
	}
	
	/**
	 * 更新库存数量
	 * @param od
	 * @return
	 */
	public boolean updateStock(OrderDetail od){
		return sqlSession.update("OrderDetail.updateStock", od) > 0;
	}
	/**
	 * 公共页面查询去重复--入库
	 * @param order_id
	 * @param order_detail
	 * @return
	 */
	public List<OrderDetail> selectByIdNotIn(String order_id,String order_detail) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("order_id", order_id);
		map.put("order_detail", StringUtils.isEmpty(order_detail) ? null : order_detail.split(";"));
		return sqlSession.selectList("OrderDetail.selectByIdNotIn", map);	
	}
	/**
	 * 根据主表id查询明细和物资信息 ，并关联查出合同明细中的合同数量和已生成订单数量
	 * @param order_id
	 * @return
	 */
	public List<OrderDetail> selectQuantityByOId(String order_id) {
		return sqlSession.selectList("OrderDetail.selectQuantityByOId", order_id);	
	}
	/**
	 * 公共页面查询去重复--出库
	 * @param order_id
	 * @param order_detail
	 * @return
	 */
	public List<OrderDetail> selectByIdNotOut(String order_id,String order_detail) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("order_id", order_id);
		map.put("order_detail", StringUtils.isEmpty(order_detail) ? null : order_detail.split(";"));
		return sqlSession.selectList("OrderDetail.selectByIdNotOut", map);	
	}
}
