<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>权限信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
			function saveAuth(){
				var code = $("#authCode").val();
				if(code == null || code == ""){
					alert("请输入权限编码！");
					$("#authCode").focus();
					return;
				}
				var name = $("#authName").val();
				if(name == null || name == ""){
					alert("请输入权限名称！");
					$("#authName").focus();
					return;
				}
				$.post("${ctx}/authority/validateAuthority.do",{"authCode":code,"authId":'${authorityForm.authId}'},function(result){
					if(result == "ok"){
						document.getElementById("formValidate").submit();
						window.top.document.getElementById('butclose').click();
					}else{
						alert("权限编码有重复！");
						$("#authCode").focus();
						return;
					}
				});
			}
		</script>
	</head>
  
	<body>
		<form:form id="formValidate" commandName="authorityForm" action="${ctx}/authority/saveAuthority.do" method="post" >
			<form:hidden path="authId" value="${authorityForm.authId}"/>
			<table class="table table-bordered table-condensed">
				
				<tr>
					<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>权限编码</th>
					<td><form:input type="text" id="authCode" path="authCode" cssClass="form-control input-sm" value="${authorityForm.authCode}"/></td>
				</tr>
				
				<tr>
					<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>权限名称</th>
					<td><form:input type="text" id="authName" path="authName" cssClass="form-control input-sm" value="${authorityForm.authName}" /></td>
				</tr>
				<tr>
					<th>父级权限ID</th>
					<td><form:input type="text" id="parentId" path="parentId" cssClass="form-control input-sm" readonly="true" value="${authorityForm.parentId}"/></td>
				</tr>
				<tr>
					<th>排序号</th>
					<td><form:input type="text" id="rowOrder" path="rowOrder" cssClass="form-control input-sm" value="${authorityForm.rowOrder}"/></td>
				</tr>
				<tr>
					<th>操作</th>
					<td>
						<input type="button" class="btn btn-primary btn-xs" value="保存" onclick="saveAuth()">
						<input type="reset" class="btn btn-primary btn-xs" value="重置">
						<input type="button" class="btn btn-primary btn-xs" value="关闭"  onclick="window.top.document.getElementById('butclose').click()">
					</td>
				</tr>
			</table>
		</form:form> 
	</body>
</html>
