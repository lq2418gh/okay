package dkd.okay.business.storage.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.storage.bo.StorageHead;
import dkd.okay.business.storage.dao.StorageHeadDao;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
@Service(value="storageHeadService")
@Transactional
public class StorageHeadService {
	
	@Autowired
	private StorageHeadDao storageHeadDao;
	
	/**
	 * 分页模糊查询
	 */
	public Map<String, Object> select(String pageNow,StorageHead storageHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("storageHead", storageHead);
		map.put("page", pageUtil.getPage(pageNow, storageHeadDao.count(map)));//根据父ID查询数量
		List<StorageHead> list = storageHeadDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
	/**
	 * 查看页面
	 */
	public StorageHead view(String id) {
		return storageHeadDao.view(id);
	}
	/**
	 * 提交
	 */
	public String submit(String id) {
		if(storageHeadDao.submit(id)>0){
			return "提交成功";
		}
		return null;
	}
	
	public String getStorage_no(){
		String nowTime =new SimpleDateFormat("yyyyMMdd").format(new Date())+"-";
		String storage_no = this.selectStorage_no();//倒叙查询编号
		if(StringUtils.isEmpty(storage_no)){ 
			storage_no="RK-"+nowTime+"000001";
		}else {
			String substring = storage_no.substring(12, 18);
			System.out.println(substring);
			int i = Integer.parseInt(substring)+1;
			String str_no = Common.formatNumber(i, 6);
			storage_no="RK-"+nowTime+str_no;
		}
		return storage_no;
	}
	/**
	 * 更新
	 */
	public void update(StorageHead storageHead) {
		storageHeadDao.update(storageHead);
	}
	/**
	 * 插入
	 */
	public void insert(StorageHead storageHead) {
		storageHeadDao.insert(storageHead);
	}
	/**
	 * 倒叙查询入库编号
	 */
	public String selectStorage_no() {
		return storageHeadDao.selectStorage_no();
	}
//----------------------------------------------------------
	/**
	 * 修改单据是否已经选择
	 */
	public int selectStorage_noAndIs_choice(String storage_no,String is_choice) {
		Map<String, Object> map = new HashMap<String, Object>();
		String [] Nos=storage_no.split(",");
		map.put("Nos", Nos);
		map.put("is_choice", is_choice);
		return storageHeadDao.selectStorage_noAndIs_choice(map);
	}
	public Map<String, Object> selectPublic(String storageIds, String pageNow,
			StorageHead storageHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		if(!StringUtils.isEmpty(storageIds)){
			String [] ids=storageIds.split(","); 
			map.put("ids", ids);
		}
		map.put("storageHead", storageHead);
		map.put("page", pageUtil.getPage(pageNow, storageHeadDao.countPublic(map)));//根据父ID查询数量
		List<StorageHead> list = storageHeadDao.selectPublic(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
}