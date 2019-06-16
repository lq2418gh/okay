package dkd.okay.system.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.system.bo.Task;
import dkd.okay.system.bo.User;
import dkd.okay.system.dao.TaskDaoImpl;
import dkd.okay.system.dao.UserDaoImpl;
@Service(value="taskService")
@Transactional
public class TaskServiceImpl{
	@Autowired
	private TaskDaoImpl taskDao;
	@Resource(name="userDao")
	private UserDaoImpl userDao;
	/**
	 * 根据当前登录用户查询其待审任务
	 * @param user
	 */
	public List<Task> loadProcessTaskByUser(User user){
		return taskDao.loadProcessTaskByUser(user);
	}
	/**
	 * 根据当前登录用户查询其待办任务
	 * @param user
	 * @return
	 */
	public List<Task> loadBackLogTaskByUser(User user){
		return new ArrayList<Task>();
		//return taskDao.loadBackLogTaskByUser(map);
	}
}