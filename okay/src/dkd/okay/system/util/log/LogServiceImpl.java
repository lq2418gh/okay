package dkd.okay.system.util.log;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.aspectj.lang.JoinPoint;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Service;

import dkd.okay.system.bo.Log;
import dkd.okay.system.bo.User;
import dkd.okay.system.dao.LogDaoImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;
import dkd.okay.system.web.formmodel.LogForm;

/**
 * 日志Service接口实现类
 * @author SY
 *
 */

@Service(value="logService")
public class LogServiceImpl{
	
	@Resource(name="logDao")
	private LogDaoImpl logDaoImpl;
	
	/**
	 * 分页查询
	 * @param pageNow 当前页
	 * @param logForm 
	 * @return
	 */
	
	public Map<String, Object> selectLogByCondition(String pageNow,LogForm logForm,String realName) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();
		map.put("logForm", logForm);
		map.put("realName", realName);
		int totalCount = logDaoImpl.count(map);
		map.put("page", pageUtil.getPage(pageNow, totalCount));
		List<Log> logList = logDaoImpl.selectByCondition(map);
		map.put("logList", logList);
		return map;
	}
	
	   
    /**
	 * 日志信息
	 * @param logId
	 */
    
	public Log selectByPk(String logId) {
		return logDaoImpl.get(logId);
	}
	
	/**
	 * aop before
	 */
	
	public void log() {
	    System.out.println("*************Log*******************");
	}
	
	/**
	 * aop after 无参
	 */

	public void logArg(JoinPoint point) {
	    Object[] args = point.getArgs();
	    System.out.println("目标参数列表：");
	    if (args != null) {
	        for (Object obj : args) {
	            System.out.println(obj + ",");
	        }
	        System.out.println();
	    }
	}
	
	/**
	 * aop after 有参
	 */
   
    public void logArgAndReturn(JoinPoint point, Object returnObj) {
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
 		String now = sdf.format(new Date());//当前时间
        Object[] arg = point.getArgs();
        String args = "";
        if (arg != null) {
            for (Object obj : arg) {
            	System.out.println(obj + "    date:" + now);
                args+=obj+"\n"; 
            }
        }
        String classname = point.getTarget().getClass().getName();//获取当前的类名
        String method = point.getSignature().getName();//方法名
       
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null){//权限不为空，这是业务操作	
			String a = args.toString();
			String name = Message.readValue(classname+"."+method);
			if(name == null){
				return;
			}
			Log log = new Log();
			log.setLogId(UUIDGenerator.getUUID());
			log.setLogDate(new Date());
			log.setLogName(name);
			if(a.length()>3000){
				log.setLogContext(args.toString().substring(0, 3000));
			}else{
				log.setLogContext(args.toString());
			}
			WebAuthenticationDetails wauth = (WebAuthenticationDetails) auth.getDetails();
			User u = (User) auth.getPrincipal();
			log.setLogUser(u.getUserInfo().getRealName());
			System.out.println(log.getLogUser());
			log.setLogIP(wauth.getRemoteAddress());	
			log.setLogType("2");
			logDaoImpl.insert(log);
		}
    }
	/**
	 * aop 异常
	 */
	
	public void doThrowing(JoinPoint point, Throwable ex) {  
        Log log = new Log();
        log.setLogId(UUIDGenerator.getUUID());
        log.setLogName(Message.readValue("exception"));
//		log.setLogContext("目标类 " + point.getTarget().getClass().getName()  
//                + "的" + point.getSignature().getName() + " 方法出现异常，内容为："+ex.getMessage().substring(0, 10));
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//		String now = sdf.format(new Date());
		log.setLogDate(new Date());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null){
			WebAuthenticationDetails wauth = (WebAuthenticationDetails) auth.getDetails();
			User u = (User) auth.getPrincipal();
			log.setLogUser(u.getUsername());
			log.setLogIP(wauth.getRemoteAddress());	
		}
		log.setLogType("2");
		logDaoImpl.insert(log);
    }

}
