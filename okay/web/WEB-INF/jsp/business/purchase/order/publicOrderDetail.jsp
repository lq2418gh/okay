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
$(function(){
	$('#quanxuan').on('ifChecked', function(event) {
		$('input[name="ids"]').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event) {
		$('input[name="ids"]').iCheck('uncheck');
	});
});
function getMaterialPurchase(){
	var count=0;
	var cont=document.getElementsByName('ids');
	for( i=0;i<cont.length;i++){
		if(cont[i].checked){
			count++;
		}
	}
	if(count==0){
		alert("至少选择一条数据");
		return;
	}
	var OrderDetail = new Array();
	$("table input[name=ids]:checked").each(function(i){
		var a={};
		var index=$(this).attr('index');
		a.material_id = $(".dataTable [name='material_id']:eq(" + index + ")").val();
		a.unit = $(".dataTable [name='unit']:eq(" + index + ")").val();
		a.unit_help = $(".dataTable [name='unit_help']:eq(" + index + ")").val();
		a.name = $(".dataTable [name='name']:eq(" + index + ")").val();
		a.spec = $(".dataTable [name='spec']:eq(" + index + ")").val();
		a.main_price = $(".dataTable [name='main_price']:eq(" + index + ")").val();
		a.secondary_price = $(".dataTable [name='secondary_price']:eq(" + index + ")").val();
		a.conversion = $(".dataTable [name='conversion']:eq(" + index + ")").val();
		a.order_detail_id = $(".dataTable [name='order_detail_id']:eq(" + index + ")").val();
		a.already_main_quantity = $(".dataTable [name='already_main_quantity']:eq(" + index + ")").val();
		a.already_secondary_quantity = $(".dataTable [name='already_secondary_quantity']:eq(" + index + ")").val();
		a.main_quantity = $(".dataTable [name='main_quantity']:eq(" + index + ")").val();
		a.secondary_quantity = $(".dataTable [name='secondary_quantity']:eq(" + index + ")").val();
		a.stock_main_quantity = $(".dataTable [name='stock_main_quantity']:eq(" + index + ")").val();
		a.stock_secondary_quantity = $(".dataTable [name='stock_secondary_quantity']:eq(" + index + ")").val();
		a.stock = $(".dataTable [name='stock']:eq(" + index + ")").val();
		OrderDetail[i]=a;
	})
	var handleOrderDetail = window.top.mainFrame.handleOrderDetail;// handleOrderDetail方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleOrderDetail && typeof(handleOrderDetail) == "function"){
		handleOrderDetail(OrderDetail);
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
								<input type="button" value="确认"  onClick="getMaterialPurchase()" class="btn btn-primary btn-xs" />
								<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.parent.parent.document.getElementById('butclose').click()" />
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover dataTable" >
										<tr>
											<th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
											<th>序号</th>
											<th>物资名称</th>
											<th>规格型号</th>
											<th>计量单位</th>
											<th>采购数量</th>
											<th>单价(元)</th>
											<th>辅助计量单位</th>
											<th>采购数量</th>
											<th>单价(元)</th>
											<th>金额(元)</th>
											<th>交货日期</th>
											<th>备注</th>
										</tr>
										<c:forEach items="${order.orderDetailList }" var="od" varStatus="v">
											<tr>
												<td><input type="checkbox" name="ids" index="${v.index}"/>												
												<input type="hidden" name="frame_detail_id" value="8aaeab6ad359417a9a98a2039b8d21f5"/>
												<input type="hidden" name="contract_detail_id" value="8aaeab6ad359417a9a98a2039b8d21f5"/>
												</td>
												<td>${v.count}</td>
												<td><input type="text" value="${od.material.name}" name="name" class="form-control input-sm" readonly="readonly"  />
													<input type="hidden"  value="${od.material_id}" name="material_id"/>
													<input type="hidden"  value="${od.conversion}" name="conversion"/>
													<input type="hidden" name="order_detail_id" value="${od.id}"/>
													<input type="hidden" name="already_main_quantity" value="${od.already_main_quantity}"/>
													<input type="hidden" name="already_secondary_quantity" value="${od.already_secondary_quantity}"/>
													<input type="hidden" name="stock_main_quantity" value="${od.stock_main_quantity}"/>
													<input type="hidden" name="stock_secondary_quantity" value="${od.stock_secondary_quantity}"/>
													<input type="hidden" name="stock" value="${od.stock}"/>
												</td>
												<td><input type="text" value="${od.material.spec }" name="spec" class="form-control input-sm w100" readonly="readonly"  readonly="readonly"/></td>
												<td><input type="text" value="${od.material.unit}" name="unit" style="width:100px" class="form-control input-sm" readonly="readonly" /></td>
												<td><input type="text" value="${od.main_quantity }"id="main_quantity" name="main_quantity" class="form-control input-sm w100" readonly="readonly"/></td>
												<td><input type="text" value="${od.main_price }" id="main_price" name="main_price" class="form-control input-sm w100" readonly="readonly"/></td>
												
												<td><input type="text" value="${od.material.unit_help}" name="unit_help" style="width:100px" class="form-control input-sm" readonly="readonly"  /></td>
												<td><input type="text" value="${od.secondary_quantity }" id="secondary_quantity" name="secondary_quantity" class="form-control input-sm w100" readonly="readonly"/></td>
												<td><input type="text" value="${od.secondary_price }" id="secondary_price" name="secondary_price" class="form-control input-sm w100" readonly="readonly"/></td>
												<td><input type="text" value="${od.amount }" id="amount" name="amount" class="form-control input-sm  w100" readonly="readonly"/></td>
												<td><input type="text" value='<fmt:formatDate value="${od.delivery_date }" pattern="yyyy-MM-dd" />' name="delivery_date" id="delivery_date" class="form-control input-sm form_datetime"  readonly="readonly"   />
												</td>
												<td><input type="text" name="remarks" class="form-control input-sm  w100" value="${od.remarks }" readonly="readonly" /></td>
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