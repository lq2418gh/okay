package dkd.okay.business.baseinfo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.baseinfo.bo.Region;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 库区信息DAO
 * @author 王莹
 *
 */
@Repository(value = "regionDao")
public class RegionDaoImpl  extends BaseDaoImpl<Region, String>{
	/**
	 * 判断数据库中库区编码是否存在
	 */
	public int selectRegionRepeat(String regionCode){
		Integer count = (Integer) sqlSession.selectOne("Region.selectRegionRepeat", regionCode);
		return count.intValue(); 
	}
	/**
	 * 根据仓库id查询库区
	 * @param wareHouseId
	 * @return
	 */
	public List<Region> selectRegionById(String wareHouseId){
		
		return sqlSession.selectList("Region.selectRegionById",wareHouseId);
	}
	
	/**
	 * 导入时，根据Code查询库区信息 modify by luochuan 
	 */
	public Region getRegionByCode(Region region){
		return sqlSession.selectOne("Region.import_select", region);
	}
	public int selectRegionNameRepeat(Map<String, Object> map) {
		Integer count = (Integer) sqlSession.selectOne("Region.selectRegionNameRepeat", map);
		return count.intValue(); 
	}
	public List<Region> selectByWarehouseId(String warehouseId) {
		return sqlSession.selectList("Region.selectByWarehouseId",warehouseId);
	}
	
}
