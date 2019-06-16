package dkd.okay.business.materialPurchase.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.materialPurchase.bo.MaterialPurchaseDetail;
import dkd.okay.business.materialPurchase.bo.MaterialPurchaseHead;
import dkd.okay.business.materialPurchase.dao.MaterialPurchaseDetailDao;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="materialPurchaseDetailService")
@Transactional
public class MaterialPurchaseDetailService {
	
	@Autowired
	private MaterialPurchaseDetailDao materialPurchaseDetailDao;
	
	/**
	 * 删除单据明细
	 */
	public int deleteMaterialPurchaseDetail(String id){
		return materialPurchaseDetailDao.delete(id);
	}
	
	/**
	 * 批量插入
	 */
	public int bathInsertMaterialPurchaseDetail(List<MaterialPurchaseDetail> materialPurchaseDetailList){
		return materialPurchaseDetailDao.bathInsertMaterialPurchaseDetail(materialPurchaseDetailList);
	}
	
	/**
	 * 批量插入(删除用)
	 */
	public String bathInsert(MaterialPurchaseHead materialPurchaseHead){
		List<MaterialPurchaseDetail> materialPurchaseDetailList = materialPurchaseHead.getMaterialPurchaseDetailList();
		int i=1;
		for (MaterialPurchaseDetail materialPurchaseDetail : materialPurchaseDetailList) {
			materialPurchaseDetail.setId(UUIDGenerator.getUUID());
			materialPurchaseDetail.setPurchase_row_no(i++);
			materialPurchaseDetail.setPurchase_head_id(materialPurchaseHead.getId());
			if(StringUtils.isNotEmpty(materialPurchaseDetail.getConversion())){
				materialPurchaseDetail.setSecondary_Price(materialPurchaseDetail.getMain_Price().divide(new BigDecimal(materialPurchaseDetail.getConversion()), 2, BigDecimal.ROUND_HALF_UP));
				materialPurchaseDetail.setSecondary_Quantity(materialPurchaseDetail.getMain_Quantity().multiply(new BigDecimal(materialPurchaseDetail.getConversion())));
			}
			materialPurchaseDetail.setIs_choice("0");
		}
		if(this.bathInsertMaterialPurchaseDetail(materialPurchaseDetailList)>0){
			return "修改成功"+materialPurchaseHead.getId();
		}
		return "修改失败";
	}

	public void recoverChoiceState(String purchase_detail_id) {
		// TODO Auto-generated method stub
		materialPurchaseDetailDao.recoverChoiceState(purchase_detail_id);
	}

	public List<MaterialPurchaseDetail> selectById(String purchase_head_id, String purchase_detail_ids) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("purchase_head_id", purchase_head_id);

		if(!StringUtils.isEmpty(purchase_detail_ids)){
			String[] pdids = purchase_detail_ids.split(",");
			map.put("pdids", pdids);
		}
		
		return materialPurchaseDetailDao.selectById(map);
	}
	/**
	 * 根据ID查询计划预算明细信息 周渤涛2017年10月18日加，采购订单选择框架协议单关联的物资审批表明细
	 * @param frame_head
	 * @param purchase_detail_ids
	 * @return
	 */
	public List<MaterialPurchaseDetail> selectByFrameId(String frame_head,String materialsPurchaseIds, String purchase_detail_ids,String order_frame) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("frame_head", frame_head);
		map.put("order_frame", order_frame);
		map.put("materialsPurchaseIds", materialsPurchaseIds.split(","));
		if(StringUtils.isNotEmpty(purchase_detail_ids)){
			String[] pdids = purchase_detail_ids.split(",");
			map.put("details", pdids);
		}
		return materialPurchaseDetailDao.selectByFrameId(map);
	}
	
	
	
}
