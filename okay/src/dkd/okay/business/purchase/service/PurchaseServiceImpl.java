package dkd.okay.business.purchase.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.purchase.bo.Purchase;
import dkd.okay.business.purchase.bo.PurchaseDetail;
import dkd.okay.business.purchase.dao.PurchaseDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;
/**
 * 物质采购Service实现类
 * @author 李奇
 *
 */
@Service(value="purchaseService")
@Transactional
public class PurchaseServiceImpl {

	@Autowired
	private PurchaseDaoImpl purchaseDaoImpl;
	@Autowired
	private PurchaseDetailServiceImpl purchaseDetailServiceImpl;
	/***
	 * 分页模糊：物资采购计划
	 * @param purchase
	 * @param pageNow
	 * @param pageUtil
	 * @param companyId 
	 * @return
	 */
	public Map<String, Object> selectPurchaseList(Purchase purchase, String pageNow,PageUtil pageUtil) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("purchase", purchase);
		map.put("page", pageUtil.getPage(pageNow, purchaseDaoImpl.count(map)));
		List<Purchase> purchaseList = purchaseDaoImpl.selectByCondition(map);
		map.put("purchaseList", purchaseList);
		return map;
	}
	/**
	 * 查询 判断 plan_no 
	 * @param year 
	 * @return
	 */
	public String selectPurchasePlanNo() {
		return purchaseDaoImpl.selectPurchasePlanNo();
	}
	/**
	 * 通过year查询采购数据
	 * @param year
	 * @return int
	 */
	public int selectCountByYear(String year) {
		return purchaseDaoImpl.selectCountByYear(year);
	}
	/**
	 * 查询对应的部门名和用户名
	 * @param plan_id
	 */
	public Purchase findCUById(String id) {
		// TODO Auto-generated method stub
		return purchaseDaoImpl.findCUById(id);
	}
	
	/**
	 * 插入数据
	 */
	public String insertPAndPd(Purchase purchase) {
		Purchase p = new Purchase();
		String id=UUIDGenerator.getUUID();
		p.setId(id);
		p.setPlan_no(purchase.getPlan_no());
		p.setDepartmentId(purchase.getDepartmentId());
		p.setInput_userid(purchase.getInput_userid());
		p.setInput_date(purchase.getInput_date());
		p.setYear(purchase.getYear());
		p.setAll_amount(purchase.getAll_amount());
		if(purchaseDaoImpl.insert(p)>0){
			List<PurchaseDetail> list = purchase.getPurchaseDetailList();
			PurchaseDetail PD = new PurchaseDetail();
			int i=1;
			for (PurchaseDetail purchaseDetail : list) {
				PD.setId(UUIDGenerator.getUUID());
				PD.setPurchaseDetail_row_no(i++);
				PD.setPurchase_head_id(id);
				PD.setMateriel_id(purchaseDetail.getMateriel_id());
				PD.setBudget_account(purchaseDetail.getBudget_account());
				PD.setBudget_amount(purchaseDetail.getBudget_amount());
				PD.setPurpose(purchaseDetail.getPurpose());
				PD.setDemand_date(purchaseDetail.getDemand_date());
				PD.setDemand_quantity(purchaseDetail.getDemand_quantity());
				purchaseDetailServiceImpl.insertPAndPd(PD);
			}
			return "保存成功"+id;
		}
		return "保存失败";
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delPur(String id) {
		purchaseDaoImpl.delPur(id);
	}
	
	/**
	 *编辑
	 */
	public Purchase editPAndPd(String id) {
		return purchaseDaoImpl.selectByPlanID(id);
	}
	/**
	 * by year and 部门id查询 数量
	 */
	public int selectCountPlan(Purchase purchase) {
		return purchaseDaoImpl.selectCountPlan(purchase);
	}
	/**
	 * @param plan_id 根据主表id查询采购计划明细
	 * @returnss
	 */
	public Purchase selectPur(String plan_id) {
		return purchaseDaoImpl.selectDetailById(plan_id);
	}
	/**
	 * 查询年份根据id
	 * @param id
	 * @return
	 */
	public String selectById(String id) {
		return purchaseDaoImpl.selectById(id);
	}
	/**
	 * 修改主表
	 * @param purchase
	 * @return
	 */
	public int updPur(Purchase purchase) {
		return purchaseDaoImpl.update(purchase);
	}
	
}