package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

/**
 * 审核记录
 * @author SY
 *
 */

public class ProcessRecord implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String record_id;//审批记录ID---生成
	private String fk_record_id;//关联审批类型ID---sys_flowset_head
	private String work_no;//业务单据单号---参数
	private String process_id;//审核流程ID---sys_flowset_detail
	private String process_name;//审核流程名称---sys_flowset_detail
	private int order_no;//序号---sys_flowset_detail
	private String role_id;//角色编码---sys_flowset_detail
	private String user_id;//指定审核人---参数
	private Date INPUT_DATE;//录入时间---初始化时
	private Date CHECK_TIME;//审核时间
	private String CHECK_USERID;//审核人ID
	private String CHECK_USERNAME;//审核人姓名
	private String CHECK_DEPTID;//审核部门ID
	private String CHECK_DEPTNAME;//审核部门名称
	private String CHECK_SUGGESTION;//审核意见
	private String CHECK_RESULT;//审核结论:待审核、审核通过、审核不通过
	private byte[] sign_image;//个人签名图片
	private MultipartFile pic;
	private String flow_sign;//是否需要数字签名
	
	private String workType;//审批流业务类型
	public String getRecord_id() {
		return record_id;
	}
	public void setRecord_id(String record_id) {
		this.record_id = record_id;
	}
	public String getFk_record_id() {
		return fk_record_id;
	}
	public void setFk_record_id(String fk_record_id) {
		this.fk_record_id = fk_record_id;
	}
	public String getWork_no() {
		return work_no;
	}
	public void setWork_no(String work_no) {
		this.work_no = work_no;
	}
	public String getProcess_id() {
		return process_id;
	}
	public void setProcess_id(String process_id) {
		this.process_id = process_id;
	}
	public String getProcess_name() {
		return process_name;
	}
	public void setProcess_name(String process_name) {
		this.process_name = process_name;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Date getINPUT_DATE() {
		return INPUT_DATE;
	}
	public void setINPUT_DATE(Date iNPUT_DATE) {
		INPUT_DATE = iNPUT_DATE;
	}
	public Date getCHECK_TIME() {
		return CHECK_TIME;
	}
	public void setCHECK_TIME(Date cHECK_TIME) {
		CHECK_TIME = cHECK_TIME;
	}
	public String getCHECK_USERID() {
		return CHECK_USERID;
	}
	public void setCHECK_USERID(String cHECK_USERID) {
		CHECK_USERID = cHECK_USERID;
	}
	public String getCHECK_USERNAME() {
		return CHECK_USERNAME;
	}
	public void setCHECK_USERNAME(String cHECK_USERNAME) {
		CHECK_USERNAME = cHECK_USERNAME;
	}
	public String getCHECK_DEPTID() {
		return CHECK_DEPTID;
	}
	public void setCHECK_DEPTID(String cHECK_DEPTID) {
		CHECK_DEPTID = cHECK_DEPTID;
	}
	public String getCHECK_DEPTNAME() {
		return CHECK_DEPTNAME;
	}
	public void setCHECK_DEPTNAME(String cHECK_DEPTNAME) {
		CHECK_DEPTNAME = cHECK_DEPTNAME;
	}
	public String getCHECK_SUGGESTION() {
		return CHECK_SUGGESTION;
	}
	public void setCHECK_SUGGESTION(String cHECK_SUGGESTION) {
		CHECK_SUGGESTION = cHECK_SUGGESTION;
	}
	public String getCHECK_RESULT() {
		return CHECK_RESULT;
	}
	public void setCHECK_RESULT(String cHECK_RESULT) {
		CHECK_RESULT = cHECK_RESULT;
	}
	public byte[] getSign_image() {
		return sign_image;
	}
	public void setSign_image(byte[] sign_image) {
		this.sign_image = sign_image;
	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}
	public String getFlow_sign() {
		return flow_sign;
	}
	public void setFlow_sign(String flow_sign) {
		this.flow_sign = flow_sign;
	}
	
	public String getWorkType() {
		return workType;
	}
	public void setWorkType(String workType) {
		this.workType = workType;
	}
}