package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.Date;

/**
 * 日志实体类
 * @author SY
 * 
 */

public class Log implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String logId;//日志ID
	private String logName;//日志名称
	private String logContext;//日志内容
	private String logUser;//操作人
	private String logIP;//IP
	private Date logDate;//日志时间
	private String logType;//日志类型

	public String getLogType() {
		return logType;
	}
	public void setLogType(String logType) {
		this.logType = logType;
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
	public Date getLogDate() {
		return logDate;
	}
	public void setLogDate(Date logDate) {
		this.logDate = logDate;
	}
	@Override
	public String toString() {
		return "Log [logId=" + logId + ", logName=" + logName + ", logContext="
				+ logContext + ", logUser=" + logUser + ", logIP=" + logIP
				+ ", logDate=" + logDate + ", logType=" + logType + "]";
	}
	
}
