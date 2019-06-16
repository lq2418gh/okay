<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>列表页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> <span class="icon"><span class="glyphicon glyphicon-file"></span></span></a>
								<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.parent.document.getElementById('butclose').click()" />
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 350px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>审核名称</th>
											<th>审核人</th>
											<th>审核意见</th>
											<th>审核结论</th>
											<th>审核时间</th>
										</tr>
										<c:forEach items="${records}" var="r">
										<tr>
											<td>${r.process_name }</td>
											<td>${r.CHECK_USERNAME }</td>
											<td>${r.CHECK_SUGGESTION }</td>
											<td>${r.CHECK_RESULT }</td>	
											<td>
											<fmt:formatDate value="${r.CHECK_TIME}" pattern="yyyy-MM-dd HH:mm:ss"/>
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
</body>
</html>