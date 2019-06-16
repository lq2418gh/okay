<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" 
"http://www.w3.org/TR/html4/frameset.dtd">
<html>
	<head>
		<title>角色列表页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<style>
			.panel-body{height:500px}
			@media (min-width: 768px) and (max-width: 979px) {
				.span6{height:480px}
				#accordion{height:480px}
				.panel{height:480px}
				.panel-body{height:450px}
			}
			@media (min-width: 980px) {
				.firstD{height:530px}
				.secondD{height:180px}
				#accordion2{height:180px}
				#accordion2 .panel{height:180px}
				#accordion2 .panel-body{height:150px}
			}
		</style>
	</head>
	<body>
<div id="context">
	<div class="container">
		<div class="row">
			<div class="span6 firstD">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title" style="margin-top: 3px;">
								<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary"><span class="glyphicon glyphicon-search"></span> 待审任务</span></a>
							</h4>
						</div>
           				<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>序号</th>
											<th>审批类型</th>
											<th>单据编号</th>
											<th>项目名称</th>
											<th>角色名称</th>
											<th>待审名称</th>
											<th>操作</th>
										</tr>
										<c:forEach items="${taskProcessList}" var="task" varStatus="s"  >
										<tr>
											<td>${s.count}</td>
											<td>${task.workType}</td>
											<td>${task.workNo}</td>
              								<td>${task.projectName}</td>
              								<td>${task.roleName}</td>
											<td>${task.processName}</td>
											<td>
												<a class="btn btn-primary btn-xs" href="${ctx}${task.connections}${task.workNo}">查看</a>
											</td>
										</tr>
									</c:forEach>
        							 </table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="span6 secondD">
					<div class="panel-group" id="accordion2">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title" style="margin-top: 3px;">
									<a id="example" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" style="display: block;"><span class="label label-primary"><span class="glyphicon glyphicon-search"></span> 待办任务</span></a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 145px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
												<th>序号</th>
												<th>单据类型</th>
												<th>单据编号</th>
												<th>项目名称</th>
												<th>单据状态</th>
												<th>操作</th>
										</tr>
										<c:forEach items="${taskBackLogList}" var="backLog" varStatus="s"  >
											<tr>
												<td>${ s.index + 1}</td>
												<td>${backLog.workType eq '质检结果ck' ? '质检结果' : backLog.workType}</td>
												<td>${backLog.workNo}</td>
												<td>${backLog.projectName}</td>
												<td>${backLog.workState}</td>
												<td>
	              									<c:if test="${backLog.workType=='采办合同' && backLog.workState=='审核通过'}"> 
														<a class="btn btn-primary btn-xs" href="${ctx}/business/contract/view.do?contractNo=${backLog.workNo}">签订合同</a>
	              									</c:if>
              									</td>
											</tr>
										</c:forEach>	
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
		<c:if test="${message!=null}">
			<script type="text/javascript" >alert('${message}');</script>
		</c:if>
		<c:if test="${messageInvoice!=null}">
			<script type="text/javascript" >alert('${messageInvoice}');</script>
		</c:if>
	<script type="text/javascript">
		function modal(width,height,url){
			window.document.getElementById("a").src=url;
			window.document.getElementById("modal-dialog").style.width=width+"px";
			window.document.getElementById("modal-body").style.height=height+"px";
			window.document.getElementById("modal").click();
		}
	</script>
	<form id="condition" name="condition" hidden="true" method="post">
		<input type="text" id="allocationNo"  name="allocationNo" value="${allocQuery.allocationNo}" class="form-control input-sm" />
		<input type="text" id="oldProjectNo" name="oldProjectNo" value="${allocQuery.oldProjectNo}" class="form-control input-sm" />
		<input type="text" id="projectNo"  name="projectNo" value="${allocQuery.projectNo}"  class="form-control input-sm" />
		<input type="text" id="state" name="state" value="${allocQuery.state}"  class="form-control input-sm" />
		<input type="text" id="inputUsername"  name="inputUsername" value="${allocQuery.inputUsername}"  class="form-control input-sm" />
		<input type="text" id="beginTime" name="beginTime" value="${allocQuery.beginTime}"  class="form-control input-sm" />
		<input type="text" id="endTime"  name="endTime" value="${allocQuery.endTime}"  class="form-control input-sm" />
	</form>
	<!-- Modal -->
	<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none"></button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="modal-dialog" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display: none">关闭</button>
				</div>
				<div class="modal-body" id="modal-body">
				<iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	</body>
</html>