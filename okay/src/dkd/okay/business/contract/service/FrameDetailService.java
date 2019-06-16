package dkd.okay.business.contract.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.contract.bo.FrameDetail;
import dkd.okay.business.contract.dao.FrameDetailDao;

/**
 * 框架协议明细信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="frameDetailService")
@Transactional
public class FrameDetailService{
	@Autowired
	private FrameDetailDao frameDetailDao;
	

	public List<FrameDetail> selectById(String frameHead,String details) {
		List<FrameDetail> list = frameDetailDao.selectById(frameHead,details);
		return list;
	}
	
}