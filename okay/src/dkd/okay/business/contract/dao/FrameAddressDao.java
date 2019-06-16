package dkd.okay.business.contract.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.contract.bo.FrameAddress;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 交货地址信息DAO
 * @author 王莹
 *
 */
@Repository(value = "frameAddressDao")
public class FrameAddressDao  extends BaseDaoImpl<FrameAddress, String>{

	public List<FrameAddress> selectById(String frameHead) {
		return sqlSession.selectList("FrameAddress.selectById",frameHead);
	}
	
}