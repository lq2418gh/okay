package dkd.okay.business.contract.dao;

import org.springframework.stereotype.Repository;

import dkd.okay.business.contract.bo.PurchaseContractHead;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 框架协议主表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "purchaseContractHeadDao")
public class PurchaseContractHeadDao  extends BaseDaoImpl<PurchaseContractHead, String>{

	public int countNo(String yearMon) {
		Integer count = (Integer)sqlSession.selectOne("PurchaseContractHead.countNo",yearMon);
		return count.intValue();
	}
	public int selectNoRepeat(String contractNo) {
		Integer count = (Integer) sqlSession.selectOne("PurchaseContractHead.selectNoRepeat", contractNo);
		return count.intValue(); 
	}
	/**
	 * 判断招标合同是否生成
	 */
	public PurchaseContractHead selectByTenderContract(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("PurchaseContractHead.selectByTenderContract", id);
	}
	
}