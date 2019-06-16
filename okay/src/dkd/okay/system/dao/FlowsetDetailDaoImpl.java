package dkd.okay.system.dao;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.FlowsetDetail;

/**
 *流程明细DAO接口实现类
 * @author SY
 *
 */

@Repository(value="FlowsetDetailDao")
public class FlowsetDetailDaoImpl extends BaseDaoImpl<FlowsetDetail, String>{

	public void deleteFlowsetDetail(String record_id) {
		sqlSession.update("FlowsetDetail.deleteFlowsetDetail", record_id);
	}
}
