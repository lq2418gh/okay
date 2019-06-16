<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>标签页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body style="padding: 0px;">
	<!-- <div id="context" style=""> -->
		<!-- <div class="container"> -->
			<div class="row">
				<div class="span12">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#userInfo" data-toggle="tab" ><span class="glyphicon glyphicon-shopping-cart"></span> 用户信息</a></li>
						<c:if test="${userInfoId != null }">
							<li><a href="#userRole" data-toggle="tab"><span class="glyphicon glyphicon-th-list"></span> 用户角色</a></li>
							<li><a href="#userAuth" data-toggle="tab"><span class="glyphicon glyphicon-th-list"></span> 用户权限</a></li>
						</c:if>
					</ul>
					<div class="tab-content" >
						<div class="tab-pane active" id="userInfo" style="height: 700px">
							<iframe id="" name="userInfo" src="${ctx}/user/viewUserInfo.do?userInfoId=${userInfoId}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
						</div>
						<div class="tab-pane" id="userRole" style="height: 550px">
							<iframe id="" name="userRole" src="${ctx}/user/viewUserRole.do?userInfoId=${userInfoId}&userId=${userId}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
						</div>
						<div class="tab-pane" id="userAuth" style="height: 550px">
							<iframe id="" name="userAuth" src="${ctx}/user/viewUserAuth.do?userId=${userId}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
						</div>
					</div>
				</div>
			</div>
		<!-- </div> -->
	<!-- </div> -->
</body>
</html>