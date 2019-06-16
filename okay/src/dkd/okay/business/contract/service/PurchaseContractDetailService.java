package dkd.okay.business.contract.service;

import java.math.BigDecimal;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.contract.bo.PurchaseContractDetail;
import dkd.okay.business.contract.dao.PurchaseContractDetailDao;
import dkd.okay.business.materialPurchase.dao.MaterialPurchaseDetailDao;

/**
 * 采购合同明细信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="purchaseContractDetailService")
@Transactional
public class PurchaseContractDetailService{
	@Autowired
	private PurchaseContractDetailDao purchaseContractDetailDao;
	@Autowired
	private MaterialPurchaseDetailDao materialPurchaseDetailDao;

	public List<PurchaseContractDetail> selectDetailByCId(String purchaseContractHead) {
		return purchaseContractDetailDao.selectDetailByCId(purchaseContractHead);
	}
	
	public List<PurchaseContractDetail> selectByIdNotIn(String purchaseContractHead,String details) {
		return purchaseContractDetailDao.selectByIdNotIn(purchaseContractHead,details);
	}
	
	
	/**
	 * 更新订单中已入库数量
	 * @param id					订单明细ID
	 * @param main_quantity			整件入库数量
	 * @param secondary_quantity	散件入库数量
	 * @return
	 */
	public boolean updateAlreadyNum(String id ,BigDecimal quantity){
		if(StringUtils.isEmpty(id))//完整性判断
			return false;
		PurchaseContractDetail  cd = purchaseContractDetailDao.get(id);//查询明细
		BigDecimal old_quantity = cd.getQuantity();
		BigDecimal old_already_quantity = (null == cd.getAlready_quantity()) ? new BigDecimal(0) : cd.getAlready_quantity();
		
		BigDecimal new_already_quantity = old_already_quantity.add(quantity);
		//进行四舍五入，保留两位小数
		cd.setAlready_quantity(new_already_quantity.setScale(2,BigDecimal.ROUND_HALF_UP));
		
		if(new_already_quantity.compareTo(old_quantity) == -1){
			cd.setIs_already("Y");
		}else{
			cd.setIs_already("N");
		}
		return purchaseContractDetailDao.updateAlready(cd);
	}

	public void delTCD(String id) {
		List<PurchaseContractDetail> list=purchaseContractDetailDao.selectById(id);
		for(PurchaseContractDetail purchaseContractDetail:list){
			materialPurchaseDetailDao.recoverChoiceState(purchaseContractDetail.getPurchase_detail_id());
		}
	}
	
}