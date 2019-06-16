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
import dkd.okay.business.contract.bo.FrameAddress;
import dkd.okay.business.contract.bo.FrameDetail;
import dkd.okay.business.contract.bo.FrameHead;
import dkd.okay.business.contract.dao.FrameAddressDao;
import dkd.okay.business.contract.dao.FrameDetailDao;
import dkd.okay.business.contract.dao.FrameHeadDao;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 框架协议信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="frameHeadService")
@Transactional
public class FrameHeadService{
	@Autowired
	private FrameHeadDao frameHeadDao;
	@Autowired
	private FrameDetailDao frameDetailDao;
	@Autowired
	private FrameAddressDao frameAddressDao;
	@Autowired
	private SupplierCapacityService supplierCapacityService;

	public Map<String, Object> select(String pageNow, FrameHead frameHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("frameHead", frameHead);
		map.put("page", pageUtil.getPage(pageNow, frameHeadDao.count(map)));//根据父ID查询数量
		List<FrameHead> list=frameHeadDao.selectByCondition(map);
		map.put("list",list);
		return map;
	}

	public String save(FrameHead frameHead) throws ParseException {
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		String year=(f.format(frameHead.getExpireDate())).substring(0,4);
		int i = Integer.parseInt(year)+frameHead.getExtendedYear();
		String extendedExpireDate=Integer.toString(i)+(f.format(frameHead.getExpireDate())).substring(4,10);
		Date date=f.parse(extendedExpireDate);
		frameHead.setExtendedExpireDate(date);  
		if(StringUtils.isEmpty(frameHead.getId())){
			String id=UUIDGenerator.getUUID();
			frameHead.setId(id);
			frameHeadDao.insert(frameHead);
		}
		else{
			frameHeadDao.update(frameHead);
		}
		frameDetailDao.delete(frameHead.getId());
		List<FrameDetail> list1=frameHead.getFrameDetailList();
		for(FrameDetail frameDetail : list1){
			frameDetail.setId(UUIDGenerator.getUUID());
			frameDetail.setFrameHead(frameHead.getId());
			frameDetailDao.insert(frameDetail);
			if ("生效".equals(frameHead.getState())) {
				supplierCapacityService.returnSupplierCapacityPrice(frameHead.getSupplier(), frameDetail.getMaterial(), frameDetail.getMainPrice());
			}
		}
		frameAddressDao.delete(frameHead.getId());
		List<FrameAddress> list2=frameHead.getFrameAddressList();
		for(FrameAddress frameAddress : list2){
			frameAddress.setId(UUIDGenerator.getUUID());
			frameAddress.setFrameHead(frameHead.getId());
			frameAddressDao.insert(frameAddress);
		}
		String back="保存成功！";
		return back;
	}

	public String submit(String id) {
		FrameHead frameHead=frameHeadDao.get(id);
		List<FrameDetail> frameDetailList = frameDetailDao.getFrameDetailList(id);
		String supplier = frameHead.getSupplier();
		frameHead.setState("生效");
		frameHeadDao.update(frameHead);
		for (FrameDetail frameDetail : frameDetailList) {
			supplierCapacityService.returnSupplierCapacityPrice(supplier, frameDetail.getMaterial(), frameDetail.getMainPrice());
		}
		String back="修改状态成功";
		return back;
	}

	public int countNo(String yearMon) {
		return frameHeadDao.countNo(yearMon);
	}

	public Object selectById(String id) {
		return frameHeadDao.get(id);
	}

	public List<FrameHead> selectAll() {
		return frameHeadDao.selectAll();
	}

	public void update(FrameHead frameHead) {
		frameHeadDao.update(frameHead);
		
	}
	public FrameHead selectByTenderFrame(String tender_frame) {
		return frameHeadDao.selectByTenderFrame(tender_frame);
	}
	public boolean selectNoRepeat(String frameNo,String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id",id);
		map.put("frameNo", frameNo);
		if(frameHeadDao.selectNoRepeat(map) > 0){
			return false;
		}else{
			return true;
		}
	}

	public Map<String, Object> selectPublic(String pageNow, FrameHead frameHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("frameHead", frameHead);
		map.put("page", pageUtil.getPage(pageNow, frameHeadDao.countPublic(map)));//根据父ID查询数量
		List<FrameHead> list=frameHeadDao.selectPublic(map);
		map.put("list",list);
		return map;
	}

	
	
}