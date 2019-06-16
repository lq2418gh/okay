package dkd.okay.business.tender.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.tender.bo.TenderFrameDetail;
import dkd.okay.business.tender.bo.TenderFrameHead;
import dkd.okay.business.tender.bo.TenderFrameSupplier;
import dkd.okay.business.tender.dao.TenderFrameDetailDao;
import dkd.okay.business.tender.dao.TenderFrameHeadDao;
import dkd.okay.business.tender.dao.TenderFrameSupplierDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="TenderFrameHeadService")
@Transactional
public class TenderFrameHeadService {
	
	@Autowired
	private TenderFrameHeadDao tenderFrameHeadDao;
	
	@Autowired
	private TenderFrameSupplierDao tenderFrameSupplierDao;
	
	@Autowired
	private TenderFrameDetailDao tenderFrameDetailDao;
	/**
	 * 分页模糊查询
	 */
	public Map<String, Object> select(String pageNow,TenderFrameHead tenderFrameHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("tenderFrameHead", tenderFrameHead);
		map.put("page", pageUtil.getPage(pageNow, tenderFrameHeadDao.count(map)));//根据父ID查询数量
		List<TenderFrameHead> list = tenderFrameHeadDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
	/**
	 * 倒叙查询招标编码
	 * @return
	 */
	public String selectTender_no() {
		// TODO Auto-generated method stub
		return tenderFrameHeadDao.selectTender_no();
	}

	/**
	 * 添加
	 * @param tenderFrameHead
	 * @return
	 */
	public String addTSM(TenderFrameHead tenderFrameHead) {
		String id=UUIDGenerator.getUUID();
		tenderFrameHead.setId(id);
		if(tenderFrameHeadDao.insert(tenderFrameHead)>0){
			List<TenderFrameDetail> tenderFrameDetailList = tenderFrameHead.getTenderFrameDetailList();
			int i=1;
			for (TenderFrameDetail tenderFrameDetail : tenderFrameDetailList) {
				tenderFrameDetail.setId(UUIDGenerator.getUUID());
				tenderFrameDetail.setTenderFrameDetail_row_no(i++);
				tenderFrameDetail.setTender_frame(id);
				tenderFrameDetailDao.insert(tenderFrameDetail);
			}
			List<TenderFrameSupplier> tenderFrameSupplierList = tenderFrameHead.getTenderFrameSupplierList();
			for (TenderFrameSupplier tenderFrameSupplier : tenderFrameSupplierList) {
				tenderFrameSupplier.setId(UUIDGenerator.getUUID());
				tenderFrameSupplier.setTender_frame(id);
				tenderFrameSupplierDao.insert(tenderFrameSupplier);
			}
				return "添加成功"+id;
			
		}
		return "保存失败";
	}
	/**
	 * 更新
	 * @param tenderFrameHead
	 * @return
	 */
	public void updTFH(TenderFrameHead tenderFrameHead) {
		// TODO Auto-generated method stub
		tenderFrameHeadDao.update(tenderFrameHead);
	}
	/**
	 * 修改物资和供应商
	 * @param tenderFrameHead
	 * @return
	 */
	public String saveTSDS(TenderFrameHead tenderFrameHead) {
		String id = tenderFrameHead.getId();
		List<TenderFrameDetail> tenderFrameDetailList = tenderFrameHead.getTenderFrameDetailList();
		int i=1;
		for (TenderFrameDetail tenderFrameDetail : tenderFrameDetailList) {
			tenderFrameDetail.setId(UUIDGenerator.getUUID());
			tenderFrameDetail.setTenderFrameDetail_row_no(i++);
			tenderFrameDetail.setTender_frame(id);
			tenderFrameDetailDao.insert(tenderFrameDetail);
		}
		List<TenderFrameSupplier> tenderFrameSupplierList = tenderFrameHead.getTenderFrameSupplierList();
		for (TenderFrameSupplier tenderFrameSupplier : tenderFrameSupplierList) {
			tenderFrameSupplier.setId(UUIDGenerator.getUUID());
			tenderFrameSupplier.setTender_frame(id);
			tenderFrameSupplierDao.insert(tenderFrameSupplier);
		}
			return "更新成功"+id;
	}
	/**
	 * 查看页面
	 */
	public TenderFrameHead view(String id) {
		return tenderFrameHeadDao.view(id);
	}
	/**
	 * 获取主表
	 */
	public int updateTenderFrameHead(String id) {
		return tenderFrameHeadDao.updateTenderFrameHead(id);
	}
	/**
	 * 废标
	 */
	public String cancel(String id) {
		if(tenderFrameHeadDao.cancel(id)>0){
			return "废标成功";
		}
		return null;
	}
	/**
	 * 设置中标供应商id
	 */
	public void updateSupplier(String id,String supplier) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("supplier", supplier);
		tenderFrameHeadDao.updateSupplier(map);
	}
	/**
	 * 显示中标供应商的相关信息
	 */
	public TenderFrameHead show(String id) {
		return tenderFrameHeadDao.show(id);
	}
}
