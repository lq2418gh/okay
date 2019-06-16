package dkd.okay.business.purchase.dao;


import org.springframework.stereotype.Repository;

import dkd.okay.business.purchase.bo.Order;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 协议采购订单dao实现类
 * @author 周渤涛
 *
 */
@Repository(value = "orderDao")
public class OrderDaoImpl extends BaseDaoImpl<Order, String>{
	/**
	 * 查询最新订单号
	 * @param yearMon
	 * @return
	 */
	public int countNo(String yearMon) {
		Integer count = (Integer)sqlSession.selectOne("Order.countNo",yearMon);
		return count.intValue();
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delPur(String id) {
		sqlSession.delete("Order.delPur", id);
	}
	/**
	 * 更新单据状态
	 * @param order
	 */
	public void updateState(Order order){
		sqlSession.update("Order.updateState", order);
	}
	/**
	 * 更新完结状态
	 * @param order
	 */
	public void updateOrderState(Order order){
		sqlSession.update("Order.updateOrderState", order);
	}
	
}
