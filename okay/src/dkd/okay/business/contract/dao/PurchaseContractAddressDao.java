package dkd.okay.business.contract.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.contract.bo.PurchaseContractAddress;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 采购合同交货地址信息DAO
 * @author 王莹
 *
 */
@Repository(value = "purchaseContractAddressDao")
public class PurchaseContractAddressDao  extends BaseDaoImpl<PurchaseContractAddress, String>{

	public List<PurchaseContractAddress> selectById(String purchaseContractHead) {
		return sqlSession.selectList("PurchaseContractAddress.selectById",purchaseContractHead);
	}
	
}