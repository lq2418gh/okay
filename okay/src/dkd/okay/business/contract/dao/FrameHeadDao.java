package dkd.okay.business.contract.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.contract.bo.FrameHead;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 框架协议主表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "frameHeadDao")
public class FrameHeadDao  extends BaseDaoImpl<FrameHead, String>{

	public int countNo(String yearMon) {
		Integer count = (Integer)sqlSession.selectOne("FrameHead.countNo",yearMon);
		return count.intValue();
	}
	public FrameHead selectByTenderFrame(String tender_frame) {
		return sqlSession.selectOne("FrameHead.selectByTenderFrame",tender_frame);
	}
	public int selectNoRepeat(Map<String, Object> map) {
		Integer count = (Integer) sqlSession.selectOne("FrameHead.selectNoRepeat", map);
		return count.intValue(); 
	}
	public int countPublic(Object param) {
		Integer count = (Integer) sqlSession.selectOne("FrameHead.countPublic",param);
		return count.intValue(); 
	}
	public List<FrameHead> selectPublic(Map<String, Object> map) {
		return sqlSession.selectList("FrameHead.selectPublic", map);  
	}
	
}