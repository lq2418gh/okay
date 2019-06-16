package dkd.okay.business.materialPurchase.dao;

import org.springframework.stereotype.Repository;

import dkd.okay.business.materialPurchase.bo.MaterialPurchaseHead;
import dkd.okay.system.dao.BaseDaoImpl;

@Repository(value = "materialPurchaseHeadDao")
public class MaterialPurchaseHeadDao extends BaseDaoImpl<MaterialPurchaseHead, String>{
	
	/**
	 * 查看
	 */
	public MaterialPurchaseHead findMP(String id) {
		return sqlSession.selectOne("MaterialPurchaseHead.findMP", id);
	}
	
	/**
	 * 根据部门id和查询明细表倒叙取出编号
	 */
	public String selectByDepartment(){
		return sqlSession.selectOne("MaterialPurchaseHead.selectByDepartment");
	}
	
	/**
	 * 更新单据状态
	 */
	public int updateState(String id) {
		return sqlSession.update("MaterialPurchaseHead.updateState",id);
	}


}
