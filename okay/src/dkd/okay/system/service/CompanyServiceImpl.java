package dkd.okay.system.service;
 
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Company;
import dkd.okay.system.dao.CompanyDaoImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;


/**
 * 组织结构Service接口实现类
 * @author WJ
 *
 */

@Service(value="companyService")
@Transactional
public class CompanyServiceImpl{
	
	@Resource(name="companyDao")
	private CompanyDaoImpl companyDaoImpl;

	/**
	 * 查询所有部门信息
	 * @return
	 * @author SY --add cache
	 */
	
	@Cacheable(value="myCache")
	public List<Company> selectAll(){
		//System.out.println("*****************************@Cacheable+companyTree**************************************");
		return companyDaoImpl.selectAll();
	}
	
	/**
	 * 根据父级id分页查询所有下级部门信息
	 * @param pageNow
	 * @param parentId
	 * @return
	 */
	public Map<String, Object> selectCompanyByParentId(String pageNow,String parentId) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("parentId", parentId);
		map.put("page", pageUtil.getPage(pageNow, companyDaoImpl.count(parentId)));//根据父ID查询组织机构数量
		List<Company> companyList = companyDaoImpl.selectCompanyByParentId(map);
		map.put("companyList", companyList);
		return map;
	}
	public List<Company> selectCompanyByParentId(String parentId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("parentId", parentId);
		return companyDaoImpl.selectCompanyByParentId(map);
	}
	
	/**
	 * 根据ID查询部门信息
	 * @param companyId
	 * @return
	 */
	public Company selectCompanyById(String companyId){
		return companyDaoImpl.get(companyId);
	}
	
	/**
	 * 保存部门信息
	 * @param company
	 */
	public String editCompany(Company company) {
		if(StringUtils.isEmpty(company.getCompanyId())){
			company.setLevels(company.getLevels() + 1);
			company.setCompanyId(UUIDGenerator.getUUID());
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("levels", company.getCompanyCode());
			map.put("companyCode", company.getCompanyCode());
			if(companyDaoImpl.selectCompanyRepeat(map) > 0)
				return Message.readValue("COMPANYSAVEFALSECODE");
			map.put("companyCode", null);
			map.put("companyName", company.getCompanyName());
			if(companyDaoImpl.selectCompanyRepeat(map) > 0)
				return Message.readValue("COMPANYSAVEFALSENAME");
			companyDaoImpl.insert(company);
		}else{
			companyDaoImpl.update(company);
		}
		return  Message.readValue("COMPANYSAVETRUE");
	}
	
	/**
	 * 删除部门
	 * @param companyId
	 */
	public String deleteCompany(String companyId) {
		if(companyDaoImpl.count(companyId) > 0){
			return Message.readValue("COMPANYDELSUCCESS");
		}else{
			companyDaoImpl.delete(companyId);
			return Message.readValue("COMPANYDELTRUE");
		}
	}

	/**
	 * 校验部门信息中的部门名称或部门编码
	 * @param companyCode
	 * @param companyName
	 */
	public boolean selectCompanyRepeat(String companyCode, String companyName,int levels) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("companyCode", companyCode);
		map.put("companyName", companyName);
		map.put("levels", levels + 1);
		if(companyDaoImpl.selectCompanyRepeat(map) > 0){
			return false;
		}else
			return true;
	}
	/**
	 * 校验本级部门信息中是否有用户
	 * @param companyId
	 */
	public boolean selectUserRepeat(String companyId) {
		if(0 == companyDaoImpl.selectUserRepeat(companyId)){
			return false;
		}else
			return true;
	}


}
