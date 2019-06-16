package dkd.okay.business.storage.dao;


import org.springframework.stereotype.Repository;

import dkd.okay.business.storage.bo.Direct;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 直达现场
 * @author 周渤涛
 *
 */
@Repository(value = "directHeadDao")
public class DirectHeadDao extends BaseDaoImpl<Direct, String>{
	
	/**
	 * 查看
	 */
	public Direct view(String id) {
		return sqlSession.selectOne("Direct.view", id);
	}
	/**
	 * 提交
	 */
	public int submit(Direct direct) {
		return sqlSession.update("Direct.submit", direct);
	}
//	/**
//	 * 倒叙查询入库编号
//	 */
//	public String selectDirectNo() {
//		return sqlSession.selectOne("Direct.selectDirectNo");
//	}
	
	/**
	 * 查询最新订单号
	 * @param yearMon
	 * @return
	 */
	public int selectDirectNo(String yearMon) {
		Integer count = (Integer)sqlSession.selectOne("Direct.selectDirectNo",yearMon);
		return count.intValue();
	}
}
