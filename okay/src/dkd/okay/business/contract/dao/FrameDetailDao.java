package dkd.okay.business.contract.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import dkd.okay.business.contract.bo.FrameDetail;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 框架协议明细表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "frameDetailDao")
public class FrameDetailDao  extends BaseDaoImpl<FrameDetail, String>{

	public List<FrameDetail> selectById(String frameHead,String details) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("frame_id", frameHead);
		map.put("details", StringUtils.isEmpty(details) ? null : details.split(";"));
		return sqlSession.selectList("FrameDetail.selectById",map);
	}

	public List<FrameDetail> getFrameDetailList(String frameHeadId) {
		
		return sqlSession.selectList("FrameDetail.getFrameDetailList", frameHeadId);
	}

	
}