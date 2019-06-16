package dkd.okay.business.invoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.invoice.bo.InvoiceDetail;
import dkd.okay.business.invoice.dao.InvoiceDetailDao;

/**
 * 发票明细信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="invoiceDetailService")
@Transactional
public class InvoiceDetailService{
	@Autowired
	private InvoiceDetailDao invoiceDetaildao;

	
	public List<InvoiceDetail> selectById(String invoiceId) {
		List<InvoiceDetail> list = invoiceDetaildao.selectById(invoiceId);
		return list;
	}
}