package dkd.okay.business.baseinfo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import dkd.okay.business.baseinfo.bo.MaterialType;
import dkd.okay.system.dao.BaseDaoImpl;
/**
 * 物资类别DAO
 * @author zhangYang
 *
 */
@Repository(value = "materialsTypeDao")
public class MaterialTypeDao  extends BaseDaoImpl<MaterialType, String>{

	public List<MaterialType> selectAllTwo(String id) {
		return sqlSession.selectList("MaterialType.selectAllTwo", id);
	}
		
	public List<MaterialType> selectParentCode(String id) {
		if("0".equals(id)){
			return sqlSession.selectList("MaterialType.selectParentCodes", id);
		}else{
			return sqlSession.selectList("MaterialType.selectParentCode", id);
		}
	}
	
	public List<MaterialType> selectByPid(String parent){
		return sqlSession.selectList("MaterialType.selectByPid",parent);
	}
	
	public List<MaterialType> selectMaterialTypeCode(String code) {
		return sqlSession.selectList("MaterialType.selectMaterialTypeCode", code);
	}
	
	public MaterialType selectMaterialTypeByCode(String code) {
		return sqlSession.selectOne("MaterialType.selectMaterialTypeCode", code);
	}
	
	public MaterialType selectMaterialsTypeAndDicAndParentById(String id) {
		return sqlSession.selectOne("MaterialType.selectMaterialsTypeAndDicAndParentById", id);
	}
	
	public MaterialType selectMaterialsTypeAndParentById(String id) {
		return sqlSession.selectOne("MaterialType.selectMaterialsTypeAndParentById", id);
	}
	
}
