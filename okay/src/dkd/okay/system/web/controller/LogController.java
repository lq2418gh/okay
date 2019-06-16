package dkd.okay.system.web.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.system.bo.Log;
import dkd.okay.system.bo.User;
import dkd.okay.system.util.log.LogServiceImpl;
import dkd.okay.system.web.formmodel.LogForm;

/**
 * 日志Controller
 * @author SY
 *
 */

@Controller
@RequestMapping(value="/log")
public class LogController extends BaseController  {
	
	@Resource(name="logService")
	private LogServiceImpl logServiceImpl;
	
	/**
	 * 条件查询
	 * @param logForm
	 * @param model
	 * @param request
	 * @return
	 */
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/query.do")  
	public ModelAndView query(String logType,LogForm logForm,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		if(logForm.getLogName() != null){
			logForm.setLogName(logForm.getLogName().trim());
		}
		if(logForm.getLogUser() != null){
			logForm.setLogUser(logForm.getLogUser().trim());
		}
		logForm.setLogType(logType);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Map<String, Object> map = logServiceImpl.selectLogByCondition(pageNow, logForm,user.getUserInfo().getRealName());
		model.addAttribute("page", map.get("page"));
		model.addAttribute("logList", map.get("logList"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("logForm", map.get("logForm"));
		model.addAttribute("logType", logType);
		return new ModelAndView("system/log/query",model);
	}
	
	/**
	 * 日志信息
	 * @param response
	 * @param logId
	 * @throws Exception
	 */
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/logInfo.do")  
	public void logInfo(HttpServletResponse response,String logId) throws Exception{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		Log log = logServiceImpl.selectByPk(logId);
		response.getWriter().print(log.getLogContext());
	}
	
}
