package dkd.okay.business.materialPurchase.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.materialPurchase.bo.MaterialPurchaseDetail;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "materialPurchaseDetailDao")
public class MaterialPurchaseDetailDao extends BaseDaoImpl<MaterialPurchaseDetail, String>{
	
	/**
	 * 批量插入明细表
	 */
	public int bathInsertMaterialPurchaseDetail(List<MaterialPurchaseDetail> materialPurchaseDetailList) {
		return sqlSession.insert("MaterialPurchaseDetail.bathInsertMaterialPurchaseDetail",materialPurchaseDetailList);
	}

	public int updChoiceState(String purchase_detail_id) {
		// TODO Auto-generated method stub
		return sqlSession.update("MaterialPurchaseDetail.updChoiceState",purchase_detail_id );
	}

	public void recoverChoiceState(String purchase_detail_id) {
		// TODO Auto-generated method stub
		sqlSession.update("MaterialPurchaseDetail.recoverChoiceState",purchase_detail_id );
	}

	public List<MaterialPurchaseDetail> selectById(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("MaterialPurchaseDetail.selectById",map);
	}

	/**
	 * 根据ID查询计划预算明细信息 周渤涛2017年10月18日加，采购订单选择框架协议单关联的物资审批表明细
	 */
	public List<MaterialPurchaseDetail> selectByFrameId(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("MaterialPurchaseDetail.selectByFrameId",map);
	}
	
	
	
}
