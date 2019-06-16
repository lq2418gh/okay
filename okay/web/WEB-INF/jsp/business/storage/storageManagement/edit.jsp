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
			<form:form id="storageHead" name="storageHead" action="${ctx }/storage/save.do" commandName="storageHead">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">物资库存管理>>物资入库>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<input type="hidden" name="id" value="${storageHead.id }"/>
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>入库单编号</th>
												<td><input type="text" name="storage_no" id="storage_no"  value="${storageHead.storage_no }" class="form-control input-sm" readonly="readonly" /></td>
												<th style="width: 8.5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>仓库编号</th>
												<td style="width: 15%">
													<div class="input-group" style="width: 100%">
														<input type="text" name="warehouse_name" value="${storageHead.warehouse_name }" class="form-control input-sm" readonly="readonly" /> 
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
															<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
													</div> 
													<input type="hidden" name="warehouse" value="${storageHead.warehouse }"/>
												</td>
												<th style="width: 8.5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>入库时间</th>
												<td style="width: 15%">
													<div class="input-group" style="width: 100%">
														<input type="text" name="entry_date" readonly="readonly" id="entry_date" class="form-control input-sm form_datetime"  value="<fmt:formatDate value="${storageHead.entry_date }" pattern="yyyy-MM-dd"/>"/> 
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th style="width: 8.5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>采购单编号</th>
												<td style="width: 15%">
													<div class="input-group" style="width: 100%">
														<input type="text" name="order_no" value="${storageHead.order_no }" class="form-control input-sm" readonly="readonly" /> 
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkOrder(this);">查询</button>
															<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
													</div> 
													<input type="hidden" name="order_frame" value="${storageHead.order_frame }"/>
													<input type="hidden" name="is_choice" value="${storageHead.is_choice }"/>
												</td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>状态</th>
												<td><input type="text" name="state" id="state"  value="${storageHead.state }" class="form-control input-sm" readonly="readonly" value="${storageHead.state }"/></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>合同/协议 </th>
												<td>
												<c:if test="${empty storageHead.frame_no && empty storageHead.contract_no }">
												<input type="text" name="contract_no" id="contract_no" class="form-control input-sm" readonly="readonly" />
												</c:if>
												<c:if test="${not empty storageHead.frame_no }">
												<input type="text" name="frame_no" id="frame_no"  value="${storageHead.frame_no }" class="form-control input-sm" readonly="readonly" />
												</c:if>
												<c:if test="${not empty storageHead.contract_no }">
												<input type="text" name="contract_no" id="contract_no"  value="${storageHead.contract_no }" class="form-control input-sm" readonly="readonly" />
												</c:if>
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>供应商名称 </th>
												<td><input type="text" name="supplier_name" id="supplier_name"  value="${storageHead.supplier_name }" class="form-control input-sm" readonly="readonly" /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>购置经办人</th>
												<td><input type="text" name="user_name" id="user_name" value="${storageHead.user_name }" class="form-control input-sm" readonly="readonly" />
												    <input type="hidden" name="user_id" value="${storageHead.user_id }"/>
												</td>
											</tr>
											<tr>
												<td colspan="8" id="tools">
													<input type="button" value="保存 " onClick="save(mxtable)" class="btn btn-primary btn-xs" />
													<c:if test="${empty storageHead.id }">
													<a class="btn btn-primary btn-xs" href="${ctx }/storage/query.do">返回</a>
													</c:if>
													<c:if test="${not empty storageHead.id }">
													<a class="btn btn-primary btn-xs" href="${ctx }/storage/view.do?id=${storageHead.id}">返回</a>
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
					    			<th>单价</th>
					    			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>数量</th>
					    			<th>已入库数量</th>
					    			<th>未入库数量</th>
					    			<th>备注</th>
					    		</tr>
					    		<tbody id="mxTbody">
					    		<!-- 有辅助计量单位的情况克隆 -->
					    		<tr style="display: none" >
					    			<td width="2%">
					    				<input type="checkbox" name="ids"/>
					    				<input type="hidden" name="order_detail"/>
						    			<input type="hidden" name="material"/>
						    			<input type="hidden" name="order_secondary_quantity"/><!-- 公共页面带过的总数量 用来计算剩余可入库数量 -->
						    			<input type="hidden" name="order_main_quantity"/><!-- 没有辅助单位的情况下，公共页面带过的总数量 用来计算剩余可入库数量 -->
					    			</td>
					    			<td width="8%"><input type="text" id="name" name="name"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="8%"><input type="text" id="spec" name="spec"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="8%"><input type="text" id="packing" name="packing"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/></td>
					    			<td width="8%"><input type="text" id="conversion" name="conversion"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="8%">
						    			<input type="hidden" name="unit"/>
						    			<input type="text" id="unit_help" name="unit_help"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="main_price"/>
						    			<input type="text" id="secondary_price" name="secondary_price"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="main_quantity"/>
						    			<input type="text" id="secondary_quantity" name="secondary_quantity"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="main_in_storage"/>
						    			<input type="text" id="in_storage" name="in_storage"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="main_residue"/>
						    			<input type="text" id="residue" name="residue"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="16%"><input type="text" id="remark" name="remark"  Class="form-control input-sm" style="width: 100%"/></td>
				    		 	</tr>
				    		 	<!-- 没有辅助计量单位的情况克隆 -->
				    		 	<tr style="display: none" >
					    			<td width="2%">
					    				<input type="checkbox" name="ids"/>
					    				<input type="hidden" name="order_detail"/>
						    			<input type="hidden" name="material"/>
						    			<input type="hidden" name="order_secondary_quantity"/><!-- 公共页面带过的总数量 用来计算剩余可入库数量 -->
						    			<input type="hidden" name="order_main_quantity"/><!-- 没有辅助单位的情况下，公共页面带过的总数量 用来计算剩余可入库数量 -->
					    			</td>
					    			<td width="8%"><input type="text" id="name" name="name"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="8%"><input type="text" id="spec" name="spec"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="8%"><input type="text" id="packing" name="packing"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/></td>
					    			<td width="8%"><input type="text" id="conversion" name="conversion"  Class="form-control input-sm" readonly style="width: 100%"/></td>
					    			<td width="8%">
						    			<input type="hidden" name="unit_help"/>
						    			<input type="text" id="unit" name="unit"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="secondary_price"/>
						    			<input type="text" id="main_price" name="main_price"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="secondary_quantity"/>
						    			<input type="text" id="main_quantity" name="main_quantity"  Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="in_storage"/>
						    			<input type="text" id="main_in_storage" name="main_in_storage"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="8%">
						    			<input type="hidden" name="residue"/>
						    			<input type="text" id="main_residue" name="main_residue"  Class="form-control input-sm" readonly style="width: 100%"/>
					    			</td>
					    			<td width="16%"><input type="text" id="remark" name="remark"  Class="form-control input-sm" style="width: 100%"/></td>
				    		 	</tr>
					    		<!-- 编辑页使用 -->
					    		<c:if test="${not empty storageHead.id }">
					    			<c:forEach items="${storageHead.storageDetailList }" var="c">
						    			<tr>
							    			<td width="2%">
							    				<input type="checkbox" name="ids"/>
							    				<input type="hidden" name="order_detail" value="${c.order_detail }"/>
							    				<input type="hidden" name="material" value="${c.material }"/>
							    			</td>
							    			<td width="8%"><input type="text" id="name" name="name" value="${c.name }" Class="form-control input-sm" readonly style="width: 100%"/></td>
							    			<td width="8%"><input type="text" id="spec" name="spec" value="${c.spec}" Class="form-control input-sm" readonly style="width: 100%"/></td>
							    			<td width="8%"><input type="text" id="packing" name="packing" value="${c.packing }" Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/></td>
								    		<td width="8%"><input type="text" id="conversion" name="conversion" value="${c.conversion }" Class="form-control input-sm" readonly style="width: 100%"/></td>
							    			<!-- 显示最小计量单位  如果没有辅助计量单位显示主单位 主单位价格 主单位数量 主单位入库数量和剩余数量-->
					    					<c:if test="${not empty c.unit_help}">
								    			<td width="8%">
									    			<input type="hidden" name="unit"/>
									    			<input type="text" id="unit_help" name="unit_help" value="${c.unit_help }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="main_price" value="${c.main_price }"/>
									    			<input type="text" id="secondary_price" name="secondary_price" value="${c.secondary_price }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="main_quantity"/>
									    			<input type="text" id="secondary_quantity" name="secondary_quantity" value="${c.secondary_quantity }" Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="main_in_storage"/>
									    			<input type="text" id="in_storage" name="in_storage" value="${c.in_storage }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="main_residue"/>
									    			<input type="text" id="residue" name="residue" value="${c.residue }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
							    			</c:if>
							    			<c:if test="${empty c.unit_help}">
								    			<td width="8%">
									    			<input type="hidden" name="unit_help"/>
									    			<input type="text" id="unit" name="unit" value="${c.unit }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="secondary_price"/>
									    			<input type="text" id="main_price" name="main_price" value="${c.main_price }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="secondary_quantity"/>
									    			<input type="text" id="main_quantity" name="main_quantity" value="${c.main_quantity }" Class="form-control input-sm" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="in_storage"/>
									    			<input type="text" id="main_in_storage" name="main_in_storage" value="${c.main_in_storage }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
								    			<td width="8%">
									    			<input type="hidden" name="residue"/>
									    			<input type="text" id="main_residue" name="main_residue" value="${c.main_residue }" Class="form-control input-sm" readonly style="width: 100%"/>
								    			</td>
							    			</c:if>
							    			<td width="16%"><input type="text" id="remark" name="remark" value="${c.remark }" Class="form-control input-sm" style="width: 100%"/></td>
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
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000, 650, '${ctx}/warehouse/publicWarehouseQuery.do');
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
	}
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000, 650, '${ctx}/order/publicOrder.do');
}
function handleOrder(order) {
	object.find("input[name='order_frame']").val(order.id);
	object.find("input[name='order_no']").val(order.order_no);
	object.next().find("input[name='supplier_name']").val(order.supplier_name);
	//显示协议合同号
	if(isEmpty(order.contract_no)){
	object.next().find("input[name='contract_no']").val(order.frame_no);
	}else{
	object.next().find("input[name='contract_no']").val(order.contract_no);
	}
}
function checkOrderDetail(o) {
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	var id=$("input[name='order_frame']").val();
	if(isEmpty(id)){
		alert("请先选择采购订单信息");
		return false;
	}
	var order_detail = "";
	$("#mxtable input[name='order_detail']").each(function(i) {
		if ($(this).val() != "") {
			order_detail = order_detail + $(this).val()+";";
		}
	});
	modal(1000, 650, '${ctx}/order/publicOrderDetail.do?id='+id+'&order_detail='+order_detail);
}
function handleOrderDetail(OrderDetail) {
	var tr;
	for(var i=0;i<OrderDetail.length;i++){
		//如果没有辅助计量单位
		if(isEmpty(OrderDetail[i].unit_help)){
			tr = addTr('#mxTbody', 1);
			tr.find("input[name='order_main_quantity']").val(OrderDetail[i].main_quantity);
			tr.find("input[name='unit']").val(OrderDetail[i].unit);
			tr.find("input[name='main_in_storage']").val(OrderDetail[i].already_main_quantity);
			tr.find("input[name='main_residue']").val(OrderDetail[i].main_quantity-OrderDetail[i].already_main_quantity);
		}else{
			tr = addTr('#mxTbody', 0);
			tr.find("input[name='secondary_price']").val(OrderDetail[i].secondary_price);
			tr.find("input[name='order_secondary_quantity']").val(OrderDetail[i].secondary_quantity);
			tr.find("input[name='unit_help']").val(OrderDetail[i].unit_help);
			tr.find("input[name='in_storage']").val(OrderDetail[i].already_secondary_quantity);
			tr.find("input[name='residue']").val(OrderDetail[i].secondary_quantity-OrderDetail[i].already_secondary_quantity);
			tr.find("input[name='conversion']").val(OrderDetail[i].conversion);
		}
		tr.find("input[name='material']").val(OrderDetail[i].material_id);
		tr.find("input[name='name']").val(OrderDetail[i].name);
		tr.find("input[name='spec']").val(OrderDetail[i].spec);
		tr.find("input[name='order_detail']").val(OrderDetail[i].order_detail_id);
		tr.find("input[name='main_price']").val(OrderDetail[i].main_price);//用来判断是否有辅助计量单位
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
    var entry_date = $("input[name='entry_date']");
    var residue = $("input[name='residue']");
    //用来判断
    var secondary_price = $("input[name='secondary_price']");
    var main_price = $("input[name='main_price']");
    var main_quantity = $("input[name='main_quantity']")
    var main_residue = $("input[name='main_residue']")
	if(isEmpty(warehouse_name.val())){
		alert("请选择仓库编号");
		warehouse_name.focus();
		return;
	}
	if(isEmpty(entry_date.val())){
		alert("请选择入库时间");
		entry_date.focus();
		return;
	}
	if(isEmpty(order_no.val())){
		alert("请选择采购单编号");
		order_no.focus();
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
		if(!isEmpty(secondary_price.eq(i).val())){
			if (isEmpty(secondary_quantity.eq(i).val())){
				alert("请填写数量！");
				secondary_quantity.eq(i).focus();
				return false;
			}
			if (parseFloat(secondary_quantity.eq(i).val())>parseFloat(residue.eq(i).val())){
				alert("填写数量大于未入库数量");
				secondary_quantity.eq(i).focus();
				return false;
			}	
		}else{
			if (isEmpty(main_quantity.eq(i).val())){
				alert("请填写数量！");
				main_quantity.eq(i).focus();
				return false;
			}
			if (parseFloat(main_quantity.eq(i).val())>parseFloat(main_residue.eq(i).val())){
				//alert(parseFloat(main_quantity.eq(i).val()));
				//alert(parseFloat(main_residue.eq(i).val()));
				alert("填写数量大于未入库数量");
				main_quantity.eq(i).focus();
				return false;
			}	
		}
	} 
	changeDetails("mxtable", "storageDetailList",2);
	document.storageHead.submit();
}
</script>
</html>