package dkd.okay.system.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.ProcessRecord;
import dkd.okay.system.bo.WaitTask;

/**
 *审批记录DAO接口实现类
 * @author SY
 *
 */

@Repository(value="ProcessRecordDao")
public class ProcessRecordDaoImpl extends BaseDaoImpl<ProcessRecord, String>{

	public ProcessRecord selectByWorkNo(String work_no) {
		return sqlSession.selectOne("ProcessRecord.selectByWorkNo",work_no);
	}
	public List<ProcessRecord> selectByWorkno(String work_no) {
		return sqlSession.selectList("ProcessRecord.selectByWorkno",work_no);
	}
	public List<ProcessRecord> selectByWorkNoFkRecordId(String workNo,String fkRecordId) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("work_no", workNo);
		map.put("fk_record_id", fkRecordId);
		return sqlSession.selectList("ProcessRecord.selectByWorkNoFkRecordId",map);
	}
	
	public List<WaitTask> selectWaitTaskByContract(String work_no) {
		return sqlSession.selectList("ProcessRecord.selectWaitTaskByContract",work_no);
	}

	public ProcessRecord selectflowByWorkNo(String work_no){
		return sqlSession.selectOne("ProcessRecord.selectflowByWorkNo",work_no);
	}
	public ProcessRecord selectflowByWaitTask(String record_code){
		return sqlSession.selectOne("ProcessRecord.selectflowByWaitTask",record_code);
	}
	public List<WaitTask> selectWaitTaskByInvite(String work_no) {
		return sqlSession.selectList("ProcessRecord.selectWaitTaskByInvite",work_no);
	}
	public List<WaitTask> selectWaitTaskByNobid(String work_no) {
		return sqlSession.selectList("ProcessRecord.selectWaitTaskByNobid",work_no);
	}
	/**
	 * 供应商查询年审，黑名单，不合格时间
	 * @param map
	 * @return
	 */
	public String selectflowBySupplierId(Map<String, Object> map){
		return sqlSession.selectOne("ProcessRecord.selectflowBySupplierId",map);
	}
	public void deleteProcessRecord(String workNo){
		sqlSession.delete("ProcessRecord.deleteProcessRecord",workNo);
	}
	public void initByYearCheck(String workNo){
		sqlSession.update("ProcessRecord.initByYearCheck",workNo);
	}
	public boolean checkByYear(String workNo){
		Object obj = sqlSession.selectOne("ProcessRecord.checkByYear",workNo);
		if(obj == null){
			return false;
		}else{
			if(((Integer)obj) > 0){
				return true;
			}else{
				return false;
			}
		}
	}
	public boolean isInit(String workNo){
		Object obj = sqlSession.selectOne("ProcessRecord.countByNoInit",workNo);
		if(obj == null){
			return true;
		}else{
			if(((Integer)obj) > 0){
				return false;
			}else{
				return true;
			}
		}
	}
}