package dkd.okay.business.tender.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.tender.bo.TenderFrameSupplier;
import dkd.okay.business.tender.dao.TenderFrameSupplierDao;

@Service(value="TenderFrameSupplierService")
@Transactional
public class TenderFrameSupplierService {
	
	@Autowired
	private TenderFrameSupplierDao tenderFrameSupplierDao;

	public void delTFS(String id) {
		// TODO Auto-generated method stub
		tenderFrameSupplierDao.delete(id);
	}
	/**
	 * 检查供应商信息是否存在
	 */
	public List<TenderFrameSupplier> selectSupplierName(String tender_frame,String supplier_name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_frame", tender_frame);
		map.put("supplier_name", supplier_name);
		return tenderFrameSupplierDao.selectSupplierName(map);
	}
	/**
	 * 查找供应商id和框架协议招标供应商ID
	 */
	public TenderFrameSupplier selectSupplierIdAndId(String tender_frame,String supplier_name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tender_frame", tender_frame);
		map.put("supplier_name", supplier_name);
		return tenderFrameSupplierDao.selectSupplierIdAndId(map);
	}
	
}
