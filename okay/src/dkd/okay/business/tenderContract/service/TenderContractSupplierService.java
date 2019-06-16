package dkd.okay.business.tenderContract.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.tenderContract.bo.TenderContractSupplier;
import dkd.okay.business.tenderContract.dao.TenderContractSupplierDao;

@Service(value="TenderContractSupplierService")
@Transactional
public class TenderContractSupplierService {

	@Autowired
	private TenderContractSupplierDao tenderContractSupplierDao;

	/**
	 * 检查供应商信息是否存在
	 */
	public List<TenderContractSupplier> selectSupplierName(String tender_contract,String supplier_name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_contract", tender_contract);
		map.put("supplier_name", supplier_name);
		return tenderContractSupplierDao.selectSupplierName(map);
	}

	/**
	 * 查找供应商id和框架协议招标供应商ID
	 */
	public TenderContractSupplier selectSupplierIdAndId(String tender_contract,String supplier_name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_contract", tender_contract);
		map.put("supplier_name", supplier_name);
		return tenderContractSupplierDao.selectSupplierIdAndId(map);
	}

	public void delTCS(String id) {
		// TODO Auto-generated method stub
		tenderContractSupplierDao.delete(id);
	}

}
