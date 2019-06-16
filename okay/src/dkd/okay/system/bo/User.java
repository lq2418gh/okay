package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;


/**
 * 用户登录表：该类实现UserDetails接口，被spring security管理
 * @author SY
 * 
 */

@SuppressWarnings("deprecation")
public class User implements UserDetails,Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String userId;//用户id
	private String userName;//用户名
	private String passWord;//密码
	private boolean sysAdmin;//是否是系统管理员
	private boolean appAdmin;//是否是应用管理员
	private boolean isUse;//是否禁用
	private boolean isDel;//是否删除
	private List<UserAuthority> userAuthorities;//用户权限
	private UserInfo userInfo;//关联的用户信息
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public boolean isSysAdmin() {
		return sysAdmin;
	}
	public void setSysAdmin(boolean sysAdmin) {
		this.sysAdmin = sysAdmin;
	}
	public boolean isAppAdmin() {
		return appAdmin;
	}
	public void setAppAdmin(boolean appAdmin) {
		this.appAdmin = appAdmin;
	}
	public boolean isUse() {
		return isUse;
	}
	public void setUse(boolean isUse) {
		this.isUse = isUse;
	}
	public boolean isDel() {
		return isDel;
	}
	public void setDel(boolean isDel) {
		this.isDel = isDel;
	}
	public List<UserAuthority> getUserAuthorities() {
		return userAuthorities;
	}
	public void setUserAuthorities(List<UserAuthority> userAuthorities) {
		this.userAuthorities = userAuthorities;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return passWord;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return userName;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> autthorities = new ArrayList<GrantedAuthority>();
		for (UserAuthority userAuthority : userAuthorities) {
			autthorities.add(new GrantedAuthorityImpl(userAuthority.getAuthCode()));
		}
		return autthorities;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + "]";
	}
	@Override
	public boolean equals(Object obj) { 
		if (obj instanceof User) { 
			User ud = (User) obj; 
			if (ud.getUsername().equals(this.getUsername())) { 
				return true; 
			} 
		} 
		return false; 
	} 
	@Override
	public int hashCode() { 
		return getUsername().hashCode(); 
	} 
}
