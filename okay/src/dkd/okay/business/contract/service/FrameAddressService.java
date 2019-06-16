package dkd.okay.business.contract.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.contract.bo.FrameAddress;
import dkd.okay.business.contract.dao.FrameAddressDao;

/**
 * 收货地址信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="frameAddressService")
@Transactional
public class FrameAddressService{
	@Autowired
	private FrameAddressDao frameAddressDao;

	public List<FrameAddress> selectById(String frameHead) {
		List<FrameAddress> list = frameAddressDao.selectById(frameHead);
		return list;
	}
	
}