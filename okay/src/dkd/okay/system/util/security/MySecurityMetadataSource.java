package dkd.okay.system.util.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import dkd.okay.system.bo.Authority;
import dkd.okay.system.service.AuthorityServiceImpl;

/**
 * 数据库中全部权限
 * @author SY
 *
 */

public class MySecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
	
	private AuthorityServiceImpl authorityServiceImpl;
	
	public AuthorityServiceImpl getAuthorityServiceImpl() {
		return authorityServiceImpl;
	}
	public void setAuthorityServiceImpl(AuthorityServiceImpl authorityServiceImpl) {
		this.authorityServiceImpl = authorityServiceImpl;
	}

	public MySecurityMetadataSource(AuthorityServiceImpl authorityServiceImpl) {
		this.authorityServiceImpl = authorityServiceImpl;
		loadResourceDefine();
	}
	
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}
	
	//加载所有资源与权限的关系
	private void loadResourceDefine() {
		List<Authority> authorityList = this.authorityServiceImpl.selectAll();
		System.out.println("全部资源权限个数为*******************************************************************"+authorityList.size());
		for (Authority authority : authorityList) {
			Collection<ConfigAttribute> configAttributes = new ArrayList<ConfigAttribute>();
            //以权限CODE封装为Spring的security Object
			if(authority.getAuthCode() != null && !"".equals(authority.getAuthCode())){
				ConfigAttribute configAttribute = new SecurityConfig(authority.getAuthCode());
				configAttributes.add(configAttribute);	
			}
			
			System.out.println("权限为*******************************************************************"+authority.getAuthCode());
		}
	}
	
	@Override
	public Collection<ConfigAttribute> getAttributes(Object arg0)
			throws IllegalArgumentException {
		// TODO Auto-generated method stub
		return null;
	}
}
