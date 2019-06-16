package dkd.okay.system.bo;

import java.io.Serializable;

/**
 * 流程配置明细
 * @author SY
 *
 */

public class FlowsetDetail implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String record_id;//审批流ID
	private int order_no;//序号
	private String flow_name;//审批流名称
	private String role_id;//角色编码
	private String role_name;//角色名称
	private String flow_sign;//是否需要数字签名
	private String memo;//备注
	private String ifdel;//删除标志
	private Flowset flowset;//关联审批类型ID
	
	public Flowset getFlowset() {
		return flowset;
	}
	public void setFlowset(Flowset flowset) {
		this.flowset = flowset;
	}
	public String getRecord_id() {
		return record_id;
	}
	public void setRecord_id(String record_id) {
		this.record_id = record_id;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getFlow_name() {
		return flow_name;
	}
	public void setFlow_name(String flow_name) {
		this.flow_name = flow_name;
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getFlow_sign() {
		return flow_sign;
	}
	public void setFlow_sign(String flow_sign) {
		this.flow_sign = flow_sign;
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
	@Override
	public String toString() {
		return "FlowsetDetail [record_id=" + record_id + ", order_no="
				+ order_no + ", flow_name=" + flow_name + ", role_id="
				+ role_id + ", role_name=" + role_name + ", flow_sign="
				+ flow_sign + ", memo=" + memo + ", ifdel=" + ifdel
				+ ", flowset=" + flowset + "]";
	}
	
}
