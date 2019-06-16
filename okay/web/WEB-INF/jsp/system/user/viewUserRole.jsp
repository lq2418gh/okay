<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户角色页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  
	<body>
		<div style="height: 470px;overflow: auto">
			<table class="table table-striped table-condensed table-hover">
			<tr>
				<th>角色名称</th>
			</tr>
			<c:forEach items="${roleList}" var="role">
			<tr>
				<td>${role.roleName }</td>
			</tr>
			</c:forEach>
		</table>
		<table>
			<tr>
				<td id="tools">					
					<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
				</td>
			</tr>
		</table>
	</div>
	</body>
</html>