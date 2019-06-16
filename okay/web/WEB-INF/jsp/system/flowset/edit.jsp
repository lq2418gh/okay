<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>审批流程信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		
	</head>

<body>
	<form:form id="formValidate" commandName="flowsetDetailForm" action="${ctx}/flowset/editFlowsetDetail.do" method="post" >
	<table id="queryTable" class="table table-condensed">
		<c:if test="${flowsetDetailForm.record_id!=null }">
		<tr>
			<th>序号</th>
			<td>
				<form:hidden path="record_id"/>
				<form:hidden path="fk_record_id"/>
				<input type="text" id="order_no1" name="order_no1" class="form-control input-sm" readonly="readonly" value="${flowsetDetailForm.order_no }"/>
			</td>
		</tr>
		</c:if>
		<c:if test="${flowsetDetailForm.record_id==null }">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 序号</th>
			<td >
				<form:hidden path="fk_record_id"/>
				<input type="text" id="order_no" name="order_no" value="${flowsetDetailForm.order_no eq 0 ? '' : flowsetDetailForm.order_no}" class="form-control input-sm"/>
			</td>
		</tr>
		</c:if>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 审批流名称</th>
			<td ><form:input type="text" id="flow_name" path="flow_name" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>角色名称</th>
			<form:hidden id="role_name" path="role_name" cssClass="form-control input-sm" />
			<td><div style="max-height: 380px;overflow: auto"><table style="font-size:14px">
			<c:forEach items="${roleList }" var="role" varStatus="status" >
			 	<c:if test="${status.count%2!=0}">  
			        <tr><td><form:radiobutton id="${role.roleName }" path="role_id" value="${role.roleId }"/>${role.roleName }</td>
			    </c:if>  
			    <c:if test="${status.count%2==0}">  
			        <td><form:radiobutton id="${role.roleName }" path="role_id" value="${role.roleId }"/>${role.roleName }</td></tr>
			    </c:if>  
			</c:forEach></table></div>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>是否需要数字签名</th>
			<td>
				<input type="radio" name="flow_sign" value="1"/>是
				<input type="radio" name="flow_sign" value="0" checked="checked"/>否
				<!--<form:radiobutton path="flow_sign" value="1"/>是
				<form:radiobutton path="flow_sign" value="0"/>否-->
			</td>
		</tr>
		<tr>
			<th>备注</th>
			<td ><form:input type="text" id="memo" path="memo" cssClass="form-control input-sm"/></td>
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
					var role_id = document.getElementsByName('role_id');
					for(i=0;i<role_id.length;i++){
						if(role_id[i].checked){
							$("#role_name").val(role_id[i].id);
						}
					}
					document.getElementById("formValidate").submit();
					window.top.document.getElementById('butclose').click();
				}
			}
			//表单验证
			var obj = $("#formValidate").validate({	
				rules: {
					order_no:{
						required: true,
						rangelength:[1,20],
						remote:{
		 					type:"POST",
		 					url:"${ctx}/flowset/checkFlowsetDetail.do?fk_record_id=${flowsetDetailForm.fk_record_id}", 
		 					data:{
		 						order_no:function(){
		 							return $("#order_no").val();
		 						}
			 				}
						}
					},
					flow_name: {
						required: true,		
						rangelength:[1,20] 
					},
					role_name: {
						required: true,
						rangelength:[1,20]
					},flow_sign:{
						required: true
					}
				},
				messages: {
					order_no: {
						required: "请输入序号",
						rangelength: "长度必须介于1和20之间",
						remote:"审批流程序号已存在"
					},
					flow_name: {
						required: "请输入审批流名称",		
						rangelength: "长度必须介于1和20之间"
					},
					role_name: {
						required: "请选择角色",		
						rangelength: "长度必须介于1和20之间"
					},flow_sign:{
						required: "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择是否需要数字签名"
					}
				}
			});
	</script>
</body>
</html>