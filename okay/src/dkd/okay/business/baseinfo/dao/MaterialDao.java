package dkd.okay.business.baseinfo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 物资信息DAO
 * @author 周渤涛
 *
 */
@Repository(value = "materialDao")
public class MaterialDao  extends BaseDaoImpl<Material, String> {
	
	public List<Material> selectByPid(String Material_type){
		return sqlSession.selectList("Material.selectByPid",Material_type);
	}
	
	public List<Material> selectByPidDesc(String Material_type){
		return sqlSession.selectList("Material.selectByPidDesc",Material_type);
	}
	
	public List<Material> selectMaterialCodeRepeat(String code){
		return sqlSession.selectList("Material.selectMaterialCodeRepeat",code);
	}
	
	public Material selectMterialAndDicAndParentByPk(String id){
		return sqlSession.selectOne("Material.selectMterialAndDicAndParentByPk",id);
	}
	
	public Material selectMterialAndParentByPk(String id){
		return sqlSession.selectOne("Material.selectMterialAndParentByPk",id);
	}
	
	public Material selectCode(String code){
		return sqlSession.selectOne("Material.selectMaterialCodeRepeat",code);
	}

	public List<Material> findNoMaterialName(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Material.findNoMaterialName",map);
	}

}