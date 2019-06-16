<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>协议招标管理查询</title>
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
										<span class="label label-primary">物资库存管理>>物资入库>>查询</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="storageHead" commandName="storageHead" id="storageHead" action="${ctx}/storage/query.do">
										<table id="queryTable" class="table table-condensed ">
											<tr>
												<th>入库单号</th>
												<td><form:input path="storage_no" id="storage_no" maxlength="32" cssClass="form-control input-sm"/></td>
												<th>入库日期</th>
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
													<button type="button" value="重置" onclick="resetControl('storageHead')" class="btn btn-primary btn-xs">重置 </button>
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
								<a class="btn btn-primary btn-xs" href='${ctx}/storage/editAndEcho.do'>新建入库</a>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th width="10%">序号</th>
											<th width="25%">入库单号</th>
											<th width="25%">入库日期</th>
											<th width="25%">总金额</th>
											<th width="15%">状态</th>
										</tr>
										<c:forEach var="t" items="${list }" varStatus="c">
											<tr>
												<td>${c.count }</td>
												<td><a href="${ctx}/storage/view.do?id=${t.id}">${t.storage_no }</a></td>
												<td><fmt:formatDate value="${t.entry_date }" pattern="yyyy-MM-dd" /></td>
												<td>${t.main_totalAmount}</td>
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
		<input type="text" id="storage_no" name="storage_no" value="${storageHead.storage_no}" class="form-control input-sm" /> 
		<input type="text" id="entry_date_begin" name="entry_date_begin" value="${storageHead.entry_date_begin}" class="form-control input-sm" /> 
		<input type="text" id="entry_date_end" name="entry_date_end" value="${storageHead.entry_date_end}" class="form-control input-sm" />
		<input type="text" id="state" name="state" value="${storageHead.state }"class="form-control input-sm">
	</form>
</body>
</html>