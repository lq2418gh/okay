package dkd.okay.business.contract.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.baseinfo.serivce.SupplierCapacityService;
import dkd.okay.business.contract.bo.PurchaseContractAddress;
import dkd.okay.business.contract.bo.PurchaseContractDetail;
import dkd.okay.business.contract.bo.PurchaseContractHead;
import dkd.okay.business.contract.dao.PurchaseContractAddressDao;
import dkd.okay.business.contract.dao.PurchaseContractDetailDao;
import dkd.okay.business.contract.dao.PurchaseContractHeadDao;
import dkd.okay.business.materialPurchase.dao.MaterialPurchaseDetailDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 采购合同Service接口实现类
 * @author 王莹
 *
 */
@Service(value="purchaseContractService")
@Transactional
public class PurchaseContractHeadService{
	@Autowired
	private PurchaseContractHeadDao purchaseContractHeadDao;
	@Autowired
	private PurchaseContractDetailDao purchaseContractDetailDao;
	@Autowired
	private PurchaseContractAddressDao purchaseContractAddressDao;
	@Autowired
	private SupplierCapacityService supplierCapacityService;
	@Autowired
	private MaterialPurchaseDetailDao materialPurchaseDetailDao;

	public Map<String, Object> select(String pageNow, PurchaseContractHead purchaseContractHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("purchaseContractHead", purchaseContractHead);
		map.put("page", pageUtil.getPage(pageNow, purchaseContractHeadDao.count(map)));//根据父ID查询数量
		List<PurchaseContractHead> list=purchaseContractHeadDao.selectByCondition(map);
		map.put("list",list);
		return map;
	}

	public String save(PurchaseContractHead purchaseContractHead) throws ParseException {
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		String year=(f.format(purchaseContractHead.getExpireDate())).substring(0,4);
		int i = Integer.parseInt(year)+purchaseContractHead.getExtendedYear();
		String extendedExpireDate=Integer.toString(i)+(f.format(purchaseContractHead.getExpireDate())).substring(4,10);
		Date date=f.parse(extendedExpireDate);
		purchaseContractHead.setExtendedExpireDate(date);  
		if(StringUtils.isEmpty(purchaseContractHead.getId())){
			String id=UUIDGenerator.getUUID();
			purchaseContractHead.setId(id);
			purchaseContractHeadDao.insert(purchaseContractHead);
			}
		else{
			purchaseContractHeadDao.update(purchaseContractHead);
		}
		purchaseContractDetailDao.delete(purchaseContractHead.getId());
		List<PurchaseContractDetail> list1=purchaseContractHead.getPurchaseContractDetailList();
		for(PurchaseContractDetail purchaseContractDetail : list1){
			purchaseContractDetail.setId(UUIDGenerator.getUUID());
			purchaseContractDetail.setPurchaseContractHead(purchaseContractHead.getId());
			purchaseContractDetailDao.insert(purchaseContractDetail);
			materialPurchaseDetailDao.updChoiceState(purchaseContractDetail.getPurchase_detail_id());
			if(purchaseContractHead.getState().equals("生效")){
				supplierCapacityService.returnSupplierCapacityPrice(purchaseContractHead.getSupplier(), purchaseContractDetail.getMaterial(), purchaseContractDetail.getMainPrice());
			}
		}
		purchaseContractAddressDao.delete(purchaseContractHead.getId());
		List<PurchaseContractAddress> list2=purchaseContractHead.getPurchaseContractAddressList();
		for(PurchaseContractAddress purchaseContractAddress : list2){
			purchaseContractAddress.setId(UUIDGenerator.getUUID());
			purchaseContractAddress.setPurchaseContractHead(purchaseContractHead.getId());
			purchaseContractAddressDao.insert(purchaseContractAddress);
		}
		String back="保存成功！";
		return back;
	}

	public String submit(String id) {
		PurchaseContractHead purchaseContractHead=purchaseContractHeadDao.get(id);
		purchaseContractHead.setState("生效");
		purchaseContractHeadDao.update(purchaseContractHead);
		List<PurchaseContractDetail> list=purchaseContractDetailDao.selectDetailByCId(id);
		for(PurchaseContractDetail purchaseContractDetail : list){
			supplierCapacityService.returnSupplierCapacityPrice(purchaseContractHead.getSupplier(), purchaseContractDetail.getMaterial(), purchaseContractDetail.getMainPrice());
		}
		String back="修改状态成功";
		return back;
	}

	public int countNo(String yearMon) {
		return purchaseContractHeadDao.countNo(yearMon);
	}

	public Object selectById(String id) {
		return purchaseContractHeadDao.get(id);
	}

	public List<PurchaseContractHead> selectAll() {
		return purchaseContractHeadDao.selectAll();
	}

	public void update(PurchaseContractHead purchaseContractHead) {
		purchaseContractHeadDao.update(purchaseContractHead);
		
	}
	public boolean selectNoRepeat(String contractNo) {
		if(purchaseContractHeadDao.selectNoRepeat(contractNo) > 0){
			return false;
		}else{
			return true;
		}
	}


	/**
	 * 判断招标合同是否生成
	 */
	public PurchaseContractHead selectByTenderContract(String id) {

		return purchaseContractHeadDao.selectByTenderContract(id);
	}


	/*public Map<String, Object> selectPublic(String pageNow, PurchaseContractHead purchaseContractHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("purchaseContractHead", purchaseContractHead);
		map.put("page", pageUtil.getPage(pageNow, purchaseContractHeadDao.countPublic(map)));//根据父ID查询数量
		List<PurchaseContractHead> list=purchaseContractHeadDao.selectPublic(map);
		map.put("list",list);
		return map;
	}
*/
	
	
}