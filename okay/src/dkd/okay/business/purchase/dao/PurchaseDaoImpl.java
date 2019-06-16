package dkd.okay.business.purchase.dao;


import org.springframework.stereotype.Repository;

import dkd.okay.business.purchase.bo.Purchase;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 物质采购dao实现类
 * @author 李奇
 *
 */
@Repository(value = "purchaseDao")
public class PurchaseDaoImpl extends BaseDaoImpl<Purchase, String>{
	/**
	 * 倒叙查询  判断Plan_NO
	 * @param year 
	 * @return
	 */
	public String selectPurchasePlanNo() {
		return sqlSession.selectOne("Purchase.selectPurchasePlanNo");
	}
	/**
	 * 通过year查询采购数据
	 * @param year
	 * @return
	 */
	public int selectCountByYear(String year) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Purchase.selectCountByYear", year);
	}
	/**
	 * 查询部门和用户名
	 * @param plan_id
	 * @return
	 */
	public Purchase findCUById(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Purchase.findCUById", id);
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delPur(String id) {
		sqlSession.delete("Purchase.delPur", id);
	}
	/**
	 * byid查询
	 * @param id
	 */
	public Purchase selectByPlanID(String id){
		return sqlSession.selectOne("Purchase.selectByPlanID", id);
	}
	/**
	 * by year and部门id 查询
	 * @param purchase
	 * @return
	 */
	public int selectCountPlan(Purchase purchase) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Purchase.selectCountPlan", purchase);
	}
	/**
	 * @param plan_id  根据主表id查询 采购计划明细
	 * @return
	 */
	public Purchase selectDetailById(String plan_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Purchase.selectDetailById", plan_id);	
		
	}
	public String selectById(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Purchase.selectYearById", id);
	}
}
