package dkd.okay.business.baseinfo.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.baseinfo.bo.SupplierScore;
import dkd.okay.business.baseinfo.dao.SupplierScoreDao;

/**
 * @author:linss
 * @date:2017年8月23日
 */
@Service(value="supplierScoreService")
@Transactional
public class SupplierScoreService {
	
	@Autowired
	private SupplierScoreDao supplierScoreDao;
	
	public void insert(SupplierScore supplierScore){
		supplierScoreDao.insert(supplierScore);
	}

	public void delete(String supplier_id) {
		supplierScoreDao.delete(supplier_id);
	}
	
}
