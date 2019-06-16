package dkd.okay.business.invoice.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.invoice.bo.Invoice;
import dkd.okay.business.invoice.bo.InvoiceDetail;
import dkd.okay.business.invoice.dao.InvoiceDao;
import dkd.okay.business.invoice.dao.InvoiceDetailDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 发票信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="invoiceService")
@Transactional
public class InvoiceService{
	@Autowired
	private InvoiceDao invoiceDao;
	@Autowired
	private InvoiceDetailDao invoiceDetailDao;

	public Map<String, Object> select(String pageNow, Invoice invoice) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("invoice", invoice);
		map.put("page", pageUtil.getPage(pageNow, invoiceDao.count(map)));//根据父ID查询数量
		List<Invoice> list=invoiceDao.selectByCondition(map);
		map.put("list",list);
		return map;
	}

	public Object selectById(String id) {
		return invoiceDao.get(id);
	}

	public String save(Invoice invoice) {
		if(StringUtils.isEmpty(invoice.getId())){
			String id=UUIDGenerator.getUUID();
			invoice.setId(id);
			invoice.setIs_already("0");
			invoiceDao.insert(invoice);
			}
		else{
			invoiceDao.update(invoice);
		}
		invoiceDetailDao.delete(invoice.getId());
		List<InvoiceDetail> list=invoice.getInvoiceDetailList();
		for(InvoiceDetail invoiceDetail : list){
			invoiceDetail.setId(UUIDGenerator.getUUID());
			invoiceDetail.setInvoiceId(invoice.getId());
			invoiceDetailDao.insert(invoiceDetail);
		}
		String back="保存成功！";
		return back;
	}

	public String delete(String id) {
		invoiceDao.delete(id);
		invoiceDetailDao.delete(id);
		String back="删除成功！";
		return back;
	}

	public boolean selectNoRepeat(String invoiceNo, String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id",id);
		map.put("invoiceNo", invoiceNo);
		if(invoiceDao.selectNoRepeat(map) > 0){
			return false;
		}else{
			return true;
		}
	}

	public Map<String, Object> query(String invoiceIds, String pageNow, Invoice invoice) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		if(!StringUtils.isEmpty(invoiceIds)){
			String [] ids=invoiceIds.split(","); 
			map.put("ids", ids);
		}
		map.put("invoice", invoice);
		map.put("page", pageUtil.getPage(pageNow, invoiceDao.countPublic(map)));//根据父ID查询数量
		List<Invoice> list=invoiceDao.selectPublic(map);
		map.put("list",list);
		return map;	
	}
	/**
	 * 修改单据是否已经选择
	 */
	public int selectInvoiceNosAndIs_already(String invoiceNos,String is_already) {
		Map<String, Object> map = new HashMap<String, Object>();
		String [] Nos=invoiceNos.split(",");
		map.put("Nos", Nos);
		map.put("is_already", is_already);
		return invoiceDao.selectInvoiceNoAndIs_already(map);
	}
}