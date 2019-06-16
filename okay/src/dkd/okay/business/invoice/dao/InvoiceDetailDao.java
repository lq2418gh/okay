package dkd.okay.business.invoice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.invoice.bo.InvoiceDetail;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 支票明细表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "invoiceDetailDao")
public class InvoiceDetailDao  extends BaseDaoImpl<InvoiceDetail, String>{
	public List<InvoiceDetail> selectById(String invoiceId) {
		return sqlSession.selectList("InvoiceDetail.selectById",invoiceId);
	}

}