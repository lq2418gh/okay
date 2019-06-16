<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>权限信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  
	<body>
		<form:form id="formValidate" commandName="authorityForm" action="${ctx}/authority/editAuthority.do" method="post" >
			<table class="table table-bordered table-condensed">
				<c:if test="${authorityForm.authId!=0 }">
				<tr>
					<th>权限编码</th>
					<td>
						<form:hidden path="authId"/>
						<form:input type="text" id="authCode" path="authCode" cssClass="form-control input-sm" readonly="true"/>
					</td>
				</tr>
				</c:if>
				<c:if test="${authorityForm.authId==0 }">
				<tr>
					<th>权限编码</th>
					<td><form:input type="text" id="authCode" path="authCode" cssClass="form-control input-sm"/></td>
				</tr>
				</c:if>
				<tr>
					<th>权限名称</th>
					<td><form:input type="text" id="authName" path="authName" cssClass="form-control input-sm" /></td>
				</tr>
				<tr>
					<th>父级权限ID</th>
					<td><form:input type="text" id="parentId" path="parentId" cssClass="form-control input-sm" readonly="true"/></td>
				</tr>
				<tr>
					<th>备注</th>
					<td><form:textarea type="text" id="remark" path="remark" cssClass="form-control input-sm" cssStyle="resize:none;width:320px" cols="150" rows="3" /></td>
				</tr>
				<tr>
					<th>操作</th>
					<td>
						<input type="submit" class="btn btn-primary btn-xs" value="保存">
						<input type="reset" class="btn btn-primary btn-xs" value="重置">
						<input type="button" class="btn btn-primary btn-xs" value="返回"  onclick="javascript:history.go(-1);">
					</td>
				</tr>
			</table>
		</form:form> 
			
		
    
		<script src="${ctx}/js/common.js" type="text/javascript" ></script>
		<script type="text/javascript">
			//添加验证
			$("#formValidate").validate({	
				rules: {
					authCode: {
						required: true,		
						rangelength:[3,10] 
					},
					authName: {
						required: true,
						rangelength:[3,10] 
					}
				},
				messages: {
					authCode: {
						required: "请输入权限编码！",		
						rangelength: "长度必须介于3和10之间"
					},
					authName: {
						required: "请输入权限名称！",
						rangelength: "长度必须介于3和10之间"
					}
				}
			});
		</script>
	</body>
</html>
