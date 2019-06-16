<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>直达现场管理查询</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
</head>
<body>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
										<span class="label label-primary">物资库存管理>>直达现场>>查询</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="direct" commandName="direct" id="direct" action="${ctx}/direct/query.do">
										<table id="queryTable" class="table table-condensed ">
											<tr>
												<th>直达现场单号</th>
												<td><form:input path="direct_no" id="direct_no" maxlength="32" cssClass="form-control input-sm"/></td>
												<th>制单日期</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="entry_date_begin" path="entry_date_begin" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="entry_date_end" path="entry_date_end" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th>状态</th>
												<td>
													<form:select name="state" path="state" class="form-control input-sm " >
														<form:option value="">全部</form:option>
														<form:option value="新建">新建</form:option>
														<form:option value="待审批">待审批</form:option>
														<form:option value="审批通过">审批通过</form:option>
														<form:option value="审批驳回">审批驳回</form:option>
													</form:select>
												</td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<button type="button" value="重置" onclick="resetControl('direct')" class="btn btn-primary btn-xs">重置 </button>
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
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> 
									<span class="icon"><span class="glyphicon glyphicon-file"></span></span>
								</a>
								<security:authorize ifAnyGranted="ROLE_DIRECT_ADD">
								<a class="btn btn-primary btn-xs" href='${ctx}/direct/editAndEcho.do'>新建直达现场</a>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th width="10%">序号</th>
											<th width="35%">直达现场单号</th>
											<th width="35%">制单日期</th>
											<th width="20%">状态</th>
										</tr>
										<c:forEach var="t" items="${list }" varStatus="c">
											<tr>
												<td>${c.count }</td>
												<td><a href="${ctx}/direct/view.do?id=${t.id}">${t.direct_no }</a></td>
												<td><fmt:formatDate value="${t.entry_date }" pattern="yyyy-MM-dd" /></td>
												<td>${t.state}</td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!------------- 分页开始 ------------->
								<table class="table table-condensed" id="pageTools">
									<tr>
										<td>
											<jsp:include page="../../../common/page.jsp">
												<jsp:param name="url" value="${pageUrl}" />
											</jsp:include>
										</td>
									</tr>
								</table>
								<!------------- 分页结束 ------------->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<form id="condition" name="condition" hidden="true" method="post">
		<input type="text" id="direct_no" name="direct_no" value="${direct.direct_no}" /> 
		<input type="text" id="entry_date_begin" name="entry_date_begin" value="${direct.entry_date_begin}"/> 
		<input type="text" id="entry_date_end" name="entry_date_end" value="${direct.entry_date_end}" />
		<input type="text" id="state" name="state" value="${direct.state}" /> 
	</form>
</body>
</html>