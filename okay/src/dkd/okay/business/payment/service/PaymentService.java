package dkd.okay.business.payment.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.invoice.bo.Invoice;
import dkd.okay.business.invoice.dao.InvoiceDao;
import dkd.okay.business.invoice.service.InvoiceService;
import dkd.okay.business.payment.bo.Payment;
import dkd.okay.business.payment.dao.PaymentDao;
import dkd.okay.business.storage.bo.StorageDetail;
import dkd.okay.business.storage.dao.StorageDetailDao;
import dkd.okay.business.storage.service.StorageHeadService;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="paymentService")
@Transactional
public class PaymentService {
	@Autowired
	private PaymentDao paymentDao;
	@Autowired
	private InvoiceService invoiceService;
	@Autowired
	private StorageHeadService storageHeadService;
	@Autowired
	private InvoiceDao invoiceDao;
	@Autowired
	private StorageDetailDao storageDetaildao;
	
	
	public Map<String, Object> select(String pageNow, Payment payment) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("payment", payment);
		map.put("page", pageUtil.getPage(pageNow, paymentDao.count(map)));//根据父ID查询数量
		List<Payment> list=paymentDao.selectByCondition(map);
		map.put("list",list);
		return map;
	}
	public Payment selectById(String id) {
		return paymentDao.get(id);
	}
	public int countNo(String ymd) {
		return paymentDao.countNo(ymd);
	}
	public String save(Payment payment) {
		if(StringUtils.isEmpty(payment.getId())){
			String id=UUIDGenerator.getUUID();
			payment.setId(id);
			payment.setState("未付款");
			paymentDao.insert(payment);
		}
		else{
			paymentDao.update(payment);
		}
		if(StringUtils.isNotEmpty(payment.getInvoiceIds())||StringUtils.isNotEmpty(payment.getStorageIds())){
			if(StringUtils.isNotEmpty(payment.getInvoiceIds())){
			    invoiceService.selectInvoiceNosAndIs_already(payment.getInvoiceNos(),"1");
			}
			if(StringUtils.isNotEmpty(payment.getStorageIds())){
			    storageHeadService.selectStorage_noAndIs_choice(payment.getStorageNos(), "1");
			}
		}
		String back="保存成功！";
		return back;
	}
	public void delTCD(String id) {
		Payment payment =paymentDao.get(id);
		if(StringUtils.isNotEmpty(payment.getInvoiceIds())){
		    invoiceService.selectInvoiceNosAndIs_already(payment.getInvoiceNos(),"0");
		}
		if(StringUtils.isNotEmpty(payment.getStorageIds())){
		    storageHeadService.selectStorage_noAndIs_choice(payment.getStorageNos(), "0");
		}
	}
	public String delete(String id) {
		Payment payment =paymentDao.get(id);
		if(StringUtils.isNotEmpty(payment.getInvoiceIds())){
		    invoiceService.selectInvoiceNosAndIs_already(payment.getInvoiceNos(),"0");
		}
		if(StringUtils.isNotEmpty(payment.getStorageIds())){
		    storageHeadService.selectStorage_noAndIs_choice(payment.getStorageNos(), "0");
		}
		paymentDao.delete(id);
		String back="删除成功！";
		return back;
	}
	public String updateState(String id) {
		Payment payment=paymentDao.get(id);
		payment.setState("已付款");
		paymentDao.update(payment);
		String back="修改状态成功！";
		return back;
	}
	public String check(String invoiceIds, String storageIds, BigDecimal amount) {
		int i;
		BigDecimal total=new BigDecimal(0);
		BigDecimal sum=new BigDecimal(0);
		if(StringUtils.isNotEmpty(invoiceIds)){
			String [] invoiceId=invoiceIds.split(",");
			for(i=0;i<invoiceId.length;i++){
				Invoice invoice=invoiceDao.get(invoiceId[i]);
				total=total.add(invoice.getTotal());
			}
		}
		if(StringUtils.isNotEmpty(storageIds)){
			String [] storageId=storageIds.split(",");
			for(i=0;i<storageId.length;i++){
				List<StorageDetail> list=storageDetaildao.selectById(storageId[i]);
				for(StorageDetail storageDetail:list){
					sum=sum.add(storageDetail.getMain_price().multiply(storageDetail.getMain_quantity()));
				}
			}
		}
		String back="";
		if(amount.compareTo(total)==0||total.compareTo(BigDecimal.ZERO)==0){
			if(amount.compareTo(sum)==0||sum.compareTo(BigDecimal.ZERO)==0){
				back="金额符合标准";
			}else{
				back="所填金额不等于所选入库的金额合计值！";
			}
		}else{
			back="所填金额不等于所选发票的金额合计值！";
		}
		return back;
		
	}
	/**
	 * 校验编号是否重复
	 * @param paymentNo
	 * @param id
	 * @return
	 */
	public boolean selectNoRepeat(String paymentNo, String id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id",id);
		map.put("paymentNo", paymentNo);
		if(paymentDao.selectNoRepeat(map) > 0){
			return false;
		}else{
			return true;
		}
	}
}