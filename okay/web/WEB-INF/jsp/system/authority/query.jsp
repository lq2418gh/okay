<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>列表页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	<script type="text/javascript">
		function createAuth(){
			var parentId = "${parentId}";
			modal(850,650,'${ctx}/authority/edit.do?partentId='+parentId);
		}
		function editAuthInfo(authId,parentId){
			modal(850,650,'${ctx}/authority/edit.do?partentId='+parentId+'&authId='+authId);
		}
		$(function(){
			var realName=$("#realName").html();
			if(realName == "系统管理员"){
				$("#new").show();
				$("button[name='edit']").show();
				$("a[name='del']").show();
			}else{
				$("#new").hide();
				$("button[name='edit']").hide();
				$("a[name='del']").hide();
			}
		});
	</script>
</head>
<body>
<span id="realName" style="display:none"><security:authentication property='principal.UserInfo.realName'/></span>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> <span class="icon"><span class="glyphicon glyphicon-file"></span></span></a>
								<c:if test="${parentId != ''}">
									<button id="new" class="btn btn-primary btn-xs" onclick="createAuth();">新建权限</button>
								</c:if>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 350px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>权限编码</th>
											<th>权限名称</th>
											<th>排序</th>
											<th colspan="2">操作</th>
										</tr>
										<c:forEach items="${authListByPage}" var="auth">
										<tr>
											<td><a onclick="modal(850,650,'${ctx}/authority/view.do?authId=${auth.authId}');">${auth.authCode}</a></td>
											<td>${auth.authName}</td>
											<td>${auth.rowOrder}</td>
											<td>
												<button name="edit" class="btn btn-primary btn-xs" onclick="editAuthInfo('${auth.authId}','${auth.parentId}')"><span class="glyphicon glyphicon-pencil"></span>编辑</button>
												<a name="del" class="btn btn-primary btn-xs" href="${ctx}/authority/deleteAuth.do?authId=${auth.authId}&parentId=${parentId}" ><span class="glyphicon glyphicon-trash"></span>删除</a>
											</td>
										</tr>
										</c:forEach>
									</table>
								</div>
								<table class="table table-condensed" id="pageTools">
									<tr>
										<td>
											<!------------- 分页开始 ------------->	
											<jsp:include page="../../common/page.jsp">  
												<jsp:param name="url" value="${pageUrl}" />      
											</jsp:include>  
											<!------------- 分页结束 -------------> 
										</td>
									</tr>
								</table>
								<!-- 隐藏条件 -->
								<form id="condition" name="condition"  hidden="true" method="post">
									<input id="parentId" name="parentId" value="${parentId }"/>
								</form>
								<c:if test="${ not empty message}"> 
									<script type="text/javascript" >
										window.top.document.getElementById('mainFrame').src='${ctx}/authority/authframe.do?parentId=${parentId}';
									</script>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function modal(width,height,url){
			//window.top.document.getElementById("modal-dialog").style.marginTop=margin;
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
	</script>
</body>
</html>