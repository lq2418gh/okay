package dkd.okay.system.dao;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Log;


/**
 * 日志DAO接口实现类
 * @author SY
 *
 */

@Repository(value="logDao")
public class LogDaoImpl extends BaseDaoImpl<Log, String>{

	public void deleteByWeek() {
		sqlSession.delete("Log.deleteByWeek");
	}	
}