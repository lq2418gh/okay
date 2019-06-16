<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>日志列表页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
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
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">查询日志</span></a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<form:form commandName="logForm" action="${ctx}/log/query.do?logType=${logType }" method="post">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th>日志名称</th>
												<td><form:input type="text" id="logName" path="logName" cssClass="form-control input-sm" /></td>
												<th>操作人</th>
												<td><form:input type="text" id="logUser" path="logUser" cssClass="form-control input-sm" /></td>
												<th>操作日期</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="beginTime" path="beginTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group" style="margin-left: 5px;">
														<form:input type="text" id="endTime" path="endTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<input type="submit" value="查询" class="btn btn-primary btn-xs" /> 
													<input type="reset" value="重置"  onclick="resetControl()" class="btn btn-primary btn-xs" />
												</td>
											</tr>
										</table>
										</form:form>
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
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body">
										<table class="table table-condensed table-hover">
											<tr>
												<!-- <th>日志编号</th> -->
												<th>记录日期</th>
												<th>日志名称</th>
												<th>操作人</th>
												<th>操作IP</th>
											</tr>
											<c:forEach items="${logList}" var="log">
											<tr <c:if test="${log.logName=='系统异常' or log.logName=='登录失败'  }">class="danger"</c:if><c:if test="${log.logName=='服务器启动' }">class="success"</c:if><c:if test="${log.logName=='登录成功' }">class="success"</c:if>>
												<td>${fn:substring(log.logDate,0,16)}</td>
												<td><a data-toggle="modal" data-target="#myModal" onclick="logInfo('${log.logId }');">${log.logName }</a></td>
												<td>${log.logUser }</td>
												<td>${log.logIP }</td>
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
								</div>
	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		<form id="condition" name="condition"  hidden="true" method="post">
			<input type="text" name="logName" value="${logForm.logName}">
			<input type="text" name="logUser" value="${logForm.logUser}">
			<input type="text" name="beginTime" value="${logForm.beginTime}">
			<input type="text" name="endTime" value="${logForm.endTime}">
			<input type="text" name="logType" value="${logType}">
		</form>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">日志内容</h4>
					</div>
					<div class="modal-body" id="contexts"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function logInfo(v){
				$.ajax({
				          type: "POST",
				          url: "${ctx}/log/logInfo.do",
				          data: {logId:v},
				          dataType: "text",
				          success: function(data){
		                  	 $('#contexts').empty();   //清空resText里面的所有内容
		                     $('#contexts').html(data);
				          }
				 });
			}
			$('.form_datetime').datetimepicker({
		        language:  'zh-CN',
				format: "yyyy-mm-dd hh:ii",
				autoclose: 1,
				todayHighlight: 1,
				pickerPosition: "bottom-right"
		    });
		</script>
	</body>
</html>
