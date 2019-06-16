package dkd.okay.system.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import dkd.okay.system.bo.Log;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserInfo;
import dkd.okay.system.dao.LogDaoImpl;
import dkd.okay.system.dao.UserInfoDaoImpl;
import dkd.okay.system.util.menu.MenuBean;
import dkd.okay.system.util.menu.SysMenu;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.uuid.UUIDGenerator;
import dkd.okay.system.web.formmodel.UserForm;


/**
 * 首页框架jsp页面控制器
 * @author SY
 *
 */

@Controller
@RequestMapping(value="/jsp")
public class JspController extends BaseController  {
	
	@Autowired
	private MenuBean menuBean; 
	
	@Resource(name="logDao")
	private LogDaoImpl logDaoImpl;
	
	@Resource(name="userInfoDao")
	private UserInfoDaoImpl userInfoDaoImpl;
	
	@RequestMapping("/login.do")  
	public String login(){
		return "login";
	}
	
	/**
	 * 登录成功后跳转至此
	 * @return
	 */
	
	@RequestMapping("/loginSuccess.do")  
	public ModelAndView loginSuccess(){
		Log log = new Log();
		log.setLogId(UUIDGenerator.getUUID());
		log.setLogDate(new Date());
		log.setLogName(Message.readValue("loginSuccess"));
		log.setLogContext("登录成功");
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		log.setLogUser(user.getUserInfo().getRealName());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		WebAuthenticationDetails wauth = (WebAuthenticationDetails) auth.getDetails();
		log.setLogIP(wauth.getRemoteAddress());	
		log.setLogType("2");
		logDaoImpl.insert(log);//插入登录日志
		UserInfo userInfo = user.getUserInfo();
		userInfo.setLastLoginTime(new Date());
		userInfo.setLastLoginIP(wauth.getRemoteAddress());
		userInfoDaoImpl.update(userInfo);//修改最后登录信息
		if(this.MD5("1").equals(user.getPassWord())){
			Map<String,Object> map= new HashMap<String,Object>();
			map.put("userId", user.getUserId());
			return new ModelAndView(new RedirectView("loginEditPassword.do"),map); 
		}
		return new ModelAndView(new RedirectView("index.do")); 
	}
	/**
	 * 登陆修改密码
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping("/loginEditPassword.do")  
	public String loginEditPassword(HttpServletRequest request,String userId){
		System.out.println("userId---------2-------------"+userId);
		request.setAttribute("userId", userId);
		request.setAttribute("userForm", new UserForm());
		return "loginEditPassword";
	}
	@RequestMapping("/index.do")  
	public String index(){
		return "index";
	}
	
	/**
	 * 页面头部
	 * @return
	 */
	
	@RequestMapping("/header.do")  
	public ModelAndView header(){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return new ModelAndView("index/header","user",user);
	}
	
	/**
	 * 左侧菜单树
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/menu.do")  
	public ModelAndView menu(Model model){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		List<SysMenu> list = menuBean.getSysMenuList();//加载所有的用户菜单
		List<SysMenu> userMenu = new ArrayList<SysMenu>();//为当前用户创建一个菜单集合
		for(GrantedAuthority ga : user.getAuthorities()){//循环用户权限和菜单权限
			for(SysMenu sm : list){
				if(ga.getAuthority().equals(sm.getAuthority())){//用户拥有该菜单权限 添加至userMenu
					userMenu.add(sm);
				}
			}
		}
		mySort(userMenu);
		model.addAttribute("sysMenuList", userMenu);
		return new ModelAndView("index/menu" );
	}
	
	/**
	 * 菜单排序
	 * @param list
	 * @return
	 */
	
	private List<SysMenu> mySort(List<SysMenu> list) { // 交换排序->冒泡排序  
		SysMenu temp = null;  
        boolean exchange = false;  
        for (int i = 0; i < list.size(); i++) {  
            exchange = false;  
            for (int j = list.size() - 2; j >= i; j--) {  
                if (((SysMenu) list.get(j + 1)).getOrder().compareTo(((SysMenu)list.get(j)).getOrder()) < 0) {  
                    temp = (SysMenu) list.get(j + 1);  
                    list.set(j + 1, (SysMenu) list.get(j));  
                    list.set(j, temp);  
                    exchange = true;  
                }  
            }  
            if (!exchange)  
                break;  
        }  
        return list;  
    } 
	
}
