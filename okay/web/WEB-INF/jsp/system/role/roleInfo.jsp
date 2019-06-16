<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>角色信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  
	<body>
	<form:form id="formValidate" action="${ctx}/role/saveRoleInfo.do" method="post" commandName="roleForm">
		<form:hidden path="roleId" id="roleId"/>
		<table id="queryTable" class="table table-condensed">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>角色名称</th>
			<td><form:input path="roleName"  id="roleName" cssClass="form-control input-sm" maxlength="20"/></td>
		</tr>
		<tr>
			<th>备注</th>
			<td><form:textarea path="remarks" id="remarks" rows="2" cols="100" class="form-control input-sm" style="resize: none;"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<security:authorize ifAnyGranted="ROLE_SYS_ROLE_ADD,ROLE_SYS_ROLE_MOD">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onclick="saveRuleInfo();" />
				</security:authorize> 
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
	</form:form>
		<script type="text/javascript">
			function saveRuleInfo(){
					if(obj.form()){
						document.getElementById("formValidate").submit();
						window.top.document.getElementById('butclose').click();
					}
			}
			var obj = $("#formValidate").validate({	
				rules: {
					roleName: {
						required: true,		
						rangelength:[1,50],
						remote:{
		 					type:"POST",
		 					url:"${ctx}/role/repeatRoleName.do", 
		 					data:{
		 						roleId:function(){
		 							return $("#roleId").val();
		 						},
		 						roleName:function(){
		 							return $("#roleName").val();
		 						}
			 				}
						}  
					},
					remarks: {
						rangelength:[1,500] 
					}
				},
				messages: {
					roleName: {
						required: "请输入角色名称",		
						rangelength: "长度必须介于1和50之间",
						remote:"角色名称已存在"
					},
					remarks: {
						rangelength: "长度必须介于1和500之间"
					}
				}
			});
		</script>
	</body>
</html>