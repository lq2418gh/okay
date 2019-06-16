package dkd.okay.business.baseinfo.serivce;
 
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.Constants;
import dkd.okay.business.baseinfo.bo.Region;
import dkd.okay.business.baseinfo.bo.Warehouse;
import dkd.okay.business.baseinfo.dao.RegionDaoImpl;
import dkd.okay.business.baseinfo.dao.WarehouseDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 库区信息Service接口实现类
 * @author 王莹
 *
 */
@Service(value="regionService")
@Transactional
public class RegionServiceImpl{
	
	
	@Autowired
	private RegionDaoImpl regionDaoImpl;
	@Autowired
	private WarehouseDaoImpl warehouseDaoImpl;
	
	/**
	 * 根据分页查询所有下级库区信息
	 */
	
	public Map<String, Object> selectRegion(String pageNow,Region region) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("warehouseId", region.getWarehouseId());
		map.put("region", region);
		map.put("page", pageUtil.getPage(pageNow, regionDaoImpl.count(map)));//根据父ID查询数量
		List<Region> regionList = regionDaoImpl.selectByCondition(map);//根据父ID查询信息
		map.put("regionList", regionList);
		return map;
	}

	/**
	 * 根据ID查询库区信息-查看库区信息时用
	 */
	
	public Region selectRegionById(String regionId) {
		return regionDaoImpl.get(regionId);
	}
	/**
	 * 根据ID查询库区信息-编辑库区信息时用
	 */
	
	public Region selectRegionEditById(String regionId) {
		Region region = regionDaoImpl.get(regionId);
		return region;
	}

	/**
	 * 保存库区信息
	 */
	
	public String saveRegion(Region region) {
		String back="";
		Warehouse warehouse=warehouseDaoImpl.get(region.getWarehouseId());
		if(warehouse.getState().equals("停用")){
			region.setState("停用");
		}

		if(StringUtils.isEmpty(region.getRegionId())){
			if(region.getWarehouseCode()!=null){
				region.setRegionCode(region.getWarehouseCode().concat(Constants.WAREHOUSE_FLAG).concat(region.getRegionCode()));
			}
			region.setRegionId(UUIDGenerator.getUUID());
			if(region.getArea()== null ){
				BigDecimal area=new BigDecimal(0);
				region.setArea(area);
				}
			if(regionDaoImpl.selectRegionRepeat(region.getRegionCode()) > 0){
				back="库区编码重复！";
			}else{
				regionDaoImpl.insert(region);
				back="保存成功";
			}
		}else{
			regionDaoImpl.update(region);
			back="修改成功";
		}
		return back;
	}

	/**
	 * 删除库区信息
	 */
	
	public String deleteRegion(String regionId) {
		String back="";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("regionId", regionId);
		regionDaoImpl.delete(regionId);
		back="删除成功！";
		return back;
			
	}
	/**
	 * 判断数据库中库区编码是否存在
	 */
	
	public boolean selectRegionRepeat(String regionCode) {
		if(regionDaoImpl.selectRegionRepeat(regionCode) > 0){
			return false;
		}else
			return true;
	}
	/**
	 * 判断数据库中库区名称是否存在
	 */
	
	public boolean selectRegionNameRepeat(String regionName,
			String warehouseId, String regionId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("regionId",regionId);
		map.put("regionName", regionName);
		map.put("warehouseId", warehouseId);
		if(regionDaoImpl.selectRegionNameRepeat(map) > 0){
			return false;
		}else{
			return true;
		}
	}

	public List<Region> selectByWarehouseId(String warehouseId) {
		List<Region>list=regionDaoImpl.selectByWarehouseId(warehouseId);
		return list;
	}
}