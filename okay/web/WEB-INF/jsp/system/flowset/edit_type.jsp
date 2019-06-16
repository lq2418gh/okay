<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>审批类型信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>

<body>
	<form:form id="formValidate" commandName="flowsetForm" action="${ctx}/flowset/editFlowset.do" method="post" >
	<table id="queryTable" class="table table-condensed">
		<c:if test="${flowsetForm.record_id!=null }">
		<tr>
			<th>审批类型代码</th>
			<td>
				<form:hidden path="record_id"/>
				<input type="text" id="record_code1" name="record_code1" class="form-control input-sm" readonly="readonly" value="${flowsetForm.record_code }"/>
			</td>
		</tr>
		<tr>
			<th>审批层级</th>
			<td>
				<form:input type="text" id="levels" path="levels" cssClass="form-control input-sm" readonly="true"/>
			</td>
		</tr>
		</c:if>
		<c:if test="${flowsetForm.record_id==null }">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 审批类型代码</th>
			<td>
				<form:hidden path="levels"/>
				<form:input type="text" id="record_code" path="record_code" cssClass="form-control input-sm"/>
			</td>
		</tr>
		</c:if>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 审批类型名称</th>
			<td><form:input type="text" id="work_type" path="work_type" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>操作表名</th>
			<td><form:input type="text" id="table_name" path="table_name" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>状态字段名</th>
			<td><form:input type="text" id="state_col" path="state_col" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>单据字段名</th>
			<td><form:input type="text" id="order_col" path="order_col" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>审核通过状态值</th>
			<td><form:input type="text" id="check_val" path="check_val" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>审核通过更改其他状态值</th>
			<td><form:input type="text" id="other_val" path="other_val" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>审核不通过状态值</th>
			<td><form:input type="text" id="uncheck_val" path="uncheck_val" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>审核不通过更改其他状态值</th>
			<td><form:input type="text" id="unother_val" path="unother_val" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>备注</th>
			<td><form:input type="text" id="memo" path="memo" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>service</th>
			<td><form:input type="text" id="service_name" path="service_name" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>pass方法</th>
			<td><form:input type="text" id="pass_method" path="pass_method" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>reject方法</th>
			<td><form:input type="text" id="reject_method" path="reject_method" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>查看链接</th>
			<td><form:input type="text" id="connections" path="connections" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<input type="button" class="btn btn-primary btn-xs" value="保存" onclick="formSubmit();">
				<input type="reset" class="btn btn-primary btn-xs" value="重置"  onclick="resetControl()" >
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
	</form:form>
	<script type="text/javascript">
			//点击保存按钮，提交表单，然后关闭遮罩
			function formSubmit(){
				if(obj.form()){
					document.getElementById("formValidate").submit();
					window.top.document.getElementById('butclose').click();
				}
			}
			//表单验证
			var obj = $("#formValidate").validate({	
				rules: {
					record_code:{
						required: true,
						rangelength:[1,60],
						remote:{
		 					type:"POST",
		 					url:"${ctx}/flowset/checkFlowset.do", 
		 					data:{
		 						record_code:function(){
		 							return $("#record_code").val();
		 						}
			 				}
						}
					},
					work_type: {
						required: true,		
						rangelength:[1,60] 
					},
					table_name: {
						required: true,
						rangelength:[1,60]
					},
					state_col: {
						required: true,
						rangelength:[1,60]
					},
					order_col: {
						required: true,
						rangelength:[1,60]
					},
					check_val: {
						required: true,
						rangelength:[1,60]
					},
					uncheck_val: {
						required: true,
						rangelength:[1,60]
					}
				},
				messages: {
					record_code: {
						required: "请输入",
						rangelength: "长度必须介于1和60之间",
						remote:"审批类型代码已存在"
					},
					work_type: {
						required: "请输入",		
						rangelength: "长度必须介于1和60之间"
					},
					table_name: {
						required: "请输入",		
						rangelength: "长度必须介于1和60之间"
					},
					state_col: {
						required: "请输入",		
						rangelength: "长度必须介于1和60之间"
					},
					order_col: {
						required: "请输入",		
						rangelength: "长度必须介于1和60之间"
					},
					check_val: {
						required: "请输入",		
						rangelength: "长度必须介于1和60之间"
					},
					uncheck_val: {
						required: "请输入",		
						rangelength: "长度必须介于1和60之间"
					}
				}
			});
	</script>
</body>
</html>
