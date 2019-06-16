<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>查询采购订单</title>
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
									<span class="label label-primary">采购订单管理>>物资采购订单>>查询</span></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="order" commandName="order" id="order" action="${ctx}/order/query.do">
										<table id="queryTable" class="table table-condensed ">
											<tr >
												<th>订单编号</th>
												<td><form:input path="order_no" id="order_no" maxlength="64" cssClass="form-control input-sm" /></td>
												<th>供应商</th>
												<td><form:input path="supplier_name" id="supplier_name" maxlength="64" cssClass="form-control input-sm" /></td>
											</tr>
											<tr >	
												<th>订单状态</th>
												<td><form:select path="state" id="state" cssClass="form-control input-sm" >
														<form:option value="">全部</form:option>
														<form:option value="新建">新建</form:option>
														<form:option value="待审批">待审批</form:option>
														<form:option value="审批通过">审批通过</form:option>
														<form:option value="审批退回">审批退回</form:option>
													</form:select>
												</td>
												<th>完结状态</th>
												<td><form:select path="order_state" id="order_state" cssClass="form-control input-sm" >
														<form:option value="">全部</form:option>
														<form:option value="未完结">未完结</form:option>
														<form:option value="已完结">已完结</form:option>
													</form:select>
												</td>
											</tr>
											<tr >
												<th>是否紧急</th>
												<td><form:select path="urgent_type" id="urgent_type" cssClass="form-control input-sm" >
														<form:option value="">全部</form:option>
														<form:option value="正常">正常</form:option>
														<form:option value="紧急">紧急</form:option>
													</form:select>
												<th>日期</th>
												<td >
													<div class="input-group">
														<form:input type="text" id="start_sign_date" path="start_sign_date" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="end_sign_date" path="end_sign_date" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<button type="button" value="重置" onclick="resetControl('order')" class="btn btn-primary btn-xs">重置 </button>
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
								<security:authorize ifAnyGranted="ROLE_ORDER_ADD">
								<a class="btn btn-primary btn-xs" href='${ctx}/order/orderEditFrame.do'>新建框架订单</a>
								<a class="btn btn-primary btn-xs" href='${ctx}/order/orderEditContract.do'>新建合同订单</a>
								<a class="btn btn-primary btn-xs" href='${ctx}/order/orderEditPurchase.do'>新建审批表订单</a>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>序号</th>
											<th>订单编号</th>
											<th>供应商</th>
											<th>日期</th>
											<th>订单状态</th>
											<th>完结状态</th>
											<th>是否紧急</th>
										</tr>
										<c:forEach items="${orderList}" var="ol" varStatus="v">
											<tr>
												<td>${v.count}</td>
												<td><a href="${ctx}/order/view.do?id=${ol.id}">${ol.order_no}</a></td>
												<td>${ol.supplier_name}</td>
												<td><fmt:formatDate value="${ol.sign_date}" pattern="yyyy-MM-dd" /></td>
												<td>${ol.state}</td>
												<td>${ol.order_state}</td>
												<td>${ol.urgent_type}</td>
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
		<input type="text" id="order_no" name="order_no" value="${order.order_no}" /> 
		<input type="text" id="supplier_name" name="supplier_name" value="${order.supplier_name}"/> 
		<input type="text" id="urgent_type" name="urgent_type" value="${order.urgent_type}" />
		<input type="text" id="state" name="state" value="${order.state}" /> 
		<input type="text" id="start_sign_date" name="start_sign_date" value="${order.start_sign_date}"/> 
		<input type="text" id="end_sign_date" name="end_sign_date" value="${order.end_sign_date}" />
	</form>

</body>
</html>