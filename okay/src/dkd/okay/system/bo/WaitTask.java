package dkd.okay.system.bo;

import java.io.Serializable;

public class WaitTask implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String record_code;
	private String STATE;
	private String work_no;
	private String INPUT_USERID;
	
	public String getRecord_code() {
		return record_code;
	}
	public void setRecord_code(String record_code) {
		this.record_code = record_code;
	}
	public String getSTATE() {
		return STATE;
	}
	public void setSTATE(String sTATE) {
		STATE = sTATE;
	}
	public String getWork_no() {
		return work_no;
	}
	public void setWork_no(String work_no) {
		this.work_no = work_no;
	}
	public String getINPUT_USERID() {
		return INPUT_USERID;
	}
	public void setINPUT_USERID(String iNPUT_USERID) {
		INPUT_USERID = iNPUT_USERID;
	}
	
	
	
}
