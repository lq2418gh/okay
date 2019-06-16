package dkd.okay.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Authority;
import dkd.okay.system.dao.AuthorityDaoImpl;
import dkd.okay.system.dao.RoleAuthorityDaoImpl;
import dkd.okay.system.dao.UserAuthorityDaoImpl;
import dkd.okay.system.dao.UserDaoImpl;
import dkd.okay.system.util.page.PageUtil;

/**
 * 权限Service接口实现类
 * @author wangqian
 *
 */
@Service(value="authorityService")
@Transactional
public class AuthorityServiceImpl{
	@Resource(name="authorityDao")
	private AuthorityDaoImpl authorityDaoImpl;
	@Resource(name="userAuthorityDao")
	private UserAuthorityDaoImpl userAuthorityDaoImpl;
	@Resource(name="roleAuthDao")
	private  RoleAuthorityDaoImpl roleAuthDaoImpl;
	
	@Resource(name="userDao")
	private UserDaoImpl userDaoImpl;
	/**
	 * 加载所有的权限列表
	 */
	public List<Authority> selectAll(){
		return authorityDaoImpl.selectAll();
	}
	/**
	 * 根据parentId分页查询权限列表
	 * @param pageNow
	 * @param parentId
	 * @return
	 */
	public Map<String,Object> queryAuthByParent(String pageNow,String parentId){
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("parentId", parentId);
		//根据查询条件得到此查询条件下数据的条数
		int totalCount = authorityDaoImpl.queryByPageCount(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		//根据查询条件查询列表信息
		List<Authority> authListByPage = authorityDaoImpl.selectByCondition(map);
		map.put("authListByPage", authListByPage);
		return map;
	}
	/**
	 * 初始化权限列表时加载全部的权限列表
	 */
	public List<Authority> getAuthorityList(){
		List<Authority> list = authorityDaoImpl.selectAll();
		return list;
	}
	
	
	/**
	 * 根据权限id查询权限信息
	 * @param authId
	 * @return
	 */
	public Authority queryAuthById(String authId){
		return authorityDaoImpl.get(authId);
		
	}
	/**
	 * 根据parentId获取权限下的权限条数
	 * @param parentId
	 * @return
	 */
	public Integer countByParent(String parentId){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("parentId", parentId);
		//根据查询条件得到此查询条件下数据的条数
		int totalCount = authorityDaoImpl.queryByPageCount(map);
		return totalCount+1;
	}
	/**
	 * 保存权限信息
	 * @param auth
	 */
	public Authority saveAuthority(Authority auth){
		String max = authorityDaoImpl.queryMaxValue();
		String authId =Integer.toString(Integer.parseInt(max)+1);
		auth.setAuthId(authId);
		authorityDaoImpl.insert(auth);
		return auth;
	}
	/**
	 * 更新权限信息
	 * @param auth
	 */
	public Authority updateAuthority(Authority auth){
		authorityDaoImpl.update(auth);
		//修改权限后对应修改 角色-权限、用户-权限表中对应的code
		Map<String,String> map = new HashMap<String,String>();
		map.put("authId", auth.getAuthId());
		map.put("authCode", auth.getAuthCode());
		roleAuthDaoImpl.updateByAuth(map);
		userAuthorityDaoImpl.updateByAuth(map);
		return auth;
	}
	/**
	 * 根据authId删除信息
	 * @param authId
	 */
	public void deleteAuth(String authId){
		authorityDaoImpl.delete(authId);
		roleAuthDaoImpl.deleteByAuth(authId);
		userAuthorityDaoImpl.deleteByAuth(authId);
	}
	public boolean validateAuthority(Authority authority){
		return authorityDaoImpl.selectByCode(authority) > 0 ? false : true;
	}
}
