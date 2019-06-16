package dkd.okay.business.materialPurchase.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.materialPurchase.bo.MaterialPurchaseDetail;
import dkd.okay.business.materialPurchase.bo.MaterialPurchaseHead;
import dkd.okay.business.materialPurchase.dao.MaterialPurchaseHeadDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="materialPurchaseHeadService")
@Transactional
public class MaterialPurchaseHeadService {
	
	@Autowired
	private MaterialPurchaseHeadDao materialPurchaseHeadDao;
	@Autowired
	private MaterialPurchaseDetailService materialPurchaseDetailService;
	
	/**
	 * 删除
	 */
	public String deleteMaterialPurchaseHead(String id){
		materialPurchaseHeadDao.delete(id);
		materialPurchaseDetailService.deleteMaterialPurchaseDetail(id);	
		return "删除成功";
	}

	/**
	 * 分页模糊
	 */
	public Map<String, Object> query(MaterialPurchaseHead mph, String pageNow, PageUtil pageUtil) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("materialPurchaseHead", mph);
		map.put("page", pageUtil.getPage(pageNow, materialPurchaseHeadDao.count(map)));
		List<MaterialPurchaseHead> mphList = materialPurchaseHeadDao.selectByCondition(map);
		map.put("materialPurchaseHeadList", mphList);
		return map;
	}
	
	/**
	 * 查看
	 */
	public MaterialPurchaseHead findMP(String id) {
		return materialPurchaseHeadDao.findMP(id);
	}
	
	/**
	 * 根据部门id和查询明细表倒叙取出编号
	 */
	public String selectByDepartment(){
		return materialPurchaseHeadDao.selectByDepartment();
	}
	
	/**
	 * 更新单据状态
	 */
	public int updateState(String id) {
		return materialPurchaseHeadDao.updateState(id);

	}

	/**
	 * 插入数据
	 */
	public String insertMaterialPurchase(MaterialPurchaseHead materialPurchaseHead){
		String id=UUIDGenerator.getUUID();
		materialPurchaseHead.setId(id);
		materialPurchaseHead.setState("新建");
		if(materialPurchaseHeadDao.insert(materialPurchaseHead)>0){
			List<MaterialPurchaseDetail> materialPurchaseDetailList = materialPurchaseHead.getMaterialPurchaseDetailList();
			int i=1;
			for (MaterialPurchaseDetail materialPurchaseDetail : materialPurchaseDetailList) {
				materialPurchaseDetail.setId(UUIDGenerator.getUUID());
				materialPurchaseDetail.setPurchase_row_no(i++);
				materialPurchaseDetail.setPurchase_head_id(id);
				materialPurchaseDetail.setChoiceState(0);
				if(StringUtils.isNotEmpty(materialPurchaseDetail.getConversion())){
					materialPurchaseDetail.setSecondary_Price(materialPurchaseDetail.getMain_Price().divide(new BigDecimal(materialPurchaseDetail.getConversion()), 2, BigDecimal.ROUND_HALF_UP));
					materialPurchaseDetail.setSecondary_Quantity(materialPurchaseDetail.getMain_Quantity().multiply(new BigDecimal(materialPurchaseDetail.getConversion())));
				}
				materialPurchaseDetail.setIs_choice("0");
			}
			if(materialPurchaseDetailService.bathInsertMaterialPurchaseDetail(materialPurchaseDetailList)>0){
				return "保存成功"+id;
			}
		}
		return "保存失败";
	}
	
	/**
	 * 更新主表(删除用)
	 */
	public int update(MaterialPurchaseHead materialPurchaseHead) {
		return materialPurchaseHeadDao.update(materialPurchaseHead);

	}
}
