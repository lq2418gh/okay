<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>角色列表页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
			function queryList(){
				var roleName = document.getElementById("roleName").value;
				document.roleForm.action="${ctx}/role/role.do?roleName="+roleName;
				document.roleForm.submit();
			}
		</script>
	</head>
	<body>
		<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title" style="margin-top: 5px;">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">查询角色</span></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form action="">
									<table id="queryTable" class="table table-condensed ">
										<tr>
											<th>角色名称</th>
											<td><input type="text" id="roleName" value="${roleName}" name="roleName" class="form-control input-sm" ></td>
											<th></th>
											<td></td>
										</tr>
										<tr>
											<td colspan="4" id="tools">
												<input type="button" value="查询" class="btn btn-primary btn-xs" onclick="queryList()" /> 
												<input type="reset" value="重置" class="btn btn-primary btn-xs" />
											</td>
										</tr>
									</table>
									</form>	
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="span12" style="margin-top: 10px;">
					<div class="panel-group" id="accordion2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> <span class="icon"><span class="glyphicon glyphicon-file"></span></span></a>
								<security:authorize ifAllGranted="ROLE_SYS_ROLE_ADD">
								<button class="btn btn-primary btn-xs" onclick="modal(900,550,'${ctx}/role/roleTabInfo.do?roleId=${role.roleId}&type=edit');">新建角色</button>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 640px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>角色名称</th>
											<th>操作</th>
										</tr>
										<c:forEach items="${roleList}" var="role">
											<tr>
												<td><a onclick="modal(900,550,'${ctx}/role/roleTabInfo.do?roleId=${role.roleId}&type=view');">${role.roleName }</a></td>
												<td>
												<security:authorize ifAllGranted="ROLE_SYS_ROLE_MOD">
												<button class="btn btn-primary btn-xs" onclick="modal(900,700,'${ctx}/role/roleTabInfo.do?roleId=${role.roleId}&type=edit');">
												<span class="glyphicon glyphicon-pencil"></span>修改</button>
												</security:authorize>
												<security:authorize ifAllGranted="ROLE_SYS_ROLE_DEL">
												<button class="btn btn-primary btn-xs" onclick="confirmDelete('${role.roleId}')"><span class="glyphicon glyphicon-trash"></span> 删除</button>
												</security:authorize>
												</td>
											</tr>
										</c:forEach>
										<tr>
											<td colspan="12" style="text-align: center;">
												<!------------- 分页开始 ------------->	
												<jsp:include page="../../common/page.jsp">  
													<jsp:param name="url" value="${pageUrl}" />      
												</jsp:include>  
												<!------------- 分页结束 -------------> 
											</td>
										</tr>
									</table>
								<c:if test="${message!=null}">
									<script type="text/javascript" >
										window.top.document.getElementById('mainFrame').src='${ctx}/role/role.do';
									</script>
								</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
			
		<form:form id="roleForm" name="roleForm" action="">
		</form:form>
		<script type="text/javascript">
		function modal(width,height,url){
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function confirmDelete(roleId){
			if(confirm("确定删除吗?")){
				document.roleForm.action="${ctx}/role/updateRoleInfoById.do?roleId="+roleId;
				document.roleForm.submit();
				return true;
			}else{
				return false;
			}
		}
	</script>
		<script src="${ctx}/js/common.js" type="text/javascript" ></script>
		
	</body>
</html>
