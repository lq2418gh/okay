package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.Date;

/**
 * 文件信息
 * @author SY
 * 
 */

public class FileInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String file_id;//文件ID，取U_ID值
	private String file_module_name;//文件所属模块
	private String file_module_code;
	private String file_type_name;//文件类型
	private String file_type_code;
	private String des;//文件描述
	private String fk_id;//关联单据id
	private String file_path;//文件路径
	private Date INPUT_DATE;//录入时间
	private String INPUT_USERID;//录入人ID
	private String INPUT_USERNAME;//录入人姓名
	private String INPUT_DEPTID;//录入部门ID
	private String INPUT_DEPTNAME;//录入部门名称
	private String ifdel;//删除标志
	private Date file_beginTime;
	private Date file_endTime;
	private String file_old;
	private String importNo;
	private String realName;
	
	
	public String getImportNo() {
		return importNo;
	}
	public void setImportNo(String importNo) {
		this.importNo = importNo;
	}
	public String getFile_old() {
		return file_old;
	}
	public void setFile_old(String file_old) {
		this.file_old = file_old;
	}
	public Date getFile_beginTime() {
		return file_beginTime;
	}
	public void setFile_beginTime(Date file_beginTime) {
		this.file_beginTime = file_beginTime;
	}
	public Date getFile_endTime() {
		return file_endTime;
	}
	public void setFile_endTime(Date file_endTime) {
		this.file_endTime = file_endTime;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public String getFile_module_name() {
		return file_module_name;
	}
	public void setFile_module_name(String file_module_name) {
		this.file_module_name = file_module_name;
	}
	public String getFile_module_code() {
		return file_module_code;
	}
	public void setFile_module_code(String file_module_code) {
		this.file_module_code = file_module_code;
	}
	public String getFile_type_name() {
		return file_type_name;
	}
	public void setFile_type_name(String file_type_name) {
		this.file_type_name = file_type_name;
	}
	public String getFile_type_code() {
		return file_type_code;
	}
	public void setFile_type_code(String file_type_code) {
		this.file_type_code = file_type_code;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getFk_id() {
		return fk_id;
	}
	public void setFk_id(String fk_id) {
		this.fk_id = fk_id;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public Date getINPUT_DATE() {
		return INPUT_DATE;
	}
	public void setINPUT_DATE(Date iNPUT_DATE) {
		INPUT_DATE = iNPUT_DATE;
	}
	public String getINPUT_USERID() {
		return INPUT_USERID;
	}
	public void setINPUT_USERID(String iNPUT_USERID) {
		INPUT_USERID = iNPUT_USERID;
	}
	public String getINPUT_USERNAME() {
		return INPUT_USERNAME;
	}
	public void setINPUT_USERNAME(String iNPUT_USERNAME) {
		INPUT_USERNAME = iNPUT_USERNAME;
	}
	public String getINPUT_DEPTID() {
		return INPUT_DEPTID;
	}
	public void setINPUT_DEPTID(String iNPUT_DEPTID) {
		INPUT_DEPTID = iNPUT_DEPTID;
	}
	public String getINPUT_DEPTNAME() {
		return INPUT_DEPTNAME;
	}
	public void setINPUT_DEPTNAME(String iNPUT_DEPTNAME) {
		INPUT_DEPTNAME = iNPUT_DEPTNAME;
	}
	public String getIfdel() {
		return ifdel;
	}
	public void setIfdel(String ifdel) {
		this.ifdel = ifdel;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	@Override
	public String toString() {
		return "FileInfo [file_id=" + file_id + ", file_module_name="
				+ file_module_name + ", file_module_code=" + file_module_code
				+ ", file_type_name=" + file_type_name + ", file_type_code="
				+ file_type_code + ", des=" + des + ", fk_id=" + fk_id
				+ ", file_path=" + file_path + ", INPUT_DATE=" + INPUT_DATE
				+ ", INPUT_USERID=" + INPUT_USERID + ", INPUT_USERNAME="
				+ INPUT_USERNAME + ", INPUT_DEPTID=" + INPUT_DEPTID
				+ ", INPUT_DEPTNAME=" + INPUT_DEPTNAME + ", ifdel=" + ifdel
				+ ", file_beginTime=" + file_beginTime + ", file_endTime="
				+ file_endTime + ", file_old=" + file_old + ", importNo="
				+ importNo + ", realName=" + realName + "]";
	}
}