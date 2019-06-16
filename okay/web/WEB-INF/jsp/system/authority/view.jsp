<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>权限信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  
	<body>
			<table class="table table-bordered table-condensed">
				
				<tr>
					<th>权限编码</th>
					<td>${authForm.authCode}</td>
				</tr>
				
				<tr>
					<th>权限名称</th>
					<td>${authForm.authName}</td>
				</tr>
				<tr>
					<th>父级权限ID</th>
					<td>${authForm.parentId}</td>
				</tr>
				<tr>
					<th>排序号</th>
					<td>${authForm.rowOrder}</td>
				</tr>
				<tr>
					<th>操作</th>
					<td>
						<input type="button" class="btn btn-primary btn-xs" value="关闭"  onclick="window.top.document.getElementById('butclose').click()">
					</td>
				</tr>
			</table>
	</body>
</html>
