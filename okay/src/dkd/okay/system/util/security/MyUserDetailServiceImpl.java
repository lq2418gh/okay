package dkd.okay.system.util.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import dkd.okay.system.bo.Log;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserAuthority;
import dkd.okay.system.dao.LogDaoImpl;
import dkd.okay.system.dao.UserDaoImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * spring security 加载用户权限
 * @author SY
 *
 */

@SuppressWarnings("deprecation")
public class MyUserDetailServiceImpl implements UserDetailsService {
	
	@Resource(name="userDao")
	private UserDaoImpl userDaoImpl;
	
	@Resource(name="logDao")
	private LogDaoImpl logDaoImpl;
	
	/**
	 * 根据登录用户名查找用户
	 */
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = this.userDaoImpl.selectUserByUserName(username);
		if(user == null) {
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//			String now = sdf.format(new Date());
			Log log = new Log();
			log.setLogId(UUIDGenerator.getUUID());
			log.setLogDate(new Date());
			log.setLogName(Message.readValue("loginError"));
			log.setLogContext("登录失败");
			log.setLogUser(username);
			log.setLogType("2");
			log.setLogIP("127.0.0.1");
			logDaoImpl.insert(log);
			throw new UsernameNotFoundException("用户"+username+"不存在");
		}
		return user;
	}
	
	/**
	 * 取得用户的权限
	 * @param user
	 * @return
	 */
	
	@SuppressWarnings("unused")
	private Collection<GrantedAuthority> obtionGrantedAuthorities(User user) {
		List<GrantedAuthority> autthorities = new ArrayList<GrantedAuthority>();
		List<UserAuthority> userAuthorities =  user.getUserAuthorities();
		System.out.println("当前用户具备的权限的个数："+userAuthorities.size());
		for (UserAuthority userAuthority : userAuthorities) {
			autthorities.add(new GrantedAuthorityImpl(userAuthority.getAuthCode()));
		}
		return autthorities ;
	}
	
}