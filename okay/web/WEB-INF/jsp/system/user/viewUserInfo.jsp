<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>

<body>
	<form:form id="formValidate" commandName="userForm" action="${ctx}/user/editUser.do" method="post" enctype="multipart/form-data"  >
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>用户名</th>
			<td>
				<form:hidden path="userInfoId"/>
				<form:input type="text" id="user.userName" path="user.userName" cssClass="form-control input-sm" readonly="true"/>
			</td>
		</tr>
		<tr>
			<th>姓名</th>
			<td><form:input type="text" id="realName" path="realName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>性别</th>
			<td>
            	<form:select path="sex" cssClass="form-control input-sm"  readonly="true">
					<form:option value="1">男</form:option>
					<form:option value="0">女</form:option>
				</form:select>
			</td>
		</tr>
		<tr>
			<th>工号</th>
			<td><form:input type="text" id="workNo" path="workNo" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>专业</th>
			<td><form:input type="text" id="specialty" path="specialty" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>职位</th>
			<td><form:input type="text" id="position" path="position" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>私人邮箱</th>
			<td><form:input type="text" id="email" path="email" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>工作邮箱</th>
			<td><form:input type="text" id="workEmail" path="workEmail" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>私人电话</th>
			<td><form:input type="text" id="phone" path="phone" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>工作电话</th>
			<td><form:input type="text" id="workPhone" path="workPhone" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>座机/传真</th>
			<td><form:input type="text" id="tel" path="tel" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th> 地址</th>
			<td><form:input type="text" id="address" path="address" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
	</form:form>
</body>
</html>