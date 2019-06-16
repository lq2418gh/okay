package dkd.okay.system.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Flowset;

/**
 *流程配置DAO接口实现类
 * @author SY
 *
 */

@Repository(value="FlowsetDao")
public class FlowsetDaoImpl extends BaseDaoImpl<Flowset, String>{

	public void deleteFlowset(String record_id) {
		sqlSession.update("Flowset.deleteFlowset", record_id);
	}

	public Flowset selectByCode(String record_code) {
		return sqlSession.selectOne("Flowset.selectByCode", record_code);
	}

	public void updateSQL(Map<String, Object> map) {
		sqlSession.update("Flowset.updateSQL", map);
	}
}