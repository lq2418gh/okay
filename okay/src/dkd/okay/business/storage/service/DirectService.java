package dkd.okay.business.storage.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.budget.service.PlanDetailService;
import dkd.okay.business.outstock.bo.OutstockDetail;
import dkd.okay.business.outstock.bo.OutstockHead;
import dkd.okay.business.outstock.service.OutstockDetailService;
import dkd.okay.business.outstock.service.OutstockHeadService;
import dkd.okay.business.purchase.service.OrderServiceImpl;
import dkd.okay.business.stock.service.StockService;
import dkd.okay.business.storage.bo.Direct;
import dkd.okay.business.storage.bo.DirectDetail;
import dkd.okay.business.storage.bo.StorageDetail;
import dkd.okay.business.storage.bo.StorageHead;
import dkd.okay.business.storage.dao.DirectDetailDao;
import dkd.okay.business.storage.dao.DirectHeadDao;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 直达现场
 * @author 周渤涛
 *
 */
@Service(value="directService")
@Transactional
public class DirectService {
	
	@Autowired
	private DirectHeadDao directHeadDao;
	
	@Autowired
	private DirectDetailDao directDetailDao;
	
	@Autowired
	private OrderServiceImpl orderService;
	
	@Autowired
	private StorageHeadService storageHeadService;
	
	@Autowired
	private StorageDetailService storageDetailService;
	
	@Autowired
	private StockService stockService;
	
	@Autowired
	private OutstockHeadService outstockHeadService;
	
	@Autowired
	private OutstockDetailService outstockDetailService;
	
	@Autowired
	private PlanDetailService planDetailService;
	/**
	 * 分页模糊查询直达现场
	 * @param pageNow
	 * @param direct
	 * @return
	 */
	public Map<String, Object> select(String pageNow,Direct direct) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("direct", direct);
		map.put("page", pageUtil.getPage(pageNow, directHeadDao.count(map)));//根据父ID查询数量
		List<Direct> list = directHeadDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
	/**
	 * 查看直达现场页面
	 * @param id
	 * @return
	 */
	public Direct view(String id) {
		return directHeadDao.view(id);
	}
	/**
	 * 提交直达现场
	 * @param id
	 * @return
	 */
	public String submit(String id) {
		Direct direct = directHeadDao.view(id);
		direct.setState("待审批");
		String message = "";
		for(DirectDetail directDetail : direct.getDirectDetailList()){
			//判断可入库数量是否足够
			if(directDetail.getSecondary_quantity()!=null){//有辅助计量单位的情况
				if((directDetail.getSecondary_quantity().subtract(directDetail.getResidue())).compareTo(BigDecimal.ZERO) == 1){
					message = "第"+directDetail.getDirect_row_no()+"条明细可入库数量不足！请核查后重新提交";
				}
			}else{//没有辅助计量单位的情况
				if((directDetail.getMain_quantity().subtract(directDetail.getMain_quantity())).compareTo(BigDecimal.ZERO) == 1){
					message = "第"+directDetail.getDirect_row_no()+"条明细可入库数量不足！请核查后重新提交";
				}
			}
			if(StringUtils.isNotEmpty(message)){
				break;
			}
		}
		
		if(StringUtils.isEmpty(message) && directHeadDao.submit(direct)>0){
			for(DirectDetail directDetail : direct.getDirectDetailList()){
				orderService.updateAlreadyNum(directDetail.getOrder_detail(), directDetail.getMain_quantity(), directDetail.getSecondary_quantity());
			}
			message = "提交成功";
		}
		return message;
	}
	/**
	 * 直达现场审批通过
	 * @param id
	 * @return
	 */
	public String approvalOk(String id) {
		Direct direct = directHeadDao.view(id);
		direct.setState("审批通过");
		if(directHeadDao.submit(direct)>0){
			this.saveStorage(direct);//生成入库单
			orderService.updateOrderStateAutomatic(direct.getOrder_frame());
			this.saveOutstock(direct);//生成出库单
		}
		return "审批通过";
	}
	/**
	 * 直达现场审批不通过
	 * @param id
	 * @return
	 */
	public String approvalNo(String id) {
		Direct direct = directHeadDao.view(id);
		direct.setState("审批退回");
		if(directHeadDao.submit(direct)>0){
			for(DirectDetail directDetail : direct.getDirectDetailList()){
				orderService.updateAlreadyNum(directDetail.getOrder_detail(), directDetail.getMain_quantity().multiply(new BigDecimal(-1)), (null == directDetail.getSecondary_quantity()? null : directDetail.getSecondary_quantity().multiply(new BigDecimal(-1))));
			}
		}
		return "审批退回";
	}
	/**
	 * 生成入库单
	 * @param direct
	 */
	public void saveStorage(Direct direct){
		StorageHead storageHead = new StorageHead();
		storageHead.setId(UUIDGenerator.getUUID());
		storageHead.setStorage_no(storageHeadService.getStorage_no());
		storageHead.setEntry_date(direct.getEntry_date());
		storageHead.setUser_id(direct.getUser_id());
		storageHead.setOrder_frame(direct.getOrder_frame());
		storageHead.setContract_id(direct.getContract_id());
		storageHead.setFrame_id(direct.getFrame_id());
		storageHead.setState("审批通过");
		storageHead.setMain_totalAmount(direct.getMain_totalAmount());
		//插入主表
		storageHeadService.insert(storageHead);
		List<StorageDetail> storageDetails = new ArrayList<StorageDetail>();
		StorageDetail storageDetail = null;
		int i=1;
		for(DirectDetail directDetail : direct.getDirectDetailList()){
			storageDetail = new StorageDetail();
			storageDetail.setId(UUIDGenerator.getUUID());
			storageDetail.setStorge_head(storageHead.getId());
			storageDetail.setNo(i++);
			storageDetail.setOrder_detail(directDetail.getOrder_detail());
			storageDetail.setMaterial(directDetail.getMaterial());
			storageDetail.setPacking(directDetail.getPacking());
			storageDetail.setMain_price(directDetail.getMain_price());
			storageDetail.setSecondary_price(directDetail.getSecondary_price());
			storageDetail.setMain_quantity(directDetail.getMain_quantity());
			storageDetail.setSecondary_quantity(directDetail.getSecondary_quantity());
			storageDetail.setRemark(directDetail.getRemark());
			storageDetails.add(storageDetail);
			planDetailService.updateResidualAmountStorage(directDetail.getBudget_plan_detail(), storageDetail.getMain_price().multiply(storageDetail.getMain_quantity()));
			
		}
		
		//批量插入明细表
		storageDetailService.bathInsert(storageDetails);
		//生成库存
		stockService.save(storageHead, storageDetails, storageHead.getId(),false);
		
	}
	
	/**
	 * 生成出库单
	 * @param direct
	 */
	public void saveOutstock(Direct direct){
		OutstockHead outstockHead = new OutstockHead();
		outstockHead.setId(UUIDGenerator.getUUID());
		outstockHead.setOutstock_no(outstockHeadService.getOutstock_no());
		outstockHead.setOut_date(direct.getEntry_date());
		outstockHead.setUser_id(direct.getUser_id());
		outstockHead.setOrder_frame(direct.getOrder_frame());
		outstockHead.setState("审批通过");
		outstockHead.setDepartment(direct.getDepartment());
		//插入主表
		outstockHeadService.insert(outstockHead);
		List<OutstockDetail> outstockDetails = new ArrayList<OutstockDetail>();
		OutstockDetail outstockDetail = null;
		int i=1;
		for(DirectDetail directDetail : direct.getDirectDetailList()){
			outstockDetail = new OutstockDetail();
			outstockDetail.setId(UUIDGenerator.getUUID());
			outstockDetail.setOutstock_head(outstockHead.getId());
			outstockDetail.setOutstock_row_no(i++);
			outstockDetail.setOrder_detail(directDetail.getOrder_detail());
			outstockDetail.setMaterial(directDetail.getMaterial());
			outstockDetail.setPacking(directDetail.getPacking());
			outstockDetail.setMain_price(directDetail.getMain_price());
			outstockDetail.setSecondary_price(directDetail.getSecondary_price());
			outstockDetail.setMain_quantity(directDetail.getMain_quantity());
			outstockDetail.setSecondary_quantity(directDetail.getSecondary_quantity());
			outstockDetail.setRemark(directDetail.getRemark());
			outstockDetails.add(outstockDetail);
		}
		
		//批量插入明细表
		outstockDetailService.bathInsert(outstockDetails);
		
	}
	/**
	 * 插入直达现场
	 * @param direct
	 * @return
	 */
	public String insertDAndDd(Direct direct) {
		String id=UUIDGenerator.getUUID();
		direct.setId(id);
		direct.setDirect_no(this.getDirectNo());
		List<DirectDetail> list = direct.getDirectDetailList();
		int row_no = 1;
		BigDecimal num = new BigDecimal(0);
		for(DirectDetail dd : list){
			dd.setId(UUIDGenerator.getUUID());
			dd.setDirect_head(id);
			dd.setDirect_row_no(row_no++);
			//有没有辅助计量单位的情况
			if(dd.getSecondary_price()!=null){
				dd.setMain_quantity(dd.getSecondary_quantity().divide(new BigDecimal(dd.getConversion()), 2, BigDecimal.ROUND_HALF_UP));
			}
			num = num.add(dd.getMain_price().multiply(dd.getMain_quantity()));
		}
		direct.setMain_totalAmount(num.setScale(2,BigDecimal.ROUND_HALF_UP));
		if(directHeadDao.insert(direct) > 0){
			directDetailDao.bathInsert(list);
			return "保存成功";
		}
		return "保存失败";
	}
	
	/**
	 * 更新直达现场单
	 * @param direct
	 * @return
	 */
	public String updateDAndDd(Direct direct) {
		String id=direct.getId();
		List<DirectDetail> list = direct.getDirectDetailList();
		int row_no = 1;
		BigDecimal num = new BigDecimal(0);
		for(DirectDetail dd : list){
			dd.setId(UUIDGenerator.getUUID());
			dd.setDirect_head(id);
			dd.setDirect_row_no(row_no++);
			//有没有辅助计量单位的情况
			if(dd.getSecondary_price()!=null){
				dd.setMain_quantity(dd.getSecondary_quantity().divide(new BigDecimal(dd.getConversion()), 2, BigDecimal.ROUND_HALF_UP));
			}
			num = num.add(dd.getMain_price().multiply(dd.getMain_quantity()));
		}
		direct.setMain_totalAmount(num.setScale(2,BigDecimal.ROUND_HALF_UP));
		if(directHeadDao.update(direct) > 0){
			directDetailDao.deleteDetalsByHeadId(id);
			directDetailDao.bathInsert(list);
			return "保存成功";
		}
		return "保存失败";
	}

	
	/**
	 * 获取最新直达现场单号
	 * @return
	 */
	public String getDirectNo() {
		Date d = new Date();
	    SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
	    return "ZD" + f.format(d)+Common.formatNumber(directHeadDao.selectDirectNo("ZD"+f.format(d)) + 1, 3);
	}

}