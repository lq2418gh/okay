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
										<span class="label label-primary">采购申请管理>>物资采购审批表>>查询</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="materialPurchaseHead" commandName="materialPurchaseHead" id="materialPurchaseHead" action="${ctx}/materialPurchase/query.do">
										<c:if test="${!isManager}">
											<input type="hidden" name="centralized_department" value="${materialPurchaseHead.centralized_department}"/>
										</c:if>
										<table id="queryTable" class="table table-condensed ">
											<tr>
												<th>采购表编码</th>
												<td><form:input path="purchase_no" id="purchase_no" maxlength="64" cssClass="form-control input-sm"/></td>
												<th>填报日期</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="inputDateBegin" path="inputDateBegin" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="inputDateEnd" path="inputDateEnd" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<c:if test="${isManager}">
													<th>归口部门</th>
													<td>
														<html:select id="centralized_department" name="centralized_department" classes="form-control input-sm">
															<html:businessOptions function="company" condition="" checkValue="${materialPurchaseHead.centralized_department}"></html:businessOptions>
														</html:select>
													</td>
												</c:if>
											</tr>
											<tr>
												<th>采购表状态</th>
												<td>
													<form:select name="state" path="state" class="form-control input-sm " >
														<form:option value="">全部</form:option>
														<form:option value="新建">新建</form:option>
														<form:option value="待审批">待审批</form:option>
														<form:option value="审批通过">审批通过</form:option>
														<form:option value="审批退回">审批退回</form:option>
													</form:select>
												</td>
												<th>采购时限</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="ptlBeginTime" path="ptlBeginTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="ptlEndTime" path="ptlEndTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th>采购类型</th>
												<td>
													<form:select name="purchase_type" path="purchase_type" class="form-control input-sm " >
														<form:option value="">请选择</form:option>
														<form:option value="normal">正常采购</form:option>
														<form:option value="voluntarily">自行采购</form:option>
													</form:select>
												</td>
											</tr>
											<tr>
												<td colspan="6" id="tools"><input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<button type="button" value="重置" onclick="resetControl('materialPurchaseHead')" class="btn btn-primary btn-xs">重置 </button>
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
								<security:authorize ifAnyGranted="ROLE_MATERIALPURCHASE_ADD">
								<a class="btn btn-primary btn-xs" href='${ctx}/materialPurchase/editAndEcho.do?type=normal'>新建正常采购审批表</a>
								<a class="btn btn-primary btn-xs" href='${ctx}/materialPurchase/editAndEcho.do?type=voluntarily'>新建自行采购审批表</a>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>采购表编号</th>
											<th>归口部门</th>
											<th>填报日期</th>
											<th>填报人</th>
											<th>采购时限</th>
											<th>采购类型</th>
											<th>采购表状态</th>
											<security:authorize ifAnyGranted="ROLE_MATERIALPURCHASE_DEL">
											<th>操作</th>
											</security:authorize>
										</tr>
										<c:forEach var="mp" items="${MaterialPurchaseHeadList }">
											<tr>
												<td><a href="${ctx}/materialPurchase/view.do?id=${mp.id}">${mp.purchase_no }</a></td>
												<td>${mp.company_name }</td>
												<td><fmt:formatDate value="${mp.input_date}" pattern="yyyy-MM-dd" /></td>
												<td>${mp.realName }</td>
												<td><fmt:formatDate value="${mp.purchase_time_limit}" pattern="yyyy-MM-dd" /></td>
												<td>
												<c:if test="${mp.purchase_type eq 'normal' }">
												正常采购
												</c:if>
												<c:if test="${mp.purchase_type eq 'voluntarily' }">
												自行采购
												</c:if>
												</td>
												<td>${mp.state }</td>
												<security:authorize ifAnyGranted="ROLE_MATERIALPURCHASE_DEL">
													<td>
														<c:if test="${mp.state eq '新建' }">
															<a class="btn btn-primary btn-xs" onclick="deleteMP('${mp.id }')">
															   <span class="glyphicon glyphicon-pencil"></span> 删除
															</a>
														</c:if>
													</td>
												</security:authorize>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!------------- 分页开始 ------------->
								<table class="table table-condensed" id="pageTools">
									<tr>
										<td>
											<jsp:include page="../../common/page.jsp">
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
		<input type="text" id="purchase_no" name="purchase_no" value="${materialPurchaseHead.purchase_no}" class="form-control input-sm" /> 
		<input type="text" id="state" name="state" value="${materialPurchaseHead.state}" class="form-control input-sm" /> 
		<input type="text" id="centralized_department" name="centralized_department" value="${materialPurchaseHead.centralized_department}" class="form-control input-sm" />
		<input type="text" id="inputDateBegin" name="inputDateBegin" value="${materialPurchaseHead.inputDateBegin }"class="form-control input-sm">
		<input type="text" id="inputDateEnd" name="inputDateEnd" value="${materialPurchaseHead.inputDateEnd }"class="form-control input-sm">
		<input type="text" id="ptlBeginTime" name="ptlBeginTime" value="${materialPurchaseHead.ptlBeginTime }"class="form-control input-sm">
		<input type="text" id="ptlEndTime" name="ptlEndTime" value="${materialPurchaseHead.ptlEndTime }"class="form-control input-sm">
	</form>
</body>
<script type="text/javascript">
function deleteMP(id){
	if (confirm("确定要删除吗?")) {
		location.href='${ctx}/materialPurchase/deleteMaterialPurchase.do?id='+id;
	}
}
</script>
</html>