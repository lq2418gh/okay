package dkd.okay.business.purchase.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.purchase.bo.PurchaseDetail;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 采购计划明细dao实现类
 * @author 李奇
 *
 */
@Repository(value = "purchaseDetailDao")
public class PurchaseDetailDaoImpl extends BaseDaoImpl<PurchaseDetail, String>{


	/**
	 * @param plan_id  根据主表id查询 采购计划明细
	 * @return
	 */
	public List<PurchaseDetail> selectDetailByPId(String plan_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("PurchaseDetail.selectDetailByPId", plan_id);	
		
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delDet(String id) {
		// TODO Auto-generated method stub
		sqlSession.delete("PurchaseDetail.delDet", id);
	}
	/**
	 * 添加Detail
	 * @param purchaseDetailList
	 */
	public void addPD(List<PurchaseDetail> purchaseDetailList) {
		// TODO Auto-generated method stub
		sqlSession.insert("PurchaseDetail.addPD",purchaseDetailList);
	}
}
