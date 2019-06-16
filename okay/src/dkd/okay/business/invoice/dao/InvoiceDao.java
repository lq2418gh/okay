package dkd.okay.business.invoice.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.invoice.bo.Invoice;
import dkd.okay.system.dao.BaseDaoImpl;

/**
 * 支票主表信息DAO
 * @author 王莹
 *
 */
@Repository(value = "invoiceDao")
public class InvoiceDao  extends BaseDaoImpl<Invoice, String>{
	public int selectNoRepeat(Map<String, Object> map) {
		Integer count = (Integer) sqlSession.selectOne("Invoice.selectNoRepeat", map);
		return count.intValue(); 
	}

	public int countPublic(Object param) {
		Integer count = (Integer) sqlSession.selectOne("Invoice.countPublic",param);
		return count.intValue(); 
	}

	public List<Invoice> selectPublic(Map<String, Object> map) {
		return sqlSession.selectList("Invoice.selectPublic", map);  
	}

	public int selectInvoiceNoAndIs_already(Map<String, Object> map) {
		return sqlSession.update("Invoice.selectInvoiceNosAndIs_already", map);
	}
}