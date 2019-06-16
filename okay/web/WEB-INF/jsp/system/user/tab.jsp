<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>标签页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body style="padding: 0px;">
	<div class="row">
		<div class="span12">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#userInfo" data-toggle="tab" ><span class="glyphicon glyphicon-user"></span> 用户信息</a></li>
				<c:if test="${userInfoId!=null }">
				<security:authorize ifAllGranted="ROLE_SYS_USER_ROLE_ADD"><!-- onclick="userRole.window.location.reload();" -->
				<li><a href="#userRole" data-toggle="tab" onClick="userRole.window.location.reload();"><span class="glyphicon glyphicon-th-list"></span> 用户角色</a></li>
				</security:authorize>						
				<security:authorize ifAllGranted="ROLE_SYS_USER_AUTH_ADD">
				<li><a href="#userAuth" data-toggle="tab"><span class="glyphicon glyphicon-th-list"></span> 用户权限</a></li>
				</security:authorize>
				</c:if>
			</ul>
			<div class="tab-content" >
				<div class="tab-pane active" id="userInfo" style="height: 700px">
					<iframe id="" name="userInfo" src="${ctx}/user/userInfo.do?companyId=${companyId}&userInfoId=${userInfoId}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
				</div>
				<c:if test="${userInfoId!=null }">						
				<security:authorize ifAllGranted="ROLE_SYS_USER_ROLE_ADD">
				<div class="tab-pane" id="userRole" style="height: 550px">
					<iframe id="userRole" name="userRole" src="${ctx}/user/userRole.do?companyId=${companyId}&userInfoId=${userInfoId}&userId=${userId}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
				</div>
				</security:authorize>											
				<security:authorize ifAllGranted="ROLE_SYS_USER_AUTH_ADD">
				<div class="tab-pane" id="userAuth" style="height: 550px">
					<iframe id="" name="userAuth" src="${ctx}/user/userAuth.do?companyId=${companyId}&userInfoId=${userInfoId}&userId=${userId}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
				</div>
				</security:authorize>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>