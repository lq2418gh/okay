package dkd.okay.business.tenderContract.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.materialPurchase.dao.MaterialPurchaseDetailDao;
import dkd.okay.business.tenderContract.bo.TenderContractDetail;
import dkd.okay.business.tenderContract.bo.TenderContractHead;
import dkd.okay.business.tenderContract.bo.TenderContractSupplier;
import dkd.okay.business.tenderContract.dao.TenderContractDetailDao;
import dkd.okay.business.tenderContract.dao.TenderContractHeadDao;
import dkd.okay.business.tenderContract.dao.TenderContractSupplierDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="TenderContractHeadService")
@Transactional
public class TenderContractHeadService {

	@Autowired
	private TenderContractHeadDao tenderContractHeadDao;
	
	@Autowired
	private TenderContractSupplierDao tenderContractSupplierDao;
	
	@Autowired
	private TenderContractDetailDao tenderContractDetailDao;
	
	@Autowired
	private MaterialPurchaseDetailDao MaterialPurchaseDetailDao;
	/**
	 * 分页模糊查询
	 */
	public Map<String, Object> select(String pageNow,TenderContractHead tenderContractHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("tenderContractHead", tenderContractHead);
		map.put("page", pageUtil.getPage(pageNow, tenderContractHeadDao.count(map)));//根据父ID查询数量
		List<TenderContractHead> list = tenderContractHeadDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
	/**
	 * 查看
	 */
	public TenderContractHead view(String id) {
		// TODO Auto-generated method stub
		return tenderContractHeadDao.view(id);
	}
	/**
	 * 更新state‘发布’
	 * @param id
	 * @return
	 */
	public int updateTenderContractHead(String id) {
		// TODO Auto-generated method stub
		return tenderContractHeadDao.updateTenderContractHead(id);
	}
	/**
	 * 废标
	 * @param id
	 * @return
	 */
	public String cancel(String id) {
		if(tenderContractHeadDao.cancel(id)>0){
			return "废标成功";
		}
		return null;
	}
	/**
	 * 设置中标供应商id
	 */
	public void updateSupplier(String id,String supplier) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("supplier", supplier);
		tenderContractHeadDao.updateSupplier(map);
	}
	/**
	 * 显示中标供应商的相关信息
	 */
	public TenderContractHead show(String id) {
		return tenderContractHeadDao.show(id);
	}
	/**
	 * 到寻查询编号
	 * @return
	 */
	public String selectTender_no() {
		// TODO Auto-generated method stub
		return tenderContractHeadDao.selectTender_no();
	}
	public String addTSM(TenderContractHead tenderContractHead) {
		String id=UUIDGenerator.getUUID();
		tenderContractHead.setId(id);
		if(tenderContractHeadDao.insert(tenderContractHead)>0){
			List<TenderContractDetail> tenderContractDetailList = tenderContractHead.getTenderContractDetailList();
			for (int j = 0; j < tenderContractDetailList.size(); j++) {
				tenderContractDetailList.get(j).setId(UUIDGenerator.getUUID());
				tenderContractDetailList.get(j).setTcd_row_num(j+1);
				tenderContractDetailList.get(j).setTender_contract(id);
				tenderContractDetailDao.insert(tenderContractDetailList.get(j));
				String purchase_detail_id = tenderContractDetailList.get(j).getPurchase_detail_id();
				MaterialPurchaseDetailDao.updChoiceState(purchase_detail_id);
			}
			List<TenderContractSupplier> tenderContractSupplierList = tenderContractHead.getTenderContractSupplierList();
			for (TenderContractSupplier tenderContractSupplier : tenderContractSupplierList) {
				tenderContractSupplier.setId(UUIDGenerator.getUUID());
				tenderContractSupplier.setTender_contract(id);
				tenderContractSupplierDao.insert(tenderContractSupplier);
			}
				return "添加成功"+id;
			
		}
		return "保存失败";
	}
	public void updTCH(TenderContractHead tenderContractHead) {
		// TODO Auto-generated method stub
		tenderContractHeadDao.update(tenderContractHead);
	}
	public String saveTSDS(TenderContractHead tenderContractHead) {
		// TODO Auto-generated method stub
		String id = tenderContractHead.getId();
		List<TenderContractDetail> tenderContractDetailList = tenderContractHead.getTenderContractDetailList();
		for (int j = 0; j < tenderContractDetailList.size(); j++) {
			tenderContractDetailList.get(j).setId(UUIDGenerator.getUUID());
			tenderContractDetailList.get(j).setTcd_row_num(j+1);
			tenderContractDetailList.get(j).setTender_contract(id);
			tenderContractDetailDao.insert(tenderContractDetailList.get(j));
			String purchase_detail_id = tenderContractDetailList.get(j).getPurchase_detail_id();
			MaterialPurchaseDetailDao.updChoiceState(purchase_detail_id);
		}
		List<TenderContractSupplier> tenderContractSupplierList = tenderContractHead.getTenderContractSupplierList();
		for (TenderContractSupplier tenderContractSupplier : tenderContractSupplierList) {
			tenderContractSupplier.setId(UUIDGenerator.getUUID());
			tenderContractSupplier.setTender_contract(id);
			tenderContractSupplierDao.insert(tenderContractSupplier);
		}
			return "更新成功"+id;
	}
	
}
