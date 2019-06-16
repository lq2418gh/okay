<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>角色信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		
	</head>
	<body>
		<table id="queryTable" class="table table-condensed">
			<tr>
				<th> 角色名称</th>
				<td>${roleForm.roleName}</td>
			</tr>
			<tr>
				<th>备注</th>
				<td>${roleForm.remarks}</td>
			</tr>
			<tr>
				<td colspan="2" id="tools">
					<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
				</td>
			</tr>
		</table>
	</body>
</html>	