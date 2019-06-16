<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询采购订单</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
</head>
<script type="text/javascript">
	function getCommodityId(){
		var checkRadio = $("input[name='radioId']:checked");
		if (checkRadio.length == 0) {
			alert("请选择采购订单！");
			return;
		}
		var checkIndex = checkRadio.attr("index");
		var order = {};
		order.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
		order.order_no = $(".dataTable [name='order_no']:eq(" + checkIndex + ")").val();
		order.supplier_name = $(".dataTable [name='supplier_name']:eq(" + checkIndex + ")").val();
		order.frame_no = $(".dataTable [name='frame_no']:eq(" + checkIndex + ")").val();
		order.contract_no = $(".dataTable [name='contract_no']:eq(" + checkIndex + ")").val();
		var handleOrder = window.top.mainFrame.handleOrder;// handleWarehouse方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
		if(handleOrder && typeof(handleOrder) == "function"){
			handleOrder(order);
		}
		modalClose();
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
									<span class="label label-primary">采购订单管理>>物资采购订单>>查询</span></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="order" commandName="order" id="order" action="${ctx}/order/publicOrder.do">
										<table id="queryTable" class="table table-condensed ">
											<tr id="t">
												<th>订单编号</th>
												<td><form:input path="order_no" id="order_no" maxlength="64" cssClass="form-control input-sm" /></td>
												<th>供应商</th>
												<td><form:input path="supplier_name" id="supplier_name" maxlength="64" cssClass="form-control input-sm" /></td>
											</tr>
											<tr id="t">
												<th>是否紧急</th>
												<td><form:select path="urgent_type" id="urgent_type" cssClass="form-control input-sm" >
														<form:option value="">全部</form:option>
														<form:option value="正常">正常</form:option>
														<form:option value="紧急">紧急</form:option>
													</form:select>
												<th>日期</th>
												<td colspan="3" >
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
													<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.parent.parent.document.getElementById('butclose').click()" />
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
								<input type="button" value="确认"  onClick="getCommodityId()" class="btn btn-primary btn-xs" />
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover dataTable">
										<tr>
											<th></th>
											<th>序号</th>
											<th>订单编号</th>
											<th>供应商</th>
											<th>日期</th>
											<th>订单状态</th>
											<th>是否紧急</th>
										</tr>
										<c:forEach items="${orderList}" var="ol" varStatus="v">
												<input type="hidden" name="frame_no" value="${ol.frame_no }">
												<input type="hidden" name="contract_no" value="${ol.contract_no }">
											<tr>
												<td><input type="radio" class="form-control input-sm" name="radioId" value="${ol.id}" index="${v.index}"/></td>
												<td width="6%"><input type="text" class="form-control input-sm" name="count" value="${v.count}" readonly style="width: 100%;text-align: center"/></td>
												<td width="19%"><a><input type="text" class="form-control input-sm" name="order_no" value="${ol.order_no}" readonly style="width: 100%"/></a></td>
												<td width="19%"><input type="text" class="form-control input-sm" name="supplier_name" value="${ol.supplier_name}" readonly style="width: 100%"/></td>
												<td width="19%"><input type="text" class="form-control input-sm" name="sign_date" value='<fmt:formatDate value="${ol.sign_date}" pattern="yyyy-MM-dd" />' readonly style="width: 100%"/></td>
												<td width="19%"><input type="text" class="form-control input-sm" name="state" value="${ol.state}" readonly style="width: 100%"/></td>
												<td width="19%"><input type="text" class="form-control input-sm" name="urgent_type" value="${ol.urgent_type}" readonly style="width: 100%"/></td>
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