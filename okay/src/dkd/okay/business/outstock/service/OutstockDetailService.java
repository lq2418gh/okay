package dkd.okay.business.outstock.service;


import java.math.BigDecimal;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.outstock.bo.OutstockDetail;
import dkd.okay.business.outstock.bo.OutstockHead;
import dkd.okay.business.outstock.dao.OutstockDetailDao;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="outstockDetailService")
@Transactional
public class OutstockDetailService {
	
	@Autowired
	private OutstockDetailDao outstockDetailDao;
	
	/**
	 * 删除
	 */
	public void deleteDetalsByHeadId(String outstock_head) {
		outstockDetailDao.deleteDetalsByHeadId(outstock_head);
	}
	/**
	 * 批量插入
	 */
	public int bathInsert(List<OutstockDetail> outstockDetailList){
		return outstockDetailDao.bathInsert(outstockDetailList);
	}
	
	/**
	 * 批量插入(删除用)
	 */
	public String bathInserts(OutstockHead outstockHead){
		List<OutstockDetail> outstockDetails = outstockHead.getOutstockDetailList();
		int i=1;
		for (OutstockDetail outstockDetail : outstockDetails) {
			outstockDetail.setId(UUIDGenerator.getUUID());
			outstockDetail.setOutstock_head(outstockHead.getId());
			outstockDetail.setOutstock_row_no(i++);
			//有没有辅助计量单位的情况
			if(StringUtils.isNotEmpty(outstockDetail.getUnit_help())){
				outstockDetail.setMain_quantity(outstockDetail.getSecondary_quantity().divide(new BigDecimal(outstockDetail.getConversion()), 2, BigDecimal.ROUND_HALF_UP));
			}
		}
		if(this.bathInsert(outstockDetails)>0){
			return "保存成功";
		}
		return "保存失败";
	}
}