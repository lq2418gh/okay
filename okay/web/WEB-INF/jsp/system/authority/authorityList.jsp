<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>权限列表页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  
	<body>
		<div class="panel-group" id="accordion">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a id="example" data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">工具栏</span></a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in" >
					<div class="panel-body" style="padding-top: 0xp;">
						<table class="table table-bordered table-condensed" style="margin-bottom: 0px;">
							<tr>
								<th>操作</th>
								<td style="text-align:left;">
								<c:if test="${authId==0 }">
									<a class="btn btn-primary btn-xs" href='${ctx }/authority/authorityInfo.do?flag=save&parentId=${authId}'>新建</a>
								</c:if>
									<input type="button" value="编辑" class="btn btn-primary btn-xs" id="upt" onclick="upt('${ctx}/authority/authorityInfo.do?flag=update&');"/>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>  
		<table class="table table-striped table-condensed table-hover">
			<tr>
				<th><input type=checkbox  name="checkAll"  id="checkBoss"/></th>
				<th>权限编码</th>
				<th>权限名称</th>
			</tr>
			<c:forEach items="${authorityList}" var="auth">
			<tr>
				<td><input value="${auth.authId }" type=checkbox  name="ids"/></td>
				<td>${auth.authCode }</td>
				<td>${auth.authName }</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="12">
					<!------------- 分页开始 ------------->	
					<jsp:include page="../../common/page.jsp">  
						<jsp:param name="url" value="${pageUrl}" />      
					</jsp:include>  
					<!------------- 分页结束 -------------> 
				</td>
			</tr>
		</table>
		<form id="condition" name="condition"  hidden="true" method="post">
			<input type="text" name="authId" value="${authId}">
		</form>
		<script src="${ctx}/js/common.js" type="text/javascript" ></script>
		<c:if test="${message!=null }">
		<script type="text/javascript">
			window.parent.frames["treeFrame"].location.reload();
		</script>
		</c:if>
	</body>
</html>
