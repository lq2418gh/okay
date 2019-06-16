<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>查看采购订单详情</title>
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
										<span class="label label-primary">采购订单管理>>物资采购订单>>查看</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<table id="queryTable" class="table table-condensed">
										<tr>
											<th>订单编号</th>
											<td>${order.order_no}</td>
											<th>是否紧急</th>
											<td>${order.urgent_type}</td>
											<th>采购员</th>
											<td>${order.realName}</td>
											<th>订单状态</th>
											<td>${order.state}</td>
										</tr>
										<tr>
											<th>
												<c:if test="${'frame' eq type || 'purchase' eq type}">协议编号</c:if>
												<c:if test="${'contract' eq type }">合同编号</c:if>
											</th>
											<td>
												<c:if test="${'frame' eq type || 'purchase' eq type }">${order.frame_no }</c:if>
												<c:if test="${'contract' eq type }">${order.contract_no }</c:if>
											</td>
											<th>总金额</th>
											<td>${order.order_amount}</td>
											<th>日期</th>
											<td><fmt:formatDate value='${order.sign_date}' pattern='yyyy-MM-dd'/></td>
											<th>完结状态</th>
											<td>${order.order_state}</td>
										</tr>
										<tr>
											<th>买方电话</th>
											<td>${order.buyer_tel}</td>
											<th>买方传真</th>
											<td>${order.buyer_fax}</td>
											<th>买方邮编</th>
											<td>${order.buyer_zip_code}</td>
											<th>买方地址</th>
											<td>${order.buyer_address}</td>
										</tr>
										<tr>
											<th>供应商</th>
											<td>${order.supplier.supplier_name}</td>
											<th>银行账号</th>
											<td>${order.bank_account_number}</td>
											<th>卖方联系人</th>
											<td>${order.seller_contact}</td>
											<th>卖方电话</th>
											<td>${order.seller_tel}</td>
										</tr>
										<tr>
											<th>卖方传真</th>
											<td>${order.seller_fax}</td>
											<th>交货地联系人</th>
											<td>${order.delivery_contact}</td>
											<th>交货地电话</th>
											<td>${order.delivery_call}</td>
											<th></th>
											<td></td>
										</tr>
										<tr>
											<th>卖方地址</th>
											<td colspan="3" >${order.seller_address}</td>
											<th>交货地址</th>
											<td colspan="3" >${order.delivery_address}</td>
											
										</tr>
										<c:if test="${'purchase' eq type }">
										<tr>
											<th>物资审批表编号</th>
											<td colspan="5" >${order.purchase_no}</td>
											<th></th>
											<td></td>
										</tr>
										</c:if>
										<tr>
											<th>运输条款</th>
											<td colspan="3">${order.transportation_clause}</td>
											<th>买方说明</th>
											<td colspan="3">${order.buyer_explain}</td>
										</tr>
										<tr>
											<td colspan="8" id="tools">
											
												<c:if test="${'新建' eq order.state || '审批退回' eq order.state }">
												<security:authorize ifAnyGranted="ROLE_ORDER_EDIT">
													<c:if test="${'frame' eq type }">
														<a class="btn btn-primary btn-xs" href='${ctx}/order/orderEditFrame.do?id=${order.id}'>编辑订单</a>
													</c:if>
													<c:if test="${'contract' eq type }">
														<a class="btn btn-primary btn-xs" href='${ctx}/order/orderEditContract.do?id=${order.id}'>编辑订单</a>
													</c:if>
													<c:if test="${'purchase' eq type }">
														<a class="btn btn-primary btn-xs" href='${ctx}/order/orderEditPurchase.do?id=${order.id}'>编辑订单</a>
													</c:if>
													</security:authorize>
													<security:authorize ifAnyGranted="ROLE_ORDER_SUBMIT">
													<a class="btn btn-primary btn-xs" href="${ctx }/order/submit.do?id=${order.id}" >提交</a>
													</security:authorize>
												</c:if>
												<security:authorize ifAnyGranted="ROLE_ORDER_APPROVAL">
												<c:if test="${'待审批' eq order.state}">
													 <a class="btn btn-primary btn-xs" href="${ctx }/order/approvalOk.do?id=${order.id}" >审批通过</a>
													 <a class="btn btn-primary btn-xs" href="${ctx }/order/approvalNo.do?id=${order.id}" >审批退回</a>
												</c:if>
												</security:authorize>
												<security:authorize ifAnyGranted="ROLE_ORDER_PURCHASE_END">
												<c:if test="${'审批通过' eq order.state}">
													<a class="btn btn-primary btn-xs" href="${ctx }/order/orderEnd.do?id=${order.id}" >采购完成</a>
												</c:if>
												</security:authorize>
												<a class="btn btn-primary btn-xs" href='${ctx}/order/query.do'>返回</a>
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
								<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_order&fk_id=${order.id }&importNo=${order.order_no }" >文件管理</a>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="max-height: 400px; overflow: auto">
									<table id="mxtable" class="table table-striped table-condensed table-hover">
										<tr>
											<th>序号</th>
											<th>物资名称</th>
											<th>规格型号</th>
											<th>计量单位</th>
											<th>订单数量</th>
											<th>订单单价(元)</th>	
											<th>金额(元)</th>
											<th>交货日期</th>
											<th>备注</th>
										</tr>
										<c:forEach items="${order.orderDetailList}" var="od" varStatus="v">
											<tr>
												<td>${od.order_row_no}</td>
												<td>${od.material.name }</td>
												<td>${od.material.spec }</td>
												<td>${od.material.unit}</td>
												<td>${od.main_quantity}</td>
												<td>${od.main_price}</td>
												<td>${od.amount }</td>
												<td><fmt:formatDate value='${od.delivery_date}' pattern='yyyy-MM-dd'/></td>
												<td>${od.remarks }</td>
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
