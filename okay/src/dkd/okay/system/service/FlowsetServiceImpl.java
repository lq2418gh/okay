package dkd.okay.system.service;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.Constants;
import dkd.okay.system.bo.Flowset;
import dkd.okay.system.bo.FlowsetDetail;
import dkd.okay.system.bo.ProcessRecord;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserInfo;
import dkd.okay.system.bo.UserRole;
import dkd.okay.system.bo.WaitTask;
import dkd.okay.system.dao.FlowsetDaoImpl;
import dkd.okay.system.dao.FlowsetDetailDaoImpl;
import dkd.okay.system.dao.ProcessRecordDaoImpl;
import dkd.okay.system.dao.UserInfoDaoImpl;
import dkd.okay.system.dao.UserRoleDaoImpl;
import dkd.okay.system.util.email.MailSend;
import dkd.okay.system.util.spring.SpringUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

/**
 * 流程配置Service接口实现类
 * @author SY
 *
 */

@Service(value="FlowsetService")
@Transactional
public class FlowsetServiceImpl{
	
	@Resource(name="FlowsetDao")
	private FlowsetDaoImpl flowsetDaoImpl;
	
	@Resource(name="FlowsetDetailDao")
	private FlowsetDetailDaoImpl flowsetDetailDaoImpl;
	
	@Resource(name="ProcessRecordDao")
	private ProcessRecordDaoImpl processRecordDaoImpl;
	
	@Resource(name="userRoleDao")
	private UserRoleDaoImpl userRoleDaoImpl;
	
	@Resource(name="userInfoDao")
	private UserInfoDaoImpl userInfoDaoImpl;
	
	public List<Flowset> selectAll() {
		return flowsetDaoImpl.selectAll();
	}
	
	public List<FlowsetDetail> selectFlowsetDetailByFK(String record_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("record_id", record_id);
		return flowsetDetailDaoImpl.selectByCondition(map);
	}

	public Flowset selectFlowsetById(String record_id) {
		return flowsetDaoImpl.get(record_id);
	}
	
	public FlowsetDetail selectFlowsetDetailById(String record_id) {
		return flowsetDetailDaoImpl.get(record_id);
	}
	
	public int checkFlowset(String record_code) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("record_code", record_code);
		return flowsetDaoImpl.count(map);
	}
	
	public int checkFlowsetDetail(String order_no,String fk_record_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("order_no", order_no);
		map.put("fk_record_id", fk_record_id);
		return flowsetDetailDaoImpl.count(map);
	}
	
	public void editFlowset(Flowset flowset) {
		if(StringUtils.isEmpty(flowset.getRecord_id())){
			flowset.setRecord_id(UUIDGenerator.getUUID());
			flowsetDaoImpl.insert(flowset);
		}else{
			flowsetDaoImpl.update(flowset);
		}
	}

	public void editFlowsetDetail(FlowsetDetail flowsetDetail,String fk_record_id) {
		if(StringUtils.isEmpty(flowsetDetail.getRecord_id())){
			flowsetDetail.setRecord_id(UUIDGenerator.getUUID());
			flowsetDetail.setFlowset(new Flowset(fk_record_id));
			flowsetDetailDaoImpl.insert(flowsetDetail);
			//变更类型level
			Flowset flowset = flowsetDaoImpl.get(fk_record_id);
			flowset.setLevels(flowset.getLevels()+1);
			flowsetDaoImpl.update(flowset);
		}else{
			flowsetDetailDaoImpl.update(flowsetDetail);
		}
	}
	
	public void deleteFlowset(String record_id) {
		flowsetDaoImpl.deleteFlowset(record_id);
	}
	
	public void deleteFlowsetDetail(String record_id,String fk_record_id) {
		flowsetDetailDaoImpl.deleteFlowsetDetail(record_id);
		//变更类型level
		Flowset flowset = flowsetDaoImpl.get(fk_record_id);
		flowset.setLevels(flowset.getLevels()-1);
		flowsetDaoImpl.update(flowset);
	}
	
	/**
	 * 初始化审核流程
	 * @param record_code 要调用的审核类型
	 * @param work_no 执行审核单据号
	 * @param userId 指定的审核人
	 */
	
	/*
1.	参数：审批类型代码、业务单据号、指定审批人
2.	查询审批流程配置表（sys_flowset_head）的审核层级数是否大于0
3.	如果等于0，说明不走审批流程，则直接修改单据对应表单状态为审核通过状态值（check_val）
4.	如果大于0，向审批记录表（sys_work_process_record）插入全部待审记录，并向第一步待审人发送提醒
5.	如果有指定审批人，则只向指定审批人发送提醒
	 */

	public void initRecord(String record_code, String work_no, String userId) {
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//step 1:根据审批类型代码查询审批类型信息 （ifdel=0）
		Flowset flowset = flowsetDaoImpl.selectByCode(record_code);
		//step 2:判断levels
		if(flowset!=null && flowset.getLevels()==0){
			//不走流程，直接审批通过，拼写sql 格式为：update #table set #col = #colVal where #no = #noVal
			Map<String , Object> map = new HashMap<String, Object>();
			map.put("table", flowset.getTable_name());
			map.put("col", flowset.getState_col());
			map.put("colVal", "'"+flowset.getCheck_val()+"'");
			map.put("no", flowset.getOrder_col());
			map.put("noVal", "'"+work_no+"'");
			flowsetDaoImpl.updateSQL(map);
		}else{
			//取得该项目的项目人员，若项目人员有该项目流程的审批角色时，则该审批节点指定为该项目人员
			Map<String, Object> map = new HashMap<String, Object>();
			
			//走流程 有几条流程就插入几条待审记录
			//step 1: 查询全部流程
			map = new HashMap<String, Object>();
			if(flowset!=null){
				map.put("record_id", flowset.getRecord_id());
			}			
			List<FlowsetDetail> flowsetDetails = flowsetDetailDaoImpl.selectByCondition(map);
			//step 2: 循环流程
			processRecordDaoImpl.delete(work_no);
			
//			String dateStr = sdf.format(new Date());
			for(FlowsetDetail flowsetDetail : flowsetDetails){
				
				ProcessRecord processRecord = new ProcessRecord();
				processRecord.setRecord_id(UUIDGenerator.getUUID());
				if(flowset!=null){
					processRecord.setFk_record_id(flowset.getRecord_id());
				}			
				processRecord.setWork_no(work_no);
				processRecord.setProcess_id(flowsetDetail.getRecord_id());
				processRecord.setProcess_name(flowsetDetail.getFlow_name());
				processRecord.setOrder_no(flowsetDetail.getOrder_no());
				processRecord.setRole_id(flowsetDetail.getRole_id());
				processRecord.setCHECK_RESULT("待审核");
				processRecord.setUser_id(userId == null ? "" : userId);
				processRecord.setINPUT_DATE(new Date());
				processRecord.setFlow_sign(flowsetDetail.getFlow_sign());
				//step 3: 插入待审记录 
				processRecordDaoImpl.insert(processRecord);
			}
		}
	}
	public void initRecord(String record_code, String work_no) {
		initRecord(record_code,work_no,null);
	}
	/**
	 * ajax验证审批用户角色
	 * @param work_no 单据号
	 */
	
	/*
1.	参数：审批类型代码、业务单据号
2.	按参数值查询序号最小的一条待审记录
3.	判断是否指定审批人，如果是，判断用户是否为指定审批人，如果不是，则不能审批
	 */
	
	public boolean checkRole(String work_no) {
		//step1:根据单据号查询待审核的第一条审核记录
		ProcessRecord processRecord = processRecordDaoImpl.selectByWorkNo(work_no);
		if(processRecord==null){
			return false;
		}
		//step2:判断审批人
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(StringUtils.isNotEmpty(processRecord.getUser_id())){
			//指定人不为空 就判断当前登录人是不是这个指定人
			if(processRecord.getUser_id().indexOf(user.getUserId()) != -1){
				return true;
			}
		}else{
			//为空就看当前登陆人 是否具备审批角色
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("user_id", user.getUserId());
			List<UserRole>userRoles = userRoleDaoImpl.selectByCondition(map);//当前用户所有的角色
			for(UserRole userRole : userRoles){
				if(StringUtils.equals(processRecord.getRole_id(), userRole.getRoleId())){
					return true;
				}
			}
		}
		return false;
	}
	
	/**
	 * 变更审批记录
	 * @param work_no 单据号
	 * @throws SecurityException 
	 * @throws NoSuchMethodException 
	 */
	
	public boolean change(String work_no,String flag,String CHECK_SUGGESTION,HttpServletRequest request) throws NoSuchMethodException, SecurityException {
		//step1:根据单据号查询待审核的第一条审核记录
		ProcessRecord processRecord = processRecordDaoImpl.selectByWorkNo(work_no);
		//step2:变更审核记录
		processRecord.setCHECK_TIME(new Date());//审批时间
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		processRecord.setCHECK_USERID(user.getUserId());//审批人id
		processRecord.setCHECK_USERNAME(user.getUserInfo().getRealName());//审批人姓名
		processRecord.setCHECK_DEPTID(user.getUserInfo().getCompany().getCompanyId());//审批人部门id
		processRecord.setCHECK_DEPTNAME(user.getUserInfo().getCompany().getCompanyName());//审批人部门名称
		processRecord.setCHECK_SUGGESTION(CHECK_SUGGESTION);//审核意见
		Flowset flowset = flowsetDaoImpl.get(processRecord.getFk_record_id());
		Object serviceName = null ;
		if(StringUtils.isNotEmpty(flowset.getService_name())){
			serviceName = SpringUtil.getBean(flowset.getService_name());
		}
		if(StringUtils.equals(flag, "1")){//审核状态
			processRecord.setCHECK_RESULT("审核通过");
			processRecordDaoImpl.update(processRecord);
			this.pendTask(processRecord.getWork_no());
		}else{
			processRecord.setCHECK_RESULT("审核不通过");
			processRecordDaoImpl.update(processRecord);
			processRecordDaoImpl.delete(work_no);//删除该单据所有待审记录
			//step3:修改单据对应表状态为审核不通过状态值
			
			Map<String , Object> map = new HashMap<String, Object>();
			map.put("table", flowset.getTable_name());
			map.put("col", flowset.getState_col());
			map.put("colVal", "'"+flowset.getUncheck_val()+"'");
			map.put("no", flowset.getOrder_col());
			map.put("noVal", "'"+work_no+"'");
			if(StringUtils.isNotEmpty(flowset.getUnother_val()))
				map.put("unotherVal", this.getOtherVal(flowset.getUnother_val()));
			flowsetDaoImpl.updateSQL(map);
			//审核不通过时调用方法
			if(null != serviceName && StringUtils.isNotEmpty(flowset.getReject_method())){
				Method reject_method = serviceName.getClass().getMethod(flowset.getReject_method(),String.class);
				try {
					reject_method.invoke(serviceName, work_no);
				} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
					e.printStackTrace();
				}
			}
			return false;
		}
		
		//step3:如果没有待审记录，修改单据对应表状态为审核通过状态值
		ProcessRecord next = processRecordDaoImpl.selectByWorkNo(work_no);
		if(next == null){
			Map<String , Object> map = new HashMap<String, Object>();
			map.put("table", flowset.getTable_name());
			map.put("col", flowset.getState_col());
			map.put("colVal", "'"+flowset.getCheck_val()+"'");
			map.put("no", flowset.getOrder_col());
			map.put("noVal", "'"+work_no+"'");
			if(StringUtils.isNotEmpty(flowset.getOther_val())){
				map.put("otherVal", flowset.getOther_val());
			}
			flowsetDaoImpl.updateSQL(map);
			/**
			 * 调用serviceName中Pass_method方法
			 */
			if(null != serviceName && StringUtils.isNotEmpty(flowset.getPass_method())){
				Method passMethod = serviceName.getClass().getMethod(flowset.getPass_method(),String.class);
				try {
					passMethod.invoke(serviceName, work_no);
				} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

	private String getOtherVal(String otherVal){
		String str = null;
		String[] strList = otherVal.split(",");
		for(String strVal : strList){
			if(StringUtils.isNotEmpty(strVal)){
				String[] strValList = strVal.split("=");
				str = strValList[0].concat("=").concat("'").concat(strValList[1]).concat("'").concat(",");
			}
		}
		return str;
	}
	
	public ProcessRecord selectByWorkNo(String work_no) {
		return processRecordDaoImpl.selectByWorkNo(work_no);
	}
	
	public List<ProcessRecord> selectByWorkno(String work_no){
		return processRecordDaoImpl.selectByWorkno(work_no);
	}


//********************************************待审任务与待办任务添加发送邮件功能---modify by wangqian***********************************************************
	/**
	 * 待审任务查询未审核的下一节点发送邮件
	 * @param workNo
	 */
	public void  pendTask(String workNo){
		ProcessRecord processRecord = processRecordDaoImpl.selectflowByWorkNo(workNo);
		String message ="";
		if(processRecord!=null){
			message = "业务类型为："+processRecord.getWorkType()+",单据号为："
					+processRecord.getWork_no()+","+Constants.pendTask;
			this.sendEmail(processRecord, message);
		}
	}
	/**
	 * 待办任务发送邮件
	 * @param workNo
	 */
	public void waitTask(String workNo){
		List<WaitTask> waitTaskList = processRecordDaoImpl.selectWaitTaskByContract(workNo);
		//MailSend mailSend = new MailSend();
		for(WaitTask waitTask : waitTaskList){
			if(StringUtils.equals(waitTask.getRecord_code(), "COMMON_CONTRACT")){
				if(StringUtils.equals(waitTask.getSTATE(), "审核通过")){
					UserInfo userInfo1 = new UserInfo();
					String message="业务类型为："+Constants.waitContract+"单据号："+waitTask.getWork_no()+"，"+Constants.waitTask;
					if(StringUtils.isNotEmpty(waitTask.getINPUT_USERID())){
						userInfo1=userInfoDaoImpl.selectUserById(waitTask.getINPUT_USERID());
						if(StringUtils.isNotEmpty(userInfo1.getWorkEmail())){
							try{
	//							mailSend.sendMessage(message, message, userInfo1.getWorkEmail());
							}catch(Exception e){
								e.printStackTrace();
							}
						}
					}
					ProcessRecord processRecord = processRecordDaoImpl.selectflowByWaitTask(waitTask.getRecord_code());
					this.sendEmail(processRecord, message);
				}
			}
		}
	}
	/**
	 * 发送邮件公共方法
	 * @param processRecord
	 * @param message
	 */
	

	public void sendEmail (ProcessRecord processRecord,String message){
		MailSend mailSend=new MailSend();
		UserInfo userInfo = new UserInfo();
		if(StringUtils.isNotEmpty(processRecord.getUser_id())){
			String[] ids = processRecord.getUser_id().split(",");
			for(String id : ids){
				userInfo = userInfoDaoImpl.selectUserById(id);
				if(StringUtils.isNotEmpty(userInfo.getWorkEmail())){
					try{
						mailSend.sendMessage(message, message,userInfo.getWorkEmail());
					}catch(Exception e){
						e.printStackTrace();
					}
				}
			}
		}else{
			//根据RoleId查询具有此角色的所有用户的工作邮箱
			List<UserRole> workEmailList = userRoleDaoImpl.selectUserRoleByRoleId(processRecord.getRole_id());
			if(workEmailList.size()!=0){
				for(UserRole userRole:workEmailList){
					if(StringUtils.isNotEmpty(userRole.getWorkEmail())){
						try{
//							mailSend.sendMessage(message,message,userRole.getWorkEmail());
						}catch(Exception e){
							e.printStackTrace();
						}
					}
				}
			}
		}
	}
	public void deleteProcessRecord(String workNo){
		processRecordDaoImpl.deleteProcessRecord(workNo);
	}
	public void initByYearCheck(String supplierId){
		processRecordDaoImpl.initByYearCheck(supplierId);
	}
	public boolean checkByYear(String supplierId){
		return processRecordDaoImpl.checkByYear(supplierId);
	}
	public boolean isInit(String workNo){
		return processRecordDaoImpl.isInit(workNo);
	}
}