<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>列表页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<script type="text/javascript">
			function queryList(){
				var workNo = document.getElementById("workNo").value;
				var realName = document.getElementById("realName").value;
				var position = document.getElementById("position").value;
				var roleName = document.getElementById("roleName").value;
				var companyId = document.getElementById("companyId").value;
				/* console.log("1111111111111");
				console.log("roleName",document.getElementById("roleName").value); */
				document.queryForm.action="${ctx}/user/selectUserInfoByCompanyId.do?companyId="+companyId+"&workNo="+workNo+"&realName="+realName+"&position="+position+"&roleName="+roleName;
				document.queryForm.submit();
			}
			function queryListAll(){
				var url ="${ctx}/user/exportUserInfoByCompanyId.do?";
				$("#condition input").each(function(){		
					url += $(this).attr("name")+"="
					url += $(this).val()+"&";
				}); 
				url=url.substring(0,url.length-1); 
				location.href=url;	 
			} 
		</script>
</head>

<body>
<span id="realNameL" style="display:none"><security:authentication property='principal.UserInfo.realName'/></span>
	<div id="context">
		<div class="container">
			<div class="row">
			<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title" style="margin-top: 5px;">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">查询用户</span></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form action="">
									<table id="queryTable" class="table table-condensed ">
										<tr>
											<th>工号</th>
											<td><input type="text" id="workNo" value="${workNo }" name="workNo" class="form-control input-sm"  style="width:100px"></td>
											<th>姓名</th>
											<td><input type="text" id="realName" value="${realName }" name="realName" class="form-control input-sm" style="width:100px"></td>
											<th>职位</th>
											<td><input type="text" id="position" value="${position }" name="position" class="form-control input-sm" style="width:100px"></td>
											<th>角色</th>
											<td><input type="text" id="roleName" value="${roleName }" name="roleName" class="form-control input-sm" style="width:100px"></td>
										</tr>
										<tr>
											<td colspan="10" id="tools">
												<input type="button" value="查询" class="btn btn-primary btn-xs" onclick="queryList()" /> 
												<input type="reset" value="重置" class="btn btn-primary btn-xs" />
												<input id="export" type="button" value="导出" class="btn btn-primary btn-xs" onclick="queryListAll()" />
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
								<security:authorize ifAllGranted="ROLE_SYS_USER_ADD">
								<c:if test="${companyId != null && '0' != companyId}"><button class="btn btn-primary btn-xs" onClick="modal(850,750,'${ctx}/user/tab.do?companyId=${companyId }');">新建用户</button></c:if>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 400px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>工号</th>
											<th>用户名</th>
											<th>姓名</th>
											<th>性别</th>
											<th>专业</th>
											<th>职位</th>
											<th>创建时间</th>
											<th>最后登录时间</th>
											<th>最后登录IP</th>
											<th>状态</th>
											<th colspan="2">操作</th>
										</tr>
										<c:forEach items="${userInfoList}" var="userInfo">
										<tr>
											<td>${userInfo.workNo }</td>
											<td>${userInfo.user.userName }</td>
											<td><a onClick="modal(850,650,'${ctx}/user/viewTab.do?userId=${ userInfo.user.userId}&userInfoId=${userInfo.userInfoId }');">${userInfo.realName }</a></td>
											<c:if test="${userInfo.sex==1 }"><td>男</td></c:if>
											<c:if test="${userInfo.sex==0 }"><td>女</td></c:if>
											<td>${userInfo.specialty }</td>
											<td>${userInfo.position }</td>
											<td>
												<fmt:formatDate value="${userInfo.createTime}"  /> 
											</td>
											<td>
												<fmt:formatDate value="${userInfo.lastLoginTime }" pattern="yyyy-MM-dd"/>
											</td>
											<td>${userInfo.lastLoginIP }</td>
											<c:if test="${userInfo.user.use==true }"><td><span class="label label-success">可用</span></td></c:if>
											<c:if test="${userInfo.user.use==false }"><td><span class="label label-danger">禁用</span></td></c:if>
											<td>
											<security:authorize ifAllGranted="ROLE_SYS_USER_MOD">
												<button class="btn btn-primary btn-xs" onClick="modal(850,750,'${ctx}/user/tab.do?companyId=${companyId }&userInfoId=${userInfo.userInfoId }&userId=${userInfo.user.userId }');"><span class="glyphicon glyphicon-pencil"></span>编辑</button>
												</security:authorize>
												<security:authorize ifAllGranted="ROLE_SYS_USER_DEL">
												<a class="btn btn-primary btn-xs" href="${ctx}/user/deleteUser.do?companyId=${companyId }&userId=${userInfo.user.userId }" onClick="return confirms();"><span class="glyphicon glyphicon-trash"></span>删除</a>
												</security:authorize>
												<security:authorize ifAllGranted="ROLE_SYS_USER_DISABLE">
												<c:if test="${userInfo.user.use==true }">
													<a class="btn btn-primary btn-xs" href="${ctx}/user/disableUser.do?companyId=${companyId }&userId=${userInfo.user.userId }" onClick="return confirms();"><span class="glyphicon glyphicon-off"></span>禁用</a>
												</c:if>
												<c:if test="${userInfo.user.use==false }">
													<a class="btn btn-primary btn-xs" href="${ctx}/user/enableUser.do?companyId=${companyId }&userId=${userInfo.user.userId }" onClick="return confirms();"><span class="glyphicon glyphicon-off"></span>启用</a>
												</c:if>
												</security:authorize>
												<security:authorize ifAllGranted="ROLE_SYS_USER_INIT">
													<a class="btn btn-primary btn-xs" href="${ctx}/user/initPassword.do?companyId=${companyId}&userId=${userInfo.user.userId }" onClick="return confirms();"><span class="glyphicon glyphicon-refresh"></span>重置密码</a>
												</security:authorize>
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
									<input id="companyId" name="companyId" value="${companyId }"/>
									<input id="workNo" name="workNo" value="${workNo }"/>
									<input id="realName" name="realName" value="${realName }"/>
									<input id="position" name="position" value="${position }"/>
									<input id="roleName" name="roleName" value="${roleName }"/>
								</form>
								<c:if test="${ not empty message}"> 
									<script type="text/javascript" >
										window.top.document.getElementById('mainFrame').src='${ctx}/user/user.do?companyId=${companyId }&workNo=${workNo}&realName=${realName}&position=${position}&roleName=${roleName}';
									</script>
								</c:if> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form:form id="queryForm" name="queryForm" action="">
		</form:form>
	<script type="text/javascript">
		function modal(width,height,url){
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function printuserInfo(){
			$.post("${ctx}/user/userInfoBreak.do",{},function(result){
				alert(result);
			});
		}
		$(function(){
			var realName=$("#realNameL").html();
			if(realName == "系统管理员"){
				$("#quit").show();
			}else{
				$("#quit").hide();
			}
		});
	</script>
</body>
</html>