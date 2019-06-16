package dkd.okay.business.baseinfo.serivce;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.baseinfo.bo.SupplierCapacity;
import dkd.okay.business.baseinfo.dao.SupplierCapacityDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * @author:linss
 * @date:2017年8月25日
 */
@Service(value="supplierCapacityService")
@Transactional
public class SupplierCapacityService {
	
	@Autowired
	private SupplierCapacityDao supplierCapacityDao;
	
	public List<SupplierCapacity> getSupplierCapacity(String supplierId){
		return supplierCapacityDao.getSupplierCapacity(supplierId);
		
	}

	public Map<String, Object> query(SupplierCapacity supplierCapacity, String pageNow) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("wzcode", supplierCapacity.getWzcode());
		map.put("wzname", supplierCapacity.getWzname());
		map.put("supplier_id", supplierCapacity.getSupplier_id());
		int totalCount = supplierCapacityDao.count(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<SupplierCapacity> supplierCapacityList = supplierCapacityDao.selectByCondition(map);
		map.put("supplierCapacityList", supplierCapacityList);
		return map;
	}

	public void save(SupplierCapacity supplierCapacity) {
		//删除
		supplierCapacityDao.delete(supplierCapacity.getSupplier_id());
		List<SupplierCapacity> capacityList = supplierCapacity.getCapacityList();
		//有产能说明信息
		if(capacityList != null && capacityList.size()>0){
			for (SupplierCapacity newSupplierCapacity : capacityList) {
				newSupplierCapacity.setId(UUIDGenerator.getUUID());
				newSupplierCapacity.setSupplier_id(supplierCapacity.getSupplier_id());
				System.out.println(newSupplierCapacity);
				supplierCapacityDao.insert(newSupplierCapacity);
			}
		}
	}
	/**
	 * 根据id查询产能说明的物资id
	 * @param supplierId
	 * @return
	 */
	public List<SupplierCapacity> viewSupplierCapacity(String supplierId, String materialIds) {
		String[] split = materialIds.split(",");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("supplierId", supplierId);
		map.put("mids", split);
		List<SupplierCapacity> spCount = supplierCapacityDao.viewSupplierCapacizty(map);
		return spCount;
	}

	public List<SupplierCapacity> compareSupplierCapacity(String supplierIds, String materialId) {
		String[] split = supplierIds.split(",");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("materialId", materialId);
		map.put("supIds", split);
		List<SupplierCapacity> compareSupplierCapacity = supplierCapacityDao.compareSupplierCapacity(map);
		return compareSupplierCapacity;
	}
    /**
     * 根据供应商id查找其产能说明
     * @param supplierId
     * @return List<SupplierCapacity>
     * @date:2017年9月27日
     * @author:佚名  <--<--<-- (-------------写上注释------------- by:linss)
     */
	public List<SupplierCapacity> findSMid(String supplierId) {
		return supplierCapacityDao.findSMid(supplierId);
	}
	
	public List<SupplierCapacity> findMids(String materialId) {
		return supplierCapacityDao.findMids(materialId);
	}
	/**回填供应商产能说明价格
	 * @param supplierId 供应商id
	 * @param materialId 物资id
	 * @param price 价格
	 * @return 
	 * @date:2017年9月27日
	 * @author:linss
	 */
	public String returnSupplierCapacityPrice(String supplierId,String materialId,BigDecimal price){
		StringBuffer sb = new StringBuffer();
		if(price.compareTo(BigDecimal.ZERO)!=1){
			sb.append("价格不能小于零");
		}else{
			SupplierCapacity supplierCapacity = supplierCapacityDao.findCanpacityBySupplierIdandMaterialId(supplierId,materialId);
			if(null == supplierCapacity){
				sb.append(supplierId);
				sb.append("+");
				sb.append(materialId);
			}else{
				supplierCapacity.setPrice(price);
				supplierCapacityDao.update(supplierCapacity);
			}
		}
		return sb.toString();
	}
}
