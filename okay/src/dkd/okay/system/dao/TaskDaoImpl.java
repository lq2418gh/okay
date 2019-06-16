package dkd.okay.system.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Task;
import dkd.okay.system.bo.User;

/**
 * 权限DAO接口实现类
 * @author wangqian
 *
 */

@Repository(value="taskDao")
public class TaskDaoImpl extends BaseDaoImpl<Task, String>{
	/**
	 * 根据当前登录用户查询其待审任务	
	 * @param user
	 * @return
	 */
	public List<Task> loadProcessTaskByUser(User user){
			return sqlSession.selectList("Task.loadProcessTaskByUser",user);
		}
	/**
	 * 根据当前登录用户查询其待办任务	
	 * @param user
	 * @return
	 */	
	public List<Task> loadBackLogTaskByUser(Map<String,Object> map){
		return sqlSession.selectList("Task.loadBackLogTaskByUser",map);
		
	}
}