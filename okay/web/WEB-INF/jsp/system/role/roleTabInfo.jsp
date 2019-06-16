<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>角色Tab页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>


<body>
	<div id="context" >
		<div class="container">
			<div class="row">
				<div class="span12">
					<ul class="nav nav-tabs">
						
							<li class="active"><a href="#aaa" data-toggle="tab" ><span class="glyphicon glyphicon-shopping-cart"></span> 角色信息</a></li>
						
						<c:if test="${not empty roleId}">
							<li><a href="#ccc" data-toggle="tab"><span class="glyphicon glyphicon-th-list"></span> 配置权限</a></li>
						</c:if>
					</ul>
					<div class="tab-content" >
					
							<div class="tab-pane active" id="aaa" style="height: 700px">
								<iframe id="a" name="a" src="${ctx}/role/roleInfo.do?roleId=${roleId}&type=${type}" width="100%" height="90%" frameborder="0" scrolling="no" ></iframe>
							</div>
						
						<c:if test="${not empty roleId}">
							<security:authorize ifAllGranted="ROLE_SYS_ROLE_AUTH_ADD">
							<div class="tab-pane" id="ccc" style="height: 600px">
								<iframe id="c" name="c" src="${ctx}/role/roleAuthority.do?roleId=${roleId}&type=${type}" width="100%" height="90%" frameborder="0" scrolling="no"></iframe>
							</div>
							</security:authorize>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
