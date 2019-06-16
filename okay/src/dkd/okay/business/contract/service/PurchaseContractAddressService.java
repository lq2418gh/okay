package dkd.okay.business.contract.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.contract.bo.PurchaseContractAddress;
import dkd.okay.business.contract.dao.PurchaseContractAddressDao;

/**
 * 采购合同收货地址信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="purchaseContractAddressService")
@Transactional
public class PurchaseContractAddressService{
	@Autowired
	private PurchaseContractAddressDao purchaseContractAddressDao;

	public List<PurchaseContractAddress> selectById(String purchaseContractHead) {
		List<PurchaseContractAddress> list = purchaseContractAddressDao.selectById(purchaseContractHead);
		return list;
	}
	
}