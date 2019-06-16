<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询采购计划</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
</head>
<script type="text/javascript">
	function delPurchase(id) {
		if (confirm("确定要删除吗?")) {
			$.post("${ctx}/purchase/delPur.do", {
				"id" : id
			}, function(json) {
				alert("删除成功");
				location.reload();
			});
		}
	}
</script>
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
									<span class="label label-primary">物资计划管理>>年度物资采购计划>>查询</span></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="purchase" commandName="purchase" id="purchase" action="${ctx}/purchase/query.do">
										<c:if test="${!isManager}">
											<input type="hidden" name="departmentId" value="${purchase.departmentId}"/>
										</c:if>
										<table id="queryTable" class="table table-condensed ">
											<tr id="t">
												<th>计划编号</th>
												<td><form:input path="plan_no" id="plan_no" maxlength="64" cssClass="form-control input-sm" /></td>
												<th> 年份</th>
												<td <c:if test="${!isManager}">colspan="3"</c:if>><form:input id="year" path="year" maxlength="64" cssClass="form-control input-sm" /></td>
												<c:if test="${isManager}">
													<th>使用部门</th>
													<td>
														<html:select id="departmentId" name="departmentId" classes="form-control input-sm">
															<html:businessOptions function="company" condition="" checkValue="${purchase.departmentId}"></html:businessOptions>
														</html:select>
													</td>
												</c:if> 
											</tr>
											<tr>
												<td colspan="6" id="tools"><input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<button type="button" value="重置" onclick="resetControl('purchase')" class="btn btn-primary btn-xs">重置 </button>
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
								<security:authorize ifAnyGranted="ROLE_PURCHASE_ADD">
								<a class="btn btn-primary btn-xs" href='${ctx}/purchase/purchaseEdit.do'>新建计划</a>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>计划编号</th>
											<th>使用部门</th>
											<th>年份</th>
											<th>制单人</th>
											<th>制单日期</th>
											<th>采购计划总额</th>
											<th>操作</th>
										</tr>
										<c:forEach items="${PurchaseList}" var="pl">
											<tr>
												<td><a href="${ctx}/purchase/view.do?id=${pl.id}">${pl.plan_no}</a></td>
												<td>${pl.company_name}</td>
												<td>${pl.year}</td>
												<td>${pl.realName}</td>
												<td><fmt:formatDate value="${pl.input_date}" pattern="yyyy-MM-dd" /></td>
												<td>${pl.all_amount}元</td>
												<td>
												<security:authorize ifAnyGranted="ROLE_PURCHASE_DEL">
													<button class="btn btn-primary btn-xs" onclick="delPurchase('${pl.id}')">
														<span class="glyphicon glyphicon-trash"></span> 删除
													</button>
												</security:authorize>
												</td>
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
		<input type="text" id="plan_no" name="plan_no" value="${purchase.plan_no}" class="form-control input-sm" /> 
		<input type="text" id="year" name="year" value="${purchase.year}" class="form-control input-sm" /> 
		<input type="text" id="departmentId" name="departmentId" value="${purchase.departmentId}" class="form-control input-sm" />
	</form>

</body>
</html>