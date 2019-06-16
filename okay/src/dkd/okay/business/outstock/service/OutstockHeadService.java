package dkd.okay.business.outstock.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.outstock.bo.OutstockHead;
import dkd.okay.business.outstock.dao.OutstockHeadDao;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
@Service(value="outstockHeadService")
@Transactional
public class OutstockHeadService {
	
	@Autowired
	private OutstockHeadDao outstockHeadDao;
	
	/**
	 * 分页模糊查询
	 */
	public Map<String, Object> select(String pageNow,OutstockHead outstockHead) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("outstockHead", outstockHead);
		map.put("page", pageUtil.getPage(pageNow, outstockHeadDao.count(map)));//根据父ID查询数量
		List<OutstockHead> list = outstockHeadDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
	/**
	 * 查看页面
	 */
	public OutstockHead view(String id) {
		return outstockHeadDao.view(id);
	}
	
	public String getOutstock_no(){
		String nowTime =new SimpleDateFormat("yyyyMMdd").format(new Date())+"-";
		String outstock_no = this.selectOutstock_no();//倒叙查询编号
		if(StringUtils.isEmpty(outstock_no)){ 
			outstock_no="CK-"+nowTime+"000001";
		}else {
			String substring = outstock_no.substring(12, 18);
			System.out.println(substring);
			int i = Integer.parseInt(substring)+1;
			String str_no = Common.formatNumber(i, 6);
			outstock_no="CK-"+nowTime+str_no;
		}
		return outstock_no;
	}
	/**
	 * 插入
	 */
	public void insert(OutstockHead outstockHead) {
		outstockHeadDao.insert(outstockHead);
	}
	/**
	 * 倒叙查询入库编号
	 */
	public String selectOutstock_no() {
		return outstockHeadDao.selectOutstock_no();
	}
	/**
	 * 更新
	 */
	public void update(OutstockHead outstockHead) {
		outstockHeadDao.update(outstockHead);
	}
	/**
	 * 提交
	 */
	public String submit(String id) {
		if(outstockHeadDao.submit(id)>0){
			return "提交成功";
		}
		return null;
	}
}