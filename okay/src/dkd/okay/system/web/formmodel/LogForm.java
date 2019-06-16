package dkd.okay.system.web.formmodel;

/**
 * 日志Form类
 * @author SY
 * 
 */

public class LogForm {
	
	private String logId;//日志ID
	private String logName;//日志名称
	private String logContext;//日志内容
	private String logUser;//操作人
	private String logIP;//IP
	private String logDate;//日志时间
	private String logType;
	private String beginTime;
	private String endTime;
	public String getLogType() {
		return logType;
	}
	public void setLogType(String logType) {
		this.logType = logType;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getLogId() {
		return logId;
	}
	public void setLogId(String logId) {
		this.logId = logId;
	}
	public String getLogName() {
		return logName;
	}
	public void setLogName(String logName) {
		this.logName = logName;
	}
	public String getLogContext() {
		return logContext;
	}
	public void setLogContext(String logContext) {
		this.logContext = logContext;
	}
	public String getLogUser() {
		return logUser;
	}
	public void setLogUser(String logUser) {
		this.logUser = logUser;
	}
	public String getLogIP() {
		return logIP;
	}
	public void setLogIP(String logIP) {
		this.logIP = logIP;
	}
	public String getLogDate() {
		return logDate;
	}
	public void setLogDate(String logDate) {
		this.logDate = logDate;
	}
	@Override
	public String toString() {
		return "LogForm [logId=" + logId + ", logName=" + logName
				+ ", logContext=" + logContext + ", logUser=" + logUser
				+ ", logIP=" + logIP + ", logDate=" + logDate + ", logType="
				+ logType + ", beginTime=" + beginTime + ", endTime=" + endTime
				+ "]";
	}
}