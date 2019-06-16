package dkd.okay.business.payment.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.payment.bo.Payment;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 付款主表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "paymentDao")
public class PaymentDao  extends BaseDaoImpl<Payment, String>{

	public int countNo(String ymd) {
		Integer count = (Integer)sqlSession.selectOne("Payment.countNo",ymd);
		return count.intValue();
	}

	/**
	 * 校验重复编号
	 * @param map
	 * @return
	 */
	public int selectNoRepeat(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Payment.selectNoRepeat",map);
	}

}