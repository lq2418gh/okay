<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看采购计划明细</title>
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
										<span class="label label-primary">物资计划管理>>年度物资采购计划>>查看</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<table id="queryTable" class="table table-condensed">
										<tr>
											<th>计划编号</th>
											<td>${pur.plan_no}</td>
											<th>使用部门</th>
											<td>${pur.company_name}</td>
											<th>制单人</th>
											<td>${pur.realName}</td>
										</tr>
										<tr>
											<th>制单日期</th>
											<td><fmt:formatDate value="${pur.input_date}" pattern="yyyy-MM-dd" /></td>
											<th>年份</th>
											<td>${pur.year}</td>
											<th></th>
											<td></td>
										</tr>
										<tr>
											<td colspan="6" id="tools">
												<security:authorize ifAnyGranted="ROLE_PURCHASE_EDIT">
												<a class="btn btn-primary btn-xs" href="${ctx}/purchase/purchaseEdit.do?id=${pur.id}">
											   		 编辑
											   	</a>
											   	</security:authorize>
											   	<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_purchasePlan&fk_id=${pur.id }&importNo=${pur.plan_no }" >文件管理</a>
												<a class="btn btn-primary btn-xs" href='${ctx}/purchase/query.do'>返回</a>
											</td>
										</tr>
									</table>
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
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="max-height: 400px; overflow: auto">
									<table id="mxtable" class="table table-striped table-condensed table-hover">
										<tr>
											<th>序号</th>
											<th>物资编码</th>
											<th>物资名称</th>
											<th>计量单位1</th>
											<th>规格型号</th>
											<th>需求数量</th>
											<th>库存</th>
											<th>用途</th>
											<th>预算科目</th>
											<th>预算金额</th>
											<th>需求日期</th>
										</tr>
										<c:forEach items="${pur.purchaseDetailList}" var="s" varStatus="v">
											<tr>
												<td>${s.purchaseDetail_row_no}</td>
												<td>${s.code }</td>
												<td>${s.name }</td>
												<td>${s.unit }</td>
												<td>${s.spec }</td>
												<td>${s.demand_quantity}</td>
												<td>${s.stock}</td>
												<td>
							                    	<c:if test="${fn:length(s.purpose) > 5}" var="length">
							                     		<a data-toggle="tooltip" title="<c:out value='${s.purpose}'/>" data-original-title=""><c:out value='${fn:substring(s.purpose, 0, 5)}'/>...</a>
							                     	</c:if>
							                     	<c:if test="${!length }">
							                     		${s.purpose}
							                     	</c:if>
						                     	</td>
												<td>${s.bud_ac_name }</td>
												<td>${s.budget_amount }元</td>
												<td>${s.demand_date }月</td>
											</tr>
										</c:forEach>
										<tr>
											<td colspan="9" style="text-align: right">合计：</td>
											<td>${pur.all_amount }元</td>
											<td></td>
										</tr>
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
