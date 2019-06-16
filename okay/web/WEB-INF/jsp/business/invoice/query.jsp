<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发票管理查询</title>
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
										<span class="label label-primary">付款管理>>发票登记>>查询</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="invoice" commandName="invoice" id="invoice" action="${ctx}/invoice/query.do">
										<table id="queryTable" class="table table-condensed ">
											<tr>
												<th>发票单号</th>
												<td><form:input path="invoiceNo" id="invoiceNo" maxlength="32" cssClass="form-control input-sm"/></td>
												<th>开票日期</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="billingStartDate" path="billingStartDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="billingEndDate" path="billingEndDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<input type="button" value="重置"  onclick="resetControl()" class="btn btn-primary btn-xs" />
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
								<security:authorize ifAllGranted="ROLE_INVOICE_ADD">
								<a class="btn btn-primary btn-xs" href='${ctx}/invoice/edit.do'>新建发票</a>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>序号</th>
											<th>发票单号</th>
											<th>开票日期</th>
											<th>供应商</th>
											<th>操作</th>
										</tr>
										<c:forEach var="t" items="${invoice.invoiceList }" varStatus="c">
											<tr>
												<td>${c.count }</td>
												<td><a href="${ctx}/invoice/view.do?id=${t.id}">${t.invoiceNo }</a></td>
												<td><fmt:formatDate value="${t.billingDate }" pattern="yyyy-MM-dd" /></td>
												<td>${t.supplier_name}</td>
												<td>
												<security:authorize ifAllGranted="ROLE_INVOICE_DELETE">
												<button class="btn btn-primary btn-xs" onclick="deleteInvoice('${t.id }');"><span class="glyphicon glyphicon-trash"></span>删除</button>
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
	<form id="condition" name="condition"  hidden="true" method="post">
	<input type="text" name="invoiceNo" value="${invoice.invoiceNo}">
	<input type="text" name="billingStartDate" value="${invoice.billingStartDate}">
	<input type="text" name="billingEndDate" value="${invoice.billingEndDate}">
	</form>
 <script type="text/javascript">
    function resetControl(){
  	  $("#invoiceNo").val("");
  	  $("#billingStartDate").val("");
  	  $("#billingEndDate").val("");
    }

 	function deleteInvoice(id){
		if(confirm("确定删除吗?")){	
			window.location.href='${ctx}/invoice/delete.do?id='+id;
		}
	} 
 </script>
</body>
</html>