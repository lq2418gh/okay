<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>file</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  
	<body>
		<div class="container-fluid">
			<div class="row" style="margin-top: 200px;">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="alert alert-warning" role="alert">
						文件上传大小不能超过30MB，请检查文件大小！
						<a href="javascript:history.back(1)" class="btn btn-primary btn-sm active" role="button">返回</a>
					</div>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</body>
</html>
