package dkd.okay.business.storage.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.storage.bo.StorageDetail;
import dkd.okay.business.storage.bo.StorageHead;
import dkd.okay.business.storage.dao.StorageDetailDao;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="storageDetailService")
@Transactional
public class StorageDetailService {
	
	@Autowired
	private StorageDetailDao storageDetailDao;
	
	/**
	 * 删除
	 */
	public void deleteDetalsByHeadId(String storge_head) {
		storageDetailDao.deleteDetalsByHeadId(storge_head);
	}
	/**
	 * 批量插入
	 */
	public int bathInsert(List<StorageDetail> storageDetailList){
		return storageDetailDao.bathInsert(storageDetailList);
	}
	
	/**
	 * 批量插入(删除用)
	 */
	public String bathInserts(StorageHead storageHead){
		List<StorageDetail> storageDetails = storageHead.getStorageDetailList();
		int i=1;
		for (StorageDetail storageDetail : storageDetails) {
			storageDetail.setId(UUIDGenerator.getUUID());
			storageDetail.setStorge_head(storageHead.getId());
			storageDetail.setNo(i++);
		}
		if(this.bathInsert(storageDetails)>0){
			return "保存成功";
		}
		return "保存失败";
	}
}