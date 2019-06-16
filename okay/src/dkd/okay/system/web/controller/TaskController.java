package dkd.okay.system.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.system.bo.Task;
import dkd.okay.system.bo.User;
import dkd.okay.system.service.TaskServiceImpl;

@Controller
@RequestMapping("sys/task")
public class TaskController /*extends BaseController*/  {
	@Autowired
	private TaskServiceImpl taskService;
	/**
	 * 初始化加载任务界面
	 * @param model
	 * @return
	 */
	@RequestMapping("/welcome.do")
	public ModelAndView welcome (ModelMap model,HttpServletRequest request){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		//根据当前登录人查询其待审任务
		model.put("taskProcessList", taskService.loadProcessTaskByUser(user));
		//根据当前登录人查询其待办任务列表
		List<Task> taskBackLogList=taskService.loadBackLogTaskByUser(user);
		model.put("taskBackLogList", taskBackLogList);
		return new ModelAndView("index/welcome",model);
	}
}
