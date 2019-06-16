package dkd.okay.business.baseinfo.serivce;
 
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.baseinfo.bo.Region;
import dkd.okay.business.baseinfo.bo.Warehouse;
import dkd.okay.business.baseinfo.bo.WarehouseTree;
import dkd.okay.business.baseinfo.dao.RegionDaoImpl;
import dkd.okay.business.baseinfo.dao.WarehouseDaoImpl;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;


/**
 * 仓库信息Service接口实现类
 * @author 周渤涛
 *
 */
@Service(value="warehouseService")
@Transactional
public class WarehouseServiceImpl{

	@Autowired
	private WarehouseDaoImpl warehouseDaoImpl;
	
	@Autowired
	private RegionDaoImpl regionDaoImpl;
	
	@Autowired
	private RegionServiceImpl regionServiceImpl;
	
	
	/**
	 * 查询所有仓库库区信息-生成树形菜单--管理仓库用
	 * @return
	 */
	public List<WarehouseTree> getWarehouseManageTree(){
		List<WarehouseTree> warehouseTreeList = new ArrayList<WarehouseTree>();
		for(Warehouse warehouse : warehouseDaoImpl.selectAllIgnoreState()){
			WarehouseTree warehouseTree = new WarehouseTree();
			warehouseTree.setId(warehouse.getWarehouseId());
			warehouseTree.setName(warehouse.getWarehouseName());
			warehouseTree.setType("warehouse");//仓库标识
			warehouseTree.setParentId("0");
			warehouseTreeList.add(warehouseTree);
		}
		for(Region region : regionDaoImpl.selectAll()){
			WarehouseTree warehouseTree = new WarehouseTree();
			warehouseTree.setId(region.getRegionId());
			warehouseTree.setName(region.getRegionName());
			warehouseTree.setType("region");//库区标识
			warehouseTree.setParentId(region.getWarehouseId());
			warehouseTreeList.add(warehouseTree);
		}
		return warehouseTreeList;
	}

	/**
	 * 
	 * 根据分页查询所有下级仓库信息
	 */
	public Map<String, Object> selectWarehouse(String pageNow,Warehouse warehouse) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("warehouse", warehouse);
		map.put("page", pageUtil.getPage(pageNow, warehouseDaoImpl.count(map)));//根据父ID查询数量
		List<Warehouse> warehouseList = warehouseDaoImpl.selectByCondition(map);//根据父ID查询信息
		map.put("warehouseList", warehouseList);
		return map;
	}
	/**
	 * 根据ID查询仓库信息
	 * @param warehouseId
	 * @return
	 */
	public Warehouse selectWarehouseById(String warehouseId){
		return warehouseDaoImpl.get(warehouseId);
	}
	/**
	 * 删除仓库信息
	 * @param warehouseId
	 */
	public String deleteWarehouse(String warehouseId) {
		String back="";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("warehouseId", warehouseId);
		if(regionDaoImpl.count(map) > 0){
			back="仓库下还有库区信息，所以此仓库不能删除！";
		}
		else{
		warehouseDaoImpl.delete(warehouseId);
		back="删除成功！";
		}
		return back;
	}
	/**
	 * 保存仓库信息
	 * @param warehouse
	 */
	public String saveWarehouse(Warehouse warehouse) {
		 String back="";
		List<Region>list=regionServiceImpl.selectByWarehouseId(warehouse.getWarehouseId());
		if(list.size()>0){
			for(Region region:list){
				region.setState(warehouse.getState());
				regionDaoImpl.update(region);
			}
		}
		if(StringUtils.isEmpty(warehouse.getWarehouseId())){
			warehouse.setWarehouseId(UUIDGenerator.getUUID());
			if(warehouse.getArea()== null ){
				BigDecimal area=new BigDecimal(0);
				warehouse.setArea(area);
				}
			if(warehouseDaoImpl.selectWarehouseRepeat(warehouse.getWarehouseCode()) > 0){
				back="仓库编码重复，保存失败！";
			}
			else{
			warehouseDaoImpl.insert(warehouse);
			back="保存成功";
			}
		}else{
			warehouseDaoImpl.update(warehouse);
			back="修改成功";
		}
		 return back;
	}
	/**
	 * 判断数据库中仓库编码是否存在
	 * @param warehouseCode
	 */
	public boolean selectWarehouseRepeat(String warehouseCode) {
		if(warehouseDaoImpl.selectWarehouseRepeat(warehouseCode) > 0){
			return false;
		}else{
			return true;
		}
	}
	public boolean selectWarehouseNameRepeat(String warehouseName,
			String warehouseId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("warehouseName",warehouseName);
		map.put("warehouseId", warehouseId);
		if(warehouseDaoImpl.selectWarehouseNameRepeat(map) > 0){
			return false;
		}else{
			return true;
		}
	}
}