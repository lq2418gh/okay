package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.List;

import dkd.okay.system.util.tree.Tree;

/**
 * 流程配置主表
 * @author SY
 *
 */

public class Flowset extends Tree implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String record_id;//审批类型ID
	private String record_code;//审批类型代码
	private String work_type;//审核模块类型
	private String table_name;//操作数据库表名
	private String state_col;//状态字段名
	private String check_val;//审核通过状态值
	private String uncheck_val;//审核不通过状态值
	private String order_col;//单据字段名
	private int levels;//审核层级数
	private String memo;//备注
	private String ifdel;//删除标志
	//linss by 2017/08/29
	private String service_name;//service名称
	private String pass_method;  //审批通过调用方法
	private String reject_method;//--驳回-----
	private String  connections;//查看链接地址
	private List<FlowsetDetail> flowsetDetails;//关联审批流程明细id
	
	
	
	public String getConnections() {
		return connections;
	}
	public void setConnections(String connections) {
		this.connections = connections;
	}
	private String other_val;//其他状态
	private String unother_val;//不通过其他状态
	public List<FlowsetDetail> getFlowsetDetails() {
		return flowsetDetails;
	}
	public void setFlowsetDetails(List<FlowsetDetail> flowsetDetails) {
		this.flowsetDetails = flowsetDetails;
	}
	public String getRecord_id() {
		return record_id;
	}
	public void setRecord_id(String record_id) {
		this.record_id = record_id;
	}
	public String getRecord_code() {
		return record_code;
	}
	public void setRecord_code(String record_code) {
		this.record_code = record_code;
	}
	public String getWork_type() {
		return work_type;
	}
	public void setWork_type(String work_type) {
		this.work_type = work_type;
	}
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}
	public String getState_col() {
		return state_col;
	}
	public void setState_col(String state_col) {
		this.state_col = state_col;
	}
	public String getCheck_val() {
		return check_val;
	}
	public void setCheck_val(String check_val) {
		this.check_val = check_val;
	}
	public String getUncheck_val() {
		return uncheck_val;
	}
	public void setUncheck_val(String uncheck_val) {
		this.uncheck_val = uncheck_val;
	}
	public String getOrder_col() {
		return order_col;
	}
	public void setOrder_col(String order_col) {
		this.order_col = order_col;
	}
	public int getLevels() {
		return levels;
	}
	public void setLevels(int levels) {
		this.levels = levels;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getIfdel() {
		return ifdel;
	}
	public void setIfdel(String ifdel) {
		this.ifdel = ifdel;
	}
	public Flowset() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Flowset(String record_id) {
		super();
		this.record_id = record_id;
	}
	public String getOther_val() {
		return other_val;
	}
	public void setOther_val(String other_val) {
		this.other_val = other_val;
	}
	public String getUnother_val() {
		return unother_val;
	}
	public void setUnother_val(String unother_val) {
		this.unother_val = unother_val;
	}
	@Override
	public String toString() {
		return "Flowset [record_id=" + record_id + ", record_code="
				+ record_code + ", work_type=" + work_type + ", table_name="
				+ table_name + ", state_col=" + state_col + ", check_val="
				+ check_val + ", uncheck_val=" + uncheck_val + ", order_col="
				+ order_col + ", levels=" + levels + ", memo=" + memo
				+ ", ifdel=" + ifdel + ", flowsetDetails=" + flowsetDetails
				+ ", other_val=" + other_val + ", unother_val=" + unother_val
				+ "]";
	}
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public String getPass_method() {
		return pass_method;
	}
	public void setPass_method(String pass_method) {
		this.pass_method = pass_method;
	}
	public String getReject_method() {
		return reject_method;
	}
	public void setReject_method(String reject_method) {
		this.reject_method = reject_method;
	}
	
}
