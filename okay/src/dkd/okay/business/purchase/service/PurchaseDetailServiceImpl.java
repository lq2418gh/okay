package dkd.okay.business.purchase.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.purchase.bo.PurchaseDetail;
import dkd.okay.business.purchase.dao.PurchaseDetailDaoImpl;
import dkd.okay.system.util.uuid.UUIDGenerator;
/**
 * 采购计划明细Service实现类
 * @author 李奇
 *
 */
@Service(value="purchaseDetailService")
@Transactional
public class PurchaseDetailServiceImpl {

	@Autowired
	private PurchaseDetailDaoImpl purchaseDetailDao;

	/**
	 * @param plan_id 根据主表id查询采购计划明细
	 * @return
	 */
	public List<PurchaseDetail> selectDetail(String plan_id) {
		return purchaseDetailDao.selectDetailByPId(plan_id);
	}
	
	/**
	 * 插入数据
	 */
	public int insertPAndPd(PurchaseDetail purchaseDetail) {
		return purchaseDetailDao.insert(purchaseDetail);
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delDet(String id) {
		purchaseDetailDao.delDet(id);	
	}



	public String insertPd(List<PurchaseDetail> purchaseDetailList, String id) {
		int i=1;
		for (PurchaseDetail purchaseDetail : purchaseDetailList) {
			purchaseDetail.setId(UUIDGenerator.getUUID());
			purchaseDetail.setPurchaseDetail_row_no(i++);
			purchaseDetail.setPurchase_head_id(id);
		}
		purchaseDetailDao.addPD(purchaseDetailList);
		return "修改成功"+id;
	}
}