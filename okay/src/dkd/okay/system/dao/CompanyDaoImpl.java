package dkd.okay.system.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Company;


/**
 * 组织结构DAO接口实现类
 * @author WJ
 *
 */

@Repository(value="companyDao")
public class CompanyDaoImpl extends BaseDaoImpl<Company, String> {
	
	/**
	 * 校验部门信息中的部门名称或部门编码
	 * @param companyCode
	 * @param companyName
	 */
	public int selectCompanyRepeat(Map<String, Object> map) {
		Integer count = (Integer) sqlSession.selectOne("Company.selectCompanyRepeat", map);
		return count.intValue(); 
	}
	/**
	 * 校验本级部门信息中是否有用户
	 * @param companyId
	 */
	public int selectUserRepeat(String companyId) {
		Integer count = (Integer) sqlSession.selectOne("Company.selectUserRepeat", companyId);
		return count.intValue(); 
	}
	/**
	 * 根据父级id分页查询所有下级部门信息
	 * @param pageNow
	 * @param parentId
	 * @return
	 */
	public List<Company> selectCompanyByParentId(Map<String, Object> map) {
		return sqlSession.selectList("Company.selectCompanyByParentId", map);
	}
	public List<Company> selectByLevel() {
		return sqlSession.selectList("Company.selectByLevel");
	}
}

