package dkd.okay.business.tenderContract.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.materialPurchase.dao.MaterialPurchaseDetailDao;
import dkd.okay.business.tenderContract.bo.TenderContractDetail;
import dkd.okay.business.tenderContract.dao.TenderContractDetailDao;

@Service(value="TenderContractDetailService")
@Transactional
public class TenderContractDetailService {
	@Autowired
	private TenderContractDetailDao tenderContractDetailDao;
	@Autowired
	private MaterialPurchaseDetailDao materialPurchaseDetailDao;
	/**
	 * 查询物资数量
	 */
	public List<TenderContractDetail> selectMaterial(String tender_contract) {
		return tenderContractDetailDao.selectMaterial(tender_contract);
	}
	/**
	 * 查找明细表的id
	 */
	public TenderContractDetail selectID(String tender_contract,String tcd_row_num) {
		int parseInt = Integer.parseInt(tcd_row_num);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_contract", tender_contract);
		map.put("tcd_row_num", parseInt);
		return tenderContractDetailDao.selectID(map);
	}
	/**
	 * 设置中标价格
	 */
	public void updatePrice(String tender_detail,BigDecimal main_Price,BigDecimal secondary_Price) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_detail", tender_detail);
		map.put("main_Price", main_Price);
		map.put("secondary_Price", secondary_Price);
		tenderContractDetailDao.updatePrice(map);
	}
	public void delTCD(String id) {
		// TODO Auto-generated method stub
		List<TenderContractDetail> findDtetailByIdList= tenderContractDetailDao.findDtetailById(id);
		for (TenderContractDetail tenderContractDetail : findDtetailByIdList) {
			String purchase_detail_id = tenderContractDetail.getPurchase_detail_id();
			materialPurchaseDetailDao.recoverChoiceState(purchase_detail_id);
		}
		tenderContractDetailDao.delete(id);
	}
}

