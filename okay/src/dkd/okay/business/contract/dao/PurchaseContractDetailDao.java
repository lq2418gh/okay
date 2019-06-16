package dkd.okay.business.contract.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import dkd.okay.business.contract.bo.PurchaseContractDetail;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 采购合同明细表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "purchaseContractDetailDao")
public class PurchaseContractDetailDao  extends BaseDaoImpl<PurchaseContractDetail, String>{

	public List<PurchaseContractDetail> selectDetailByCId(String purchaseContractHead) {
		return sqlSession.selectList("PurchaseContractDetail.selectDetailByCId",purchaseContractHead);
	}
	
	public List<PurchaseContractDetail> selectByIdNotIn(String purchaseContractHead,String details) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("contract_id", purchaseContractHead);
		map.put("details", StringUtils.isEmpty(details) ? null : details.split(";"));
		return sqlSession.selectList("PurchaseContractDetail.selectByIdNotIn",map);
	}

	/**
	 * 更新状态
	 */
	public boolean updateAlready(PurchaseContractDetail pd){
		return sqlSession.update("PurchaseContractDetail.updateAlready", pd) > 0;
	}

	public List<PurchaseContractDetail> selectById(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("PurchaseContractDetail.selectById",id);
	}

	
}