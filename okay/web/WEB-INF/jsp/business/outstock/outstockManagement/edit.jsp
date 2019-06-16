<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<title>物资采购计划表</title>
</head>
<body>
	<div id="context">
		<div class="container">
			<form:form id="outstockHead" name="outstockHead" action="${ctx }/outstock/save.do" commandName="outstockHead">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">物资库存管理>>物资出库>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<input type="hidden" name="id" value="${outstockHead.id }"/>
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>出库单编号</th>
												<td><input type="text" name="outstock_no" id="outstock_no"  value="${outstockHead.outstock_no }" class="form-control input-sm" readonly="readonly" /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>库管员</th>
												<td><input type="text" name="user_name" id="user_name" value="${outstockHead.user_name }" class="form-control input-sm" readonly="readonly" />
												    <input type="hidden" name="user_id" value="${outstockHead.user_id }"/>
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>状态</th>
												<td><input type="text" name="state" id="state"  value="${outstockHead.state }" class="form-control input-sm" readonly="readonly"/></td>
											</tr>
											<tr>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>采购单编号</th>
												<td style="width: 5%">
													<div class="input-group" style="width: 68%">
														<input type="text" name="order_no" value="${outstockHead.order_no }" class="form-control input-sm" readonly="readonly" /> 
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkOrder(this);">查询</button>
															<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
													</div> 
													<input type="hidden" name="order_frame" value="${outstockHead.order_frame }"/>
												</td>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>仓库名称</th>
												<td style="width: 5%">
													<div class="input-group" style="width: 68%">
														<input type="text" name="warehouse_name" value="${outstockHead.warehouse_name }" class="form-control input-sm" readonly="readonly" /> 
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
															<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
													</div> 
													<input type="hidden" name="warehouse" value="${outstockHead.warehouse }"/>
												</td>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>出库时间</th>
												<td style="width: 5%">
													<div class="input-group" style="width: 68%">
														<input type="text" name="out_date" readonly="readonly" id="out_date" class="form-control input-sm form_datetime"  value="<fmt:formatDate value="${outstockHead.out_date }" pattern="yyyy-MM-dd"/>"/> 
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>领用部门</th>
												<td>
													<html:select id="department" name="department" classes="form-control input-sm">
														<html:businessOptions function="company" condition="" checkValue="${outstockHead.department }"></html:businessOptions>
													</html:select>
												</td>
												<td colspan="4"></td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<input type="button" value="保存 " onClick="save(mxtable)" class="btn btn-primary btn-xs" />
													<c:if test="${empty outstockHead.id }">
													<a class="btn btn-primary btn-xs" href="${ctx }/outstock/query.do">返回</a>
													</c:if>
													<c:if test="${not empty outstockHead.id }">
													<a class="btn btn-primary btn-xs" href="${ctx }/outstock/view.do?id=${outstockHead.id}">返回</a>
													</c:if>
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
										<a class="btn btn-primary btn-xs" onClick="checkOrderDetail(this)">
											<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
										</a> 
										<a class="btn btn-primary btn-xs" onClick="delTr('#mxtable')">
											<span class="glyphicon glyphicon-minus-sign"></span>&nbsp;删除明细
										</a> 
										<input type="text" readonly="readonly" id="detail" name="detail" style="BACKGROUND-COLOR: transparent; border-style: none; width: 1px;">
									</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
						    <div class="panel-body" style="max-height: 380px;">
						      <table class="table table-striped table-condensed table-hover" id="mxtable">
						        <tr>
						        	<th><input type="checkbox" name="checkAll" id="quanxuan"></th>
					    			<th>存货名称</th>
					    			<th>规格型号</th>
					    			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>包装</th>
					    			<th>箱容</th>
					    			<th>单位</th>
					    			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>数量</th>
					    			<th>库存</th>
					    			<th>备注</th>
					    		</tr>
					    		<tbody id="mxTbody">
					    		<!-- 有辅助计量单位的情况克隆 -->
					    		<tr style="display: none" >
					    			<td width="2%">
					    				<input type="checkbox" name="ids"/>
					    				<input type="hidden" name="order_detail"/>
						    			<input type="hidden" name="material"/>
					    			</td>
					    			<td width="12%"><input type="text" id="name" name="name"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="12%"><input type="text" id="spec" name="spec"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="12%"><input type="text" id="packing" name="packing"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/></td>
					    			<td width="12%"><input type="text" id="conversion" name="conversion"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="12%">
						    			<input type="hidden" name="unit"/>
						    			<input type="text" id="unit_help" name="unit_help"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="12%">
						    			<input type="hidden" name="main_quantity"/>
						    			<input type="text" id="secondary_quantity" name="secondary_quantity"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
					    			</td>
					    			<td width="12%"><input type="text" id="stock" name="stock" Class="form-control input-sm" style="width: 100%" readonly="readonly"/></td>
					    			<td width="14%"><input type="text" id="remark" name="remark"  Class="form-control input-sm" style="width: 100%"/></td>
				    		 	</tr>
				    		 	<!-- 没有辅助计量单位的情况克隆 -->
				    		 	<tr style="display: none" >
					    			<td width="2%">
					    				<input type="checkbox" name="ids"/>
					    				<input type="hidden" name="order_detail"/>
						    			<input type="hidden" name="material"/>
					    			</td>
					    			<td width="12%"><input type="text" id="name" name="name"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="12%"><input type="text" id="spec" name="spec"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="12%"><input type="text" id="packing" name="packing"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/></td>
					    			<td width="12%"><input type="text" id="conversion" name="conversion"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="12%">
						    			<input type="hidden" name="unit_help"/>
						    			<input type="text" id="unit" name="unit"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="12%">
						    			<input type="hidden" name="secondary_quantity"/>
						    			<input type="text" id="main_quantity" name="main_quantity"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
					    			</td>
					    			<td width="12%"><input type="text" id="stock" name="stock" Class="form-control input-sm" style="width: 100%" readonly="readonly"/></td>
					    			<td width="14%"><input type="text" id="remark" name="remark"  Class="form-control input-sm" style="width: 100%"/></td>
				    		 	</tr>
					    		<!-- 编辑页使用 -->
					    		<c:if test="${not empty outstockHead.id }">
					    			<c:forEach items="${outstockHead.outstockDetailList }" var="c">
						    			<tr>
							    			<td width="2%">
							    				<input type="checkbox" name="ids"/>
							    				<input type="hidden" name="order_detail" value="${c.order_detail }"/>
							    				<input type="hidden" name="material" value="${c.material }"/>
							    			</td>
							    			<td width="12%"><input type="text" id="name" name="name" value="${c.name }" Class="form-control input-sm" readonly style="width: 100%"/></td>
							    			<td width="12%"><input type="text" id="spec" name="spec" value="${c.spec}" Class="form-control input-sm" readonly style="width: 100%"/></td>
							    			<td width="12%"><input type="text" id="packing" name="packing" value="${c.packing }" Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/></td>
								    		<td width="12%"><input type="text" id="conversion" name="conversion" value="${c.conversion }" Class="form-control input-sm" readonly style="width: 100%"/></td>
							    			<!-- 显示最小计量单位  如果没有辅助计量单位显示主单位 主单位价格 主单位数量 主单位入库数量和剩余数量-->
					    					<c:if test="${not empty c.unit_help}">
								    			<td width="12%">
									    			<input type="hidden" name="unit"/>
									    			<input type="text" id="unit_help" name="unit_help" value="${c.unit_help }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="12%">
									    			<input type="hidden" name="main_quantity"/>
									    			<input type="text" id="secondary_quantity" name="secondary_quantity" value="${c.secondary_quantity }" Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
								    			</td>
							    			</c:if>
							    			<c:if test="${empty c.unit_help}">
								    			<td width="12%">
									    			<input type="hidden" name="unit_help"/>
									    			<input type="text" id="unit" name="unit" value="${c.unit }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="12%">
									    			<input type="hidden" name="secondary_quantity"/>
									    			<input type="text" id="main_quantity" name="main_quantity" value="${c.main_quantity }" Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
								    			</td>
							    			</c:if>
							    			<td width="12%"><input type="text" id="stock" name="stock" value="${c.stock }" Class="form-control input-sm" style="width: 100%" readonly="readonly"/></td>
							    			<td width="14%"><input type="text" id="remark" name="remark" value="${c.remark }" Class="form-control input-sm" style="width: 100%"/></td>
						    		 	</tr>
						    		 </c:forEach>
					    		</c:if>
					    		</tbody>
						      </table>
						    </div>
						  </div>
					    </div>
					  </div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
<script type="text/javascript">
var object;
function checkMtorder(o) {
	var rows = $("#mxTbody tr");
	if(rows.length > 2){
		if(confirm('如果选择仓库，将删除已有明细，是否删除？')){
			$("#mxTbody tr:gt(1)").remove();
		}
	}else{
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000, 650, '${ctx}/warehouse/publicWarehouseQuery.do');
	}
}
function handleWarehouse(warehouse) {
	object.find("input[name='warehouse']").val(warehouse.id);
	object.find("input[name='warehouse_name']").val(warehouse.name);
}
function checkOrder(o) {
	var rows = $("#mxTbody tr");
	if(rows.length > 2){
		if(confirm('如果选择采购单，将删除已有明细，是否删除？')){
			$("#mxTbody tr:gt(1)").remove();
		}
	}else{
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000, 650, '${ctx}/order/publicOrder.do');
	}
}
function handleOrder(order) {
	object.find("input[name='order_frame']").val(order.id);
	object.find("input[name='order_no']").val(order.order_no);
}
function checkOrderDetail(o) {
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	var id=$("input[name='order_frame']").val();
	var warehouse=$("input[name='warehouse']").val();
	if(isEmpty(id) || isEmpty(warehouse)){
		alert("请先选择采购订单信息和仓库信息");
		return false;
	}
	var order_detail = "";
	$("#mxtable input[name='order_detail']").each(function(i) {
		if ($(this).val() != "") {
			order_detail = order_detail + $(this).val()+";";
		}
	});
	modal(1000, 650, '${ctx}/order/publicOrderDetailOut.do?id='+id+'&order_detail='+order_detail+'&warehouse='+warehouse);
}
function handleOrderDetail(OrderDetail) {
	var tr;
	for(var i=0;i<OrderDetail.length;i++){
		//如果没有辅助计量单位
		if(isEmpty(OrderDetail[i].unit_help)){
			tr = addTr('#mxTbody', 1);
			tr.find("input[name='unit']").val(OrderDetail[i].unit);
		}else{
			tr = addTr('#mxTbody', 0);
			tr.find("input[name='unit_help']").val(OrderDetail[i].unit_help);
			tr.find("input[name='conversion']").val(OrderDetail[i].conversion);
		}
		tr.find("input[name='material']").val(OrderDetail[i].material_id);
		tr.find("input[name='name']").val(OrderDetail[i].name);
		tr.find("input[name='spec']").val(OrderDetail[i].spec);
		tr.find("input[name='order_detail']").val(OrderDetail[i].order_detail_id);
		tr.find("input[name='stock']").val(OrderDetail[i].stock);
		$('#quanxuan').on('ifChecked', function(event) {
			$('input[type="checkbox"]').iCheck('check');
		});
		$('#quanxuan').on('ifUnchecked', function(event) {
			$('input[type="checkbox"]').iCheck('uncheck');
		});  
	}
}
//删除明细
function delTr(table) {
	delTrCommon(table);
}
//保存校验
function save(oTb) {
	var packing = $("input[name='packing']");
    var secondary_quantity = $("input[name='secondary_quantity']");
    var warehouse_name = $("input[name='warehouse_name']");
    var order_no = $("input[name='order_no']");
    var out_date = $("input[name='out_date']");
    var department = $("select[name='department']");
    //用来判断
    var unit_help = $("input[name='unit_help']")
    var main_quantity = $("input[name='main_quantity']")
    var stock = $("input[name='stock']")
	if(isEmpty(warehouse_name.val())){
		alert("请选择仓库编号");
		warehouse_name.focus();
		return;
	}
	if(isEmpty(out_date.val())){
		alert("请选择入库时间");
		out_date.focus();
		return;
	}
	if(isEmpty(order_no.val())){
		alert("请选择采购单编号");
		order_no.focus();
		return;
	}
	if(isEmpty(department.val())){
		alert("请选择领用部门");
		department.focus();
		return;
	}
	if (oTb.rows.length == 3) {
		alert("请添加明细!");
		return;
	}
	var count = packing.length;
	for (i =2 ; i < count; i++) {
		if (isEmpty(packing.eq(i).val())) {
			alert("请填写包装！");
			packing.eq(i).focus();
			return;
		}
		if(!isEmpty(unit_help.eq(i).val())){
			if (isEmpty(secondary_quantity.eq(i).val())){
				alert("请填写数量！");
				secondary_quantity.eq(i).focus();
				return false;
			}
			if (parseFloat(secondary_quantity.eq(i).val())>parseFloat(stock.eq(i).val())){
				alert("填写数量大于库存数量");
				secondary_quantity.eq(i).focus();
				return false;
			}	
		}else{
			if (isEmpty(main_quantity.eq(i).val())){
				alert("请填写数量！");
				main_quantity.eq(i).focus();
				return false;
			}
			if (parseFloat(main_quantity.eq(i).val())>parseFloat(stock.eq(i).val())){
				alert("填写数量大于库存数量");
				main_quantity.eq(i).focus();
				return false;
			}	
		}
	} 
	changeDetails("mxtable", "outstockDetailList",2);
	document.outstockHead.submit();
}
</script>
</html>