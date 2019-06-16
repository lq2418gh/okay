<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>物资采购订单表</title>
</head>
<body>
	<div id="context">
		<div class="container">
			<form:form id="formValidate" name="orderForm" action="${ctx}/order/save.do" commandName="orderForm">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">采购订单管理>>物资采购订单>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body" style="height: 300px;">
										<input type="hidden" value="${order.purchase_user_id }" name="purchase_user_id" id="purchase_user_id"> 
										<input type="hidden" value="${order.id }" name="id" id="id">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk"style="color: white"></span>订单编号</th>
												<td style="width: 28%"><input type="text" name="order_no" id="order_no" value="${order.order_no }"  class="form-control input-sm"  readonly="readonly"/></td>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk"style="color: white"></span>是否紧急</th>
												<td style="width: 28%">
													<input type="radio" name="urgent_type" value="正常" <c:if test="${empty order.urgent_type ||  '正常' eq order.urgent_type }"> checked="checked" </c:if>>&nbsp;正常&nbsp;
													<input type="radio" name="urgent_type" value="紧急" <c:if test="${'紧急' eq order.urgent_type }"> checked="checked" </c:if>>&nbsp;紧急
												</td>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk"style="color: white"></span>采购员</th>
												<td style="width: 29%"><input type="text" name="realName" id="realName" value="${order.realName }" class="form-control input-sm" readonly="readonly"/></td>
											</tr>
											<tr>
												<th>
													<c:if test="${'frame' eq type || 'purchase' eq type}"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>协议编号</c:if>
													<c:if test="${'contract' eq type }"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>合同编号</c:if>
												</th>
												<td>
													<input type="hidden" value="${order.contract_id }" name="contract_id" id="contract_id">
													<input type="hidden" value="${order.frame_id }" name="frame_id" id="frame_id" />
													<c:if test="${'frame' eq type || 'purchase' eq type}">
														<input type="text" name="frameNo" id="frameNo" value="${order.frameHead.frameNo }" class="form-control input-sm" readonly="readonly"/>
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkFrame(this);">查询</button>
															<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
													</c:if>
													<c:if test="${'contract' eq type }">
														<input type="text" name="contractNo" id="contractNo" value="${order.contractHead.contractNo }" class="form-control input-sm" readonly="readonly"/>
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkContract(this);">查询</button>
															<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
														<input type="hidden" value="${order.purchase_no }" name="purchase_no" id="purchase_no">
														<input type="hidden" value="${order.materialsPurchaseId }" name="materialsPurchaseId" id="materialsPurchaseId" />
													</c:if>
												</td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>日期</th>
												<td><input type="text" name="sign_date" id="sign_date" value="<fmt:formatDate value='${order.sign_date}' pattern='yyyy-MM-dd'/>" class="form-control input-sm form_datetime" readonly="readonly"  /></td>												
												<th ><span class="glyphicon glyphicon-asterisk"style="color: white"></span>订单状态</th>
												<td ><input type="text" name="state" id="state" value="${order.state }" class="form-control input-sm" readonly="readonly"></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>供应商</th>
												<td>
													<input type="hidden" name="supplier_id" id="supplier_id" value="${order.supplier_id}">
													<input type="text" name="supplier_name" id="supplier_name" value="${order.supplier.supplier_name }" class="form-control input-sm" readonly="readonly"/>
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>银行账号</th>
												<td><input type="text" name="bank_account_number" id="bank_account_number" value="${order.bank_account_number }" class="form-control input-sm" readonly="readonly"/></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>总金额</th>
												<td><input type="text" name="order_amount" id="order_amount" value="${order.order_amount }" class="form-control input-sm" readonly="readonly"/></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>买方电话</th>
												<td><input type="text" name="buyer_tel" id="buyer_tel" value="${order.buyer_tel }" class="form-control input-sm"  /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>买方传真</th>
												<td><input type="text" name="buyer_fax" id="buyer_fax" value="${order.buyer_fax }" class="form-control input-sm"  /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>买方邮编</th>
												<td><input type="text" name="buyer_zip_code" id="buyer_zip_code" value="${order.buyer_zip_code }" class="form-control input-sm"  /></td>
												
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>卖方联系人</th>
												<td><input type="text" name="seller_contact" id="seller_contact" value="${order.seller_contact }" class="form-control input-sm"  /></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>卖方电话</th>
												<td><input type="text" name="seller_tel" id="seller_tel" value="${order.seller_tel }" class="form-control input-sm" /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>卖方传真</th>
												<td><input type="text" name="seller_fax" id="seller_fax" value="${order.seller_fax }" class="form-control input-sm"  /></td>
												
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>买方地址</th>
												<td><input type="text" name="buyer_address" id="buyer_address" value="${order.buyer_address }" class="form-control input-sm"  /></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>卖方地址</th>
												<td><input type="text" name="seller_address" id="seller_address" value="${order.seller_address }" class="form-control input-sm"  /></td>
												<th></th>
												<td></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>交货地联系人</th>
												<td><input type="text" name="delivery_contact" id="delivery_contact" value="${order.delivery_contact }" class="form-control input-sm"  /></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>交货地电话</th>
												<td><input type="text" name="delivery_call" id="delivery_call" value="${order.delivery_call }" class="form-control input-sm"  /></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>交货地址</th>
												<td><input type="text" name="delivery_address" id="delivery_address" value="${order.delivery_address }" class="form-control input-sm"  /></td>
											</tr>
											<c:if test="${'purchase' eq type }">
											<tr>
												<th>
													<span class="glyphicon glyphicon-asterisk" style="color: red"></span>物资审批表编号
												</th>
												<td colspan="3">
								                    <div class="input-group" style="width: 100%">
									                    <input type="text"  name="purchase_no" id="purchase_no" value="${order.purchase_no}" class="form-control input-sm" readonly/>
									                    <input type="hidden" name="materialsPurchaseId" id="materialsPurchaseId" value="${order.materialsPurchaseId}"/>
									                    <span class="input-group-btn" >
															<button type="button" class="btn btn-primary btn-sm"  onClick="checkPurchase(this);">查询</button>
														</span>
													</div>
							                    </td>
							                    <td colspan="2"></td>
											</tr>
											</c:if>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>运输条款</th>
												<td >
													<textarea rows="10" cols="70" name="transportation_clause" id="transportation_clause"  class="form-control input-sm" >${order.transportation_clause }</textarea>
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>买方说明</th>
												<td >
													<textarea rows="10" cols="70" name="buyer_explain" id="buyer_explain" class="form-control input-sm" >${order.buyer_explain }</textarea>
												</td>
												<th></th>
												<td></td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
												<security:authorize ifAnyGranted="ROLE_ORDER_INSERT">
													<c:if test="${'新建' eq order.state || '审批退回' eq order.state }">
														<input type="button" value="保存 " onClick="save()" class="btn btn-primary btn-xs" />
													</c:if>
													</security:authorize>
													<c:if test="${empty order.id }">
													<a class="btn btn-primary btn-xs" href="${ctx}/order/query.do">返回</a>
													</c:if>
													<c:if test="${not empty order.id }">
													<a class="btn btn-primary btn-xs" href="${ctx }/order/view.do?id=${order.id}">返回</a>
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
									<c:if test="${'frame' eq type }">
									<a class="btn btn-primary btn-xs" onClick="checkFrameDetail(this)">
										<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
									</a> 
									</c:if>
									<c:if test="${'contract' eq type }">
									<a class="btn btn-primary btn-xs" onClick="checkContractDetail(this)">
										<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
									</a> 
									</c:if>
									<c:if test="${'purchase' eq type }">
										<a class="btn btn-primary btn-xs" onClick="checkPurchaseDetail(this)">
										<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
									</a> 
									</c:if>
									<a class="btn btn-primary btn-xs" onClick="delTr1('#mxtable')">
										<span class="glyphicon glyphicon-minus-sign"></span>&nbsp;删除明细
									</a> 
									<input type="text"  id="detail" name="detail" style="BACKGROUND-COLOR: transparent; border-style: none; width: 1px;">
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body" style="max-height: 600px">
										<table id="mxtable" class="table table-striped table-condensed table-hover">
											<tr id="title">
												<th style="width:2%"><input type="checkbox" name="checkAll11" id="quanxuan2"></th>
												<th style="width:10%">物资名称</th>
												<th style="width:10%">规格型号</th>
												<th style="width:6%">计量单位</th>
												<th style="width:9%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>数量</th>
												<th style="width:6%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>单价(元)</th>
												<th style="width:9%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>金额(元)</th>
												<th style="width:10%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>交货日期</th>
												<th style="width:10%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>预算部门</th>
												<th style="width:10%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>预算科目</th>
												<th style="width:18%">备注</th>
											</tr>
											<tbody id="mxTbody">
												<tr style="display: none">
													<td>
														<input type="checkbox" name="id" />
														<input type="hidden" name="frame_detail_id" />
														<input type="hidden" name="contract_detail_id" />
														<input type="hidden" name="purchase_head_id" />
														<input type="hidden" name="purchase_detail_id" />
														<input type="hidden" name="material_id" />
													</td>
													<td><input type="text" name="name" class="form-control input-sm " style="width:100%"  readonly="readonly"/></td>
													<td><input type="text" name="spec" class="form-control input-sm " style="width:100%" readonly="readonly"/></td>
													<td><input type="text" name="unit" class="form-control input-sm" style="width:100%" readonly="readonly" /></td>
													<td>
														<input type="text" id="main_quantity" name="main_quantity" class="form-control input-sm " style="width:100%" maxlength="13" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="changeQuantity(this);changeNumber(this)"
														<c:if test="${'purchase' eq type }">  readonly='readonly'  </c:if>
														/>
														<input type="hidden"  name="conversion"/>
														<input type="hidden"  name="secondary_quantity"/>
														<input type="hidden"  name="secondary_price"/>
													</td>
													<td><input type="text" id="main_price" name="main_price" class="form-control input-sm " style="width:100%"  readonly="readonly"  /></td>
													<td><input type="text" id="amount" name="amount" class="form-control input-sm  " style="width:100%"  readonly="readonly"/></td>
													<td><input type="text" id="delivery_date"  name="delivery_date" style="width:100%" class="form-control input-sm form_datetime" readonly="readonly" /></td>
													
													<td>
														<c:if test="${'frame' eq type }">
															<select id="centralized_department" name="centralized_department" onChange="changeCompany(this)"  class="form-control input-sm" style="width:100%" >
																<option value="">请选择</option>
																<c:forEach items="${companyList }" var="company" >
																	<option value="${company.companyId }">${company.companyName }</option>
																</c:forEach>
															</select>
														</c:if>
														<c:if test="${'contract' eq type || 'purchase' eq type }">
															<input type="text" id="department_name" name="department_name" class="form-control input-sm " style="width:100%"  readonly="readonly" />
															<input type="hidden"  name="centralized_department"/>
														</c:if>
													</td>
													<td>
														<c:if test="${'frame' eq type }">
															<select id="account" name="account" onChange="changeAccount(this)"   class="form-control input-sm" style="width:100%" >
																<option value="">请选择</option>
															</select>
														</c:if>
														<c:if test="${'contract' eq type || 'purchase' eq type }">
															<input type="text" id="account_name" name="account_name" class="form-control input-sm " style="width:100%"  readonly="readonly" />
															<input type="hidden"  name="account"/>
														</c:if>
														<input type="hidden"  name="budget_plan_detail"/>
													</td>
													
													<td><input type="text" name="remarks" class="form-control input-sm  " style="width:100%" maxlength="500"  /></td>
												</tr>
											<c:forEach items="${order.orderDetailList }" var="od" >
												<tr>
													<td>
														<input type="checkbox" value="${od.id }" name="id" />													
														<input type="hidden" name="frame_detail_id" value="${od.frame_detail_id}"/>
														<input type="hidden" name="contract_detail_id" value="${od.contract_detail_id}"/>
														
														<input type="hidden" name="purchase_head_id" value="${od.purchase_head_id}"/>
														<input type="hidden" name="purchase_detail_id" value="${od.purchase_detail_id}"/>
														<input type="hidden"  value="${od.material_id}" name="material_id"/>
													</td>
													<td><input type="text" value="${od.material.name}" name="name" class="form-control input-sm" style="width:100%" readonly="readonly"  /></td>
													<td><input type="text" value="${od.material.spec }" name="spec" class="form-control input-sm " style="width:100%" readonly="readonly"  /></td>
													<td><input type="text" value="${od.material.unit}" name="unit" class="form-control input-sm" style="width:100%"  readonly="readonly" /></td>
													<td>
														<input type="text" value="${od.main_quantity }"id="main_quantity" name="main_quantity" class="form-control input-sm " style="width:100%" maxlength="13" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="changeQuantity(this);changeNumber(this)" 
														<c:if test="${'purchase' eq type }">  readonly='readonly'  </c:if>
														/>
														<input type="hidden"  value="${od.material.conversion}" name="conversion"/>
														<input type="hidden"  value="${od.secondary_quantity}"  name="secondary_quantity"/>
														<input type="hidden"  value="${od.secondary_price }"  name="secondary_price"/>
													</td>
													<td><input type="text" value="${od.main_price }" id="main_price" name="main_price" class="form-control input-sm " style="width:100%"  readonly="readonly"  /></td>
													<td><input type="text" value="${od.amount }" id="amount" name="amount" class="form-control input-sm  " style="width:100%"  readonly="readonly"/></td>
													<td><input type="text" value="<fmt:formatDate value='${od.delivery_date}' pattern='yyyy-MM-dd'/>" name="delivery_date" id="delivery_date" class="form-control input-sm form_datetime"  style="width:100%" readonly="readonly"   /></td>
													
													<td>
														<c:if test="${'frame' eq type }">
															<select id="centralized_department" name="centralized_department" onChange="changeCompany(this)"  class="form-control input-sm" style="width:100%" >
																<option value="">请选择</option>
																<c:forEach items="${companyList }" var="company" >
																	<option value="${company.companyId }" <c:if test="${company.companyId eq od.centralized_department }">selected="selected"</c:if>>${company.companyName }</option>
																</c:forEach>
															</select>
														</c:if>
														<c:if test="${'contract' eq type || 'purchase' eq type }">
															<input type="text"  value="${od.department_name }" id="department_name" name="department_name" class="form-control input-sm " style="width:100%"  readonly="readonly" />
															<input type="hidden"  value="${od.centralized_department }"  name="centralized_department"/>
														</c:if>
													</td>
													<td>
														<c:if test="${'frame' eq type }">
															<select id="account" name="account" onChange="changeAccount(this)"   class="form-control input-sm" style="width:100%" >
																<c:forEach items="${planDetailList }" var="planDetail" >
																	<c:if test="${planDetail.company eq od.centralized_department }">
																		<option value='${planDetail.account}' <c:if test="${planDetail.account eq od.account }">selected="selected"</c:if> >${planDetail.accountName}</option>
																	</c:if>
																</c:forEach>	
															</select>
														</c:if>
														<c:if test="${'contract' eq type || 'purchase' eq type }">
															<input type="text" value="${od.account_name }"  id="account_name" name="account_name" class="form-control input-sm " style="width:100%"  readonly="readonly" />
															<input type="hidden" value="${od.account }"   name="account"/>
														</c:if>
														<input type="hidden"  value="${od.budget_plan_detail }"  name="budget_plan_detail"/>
													</td>
													
													<td><input type="text" name="remarks" class="form-control input-sm  " value="${od.remarks }" style="width:100%"  /></td>
												</tr>
											</c:forEach>
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
function changeCompany(o){
	//获取主单位数量
	var company = $(o).val();
	if(isEmpty(company)){
		$(o).parent().next().children().empty(); 
		$(o).parent().next().children().append("<option value=''>请选择</option>");
	}else{
		$(o).parent().next().children().empty(); 
		$(o).parent().next().children().append("<option value=''>请选择</option>");
		<c:forEach items="${planDetailList }" var="planDetail" >
			var companyX = '${planDetail.company}';
			if(company == companyX){
				$(o).parent().next().children().append("<option value='${planDetail.account}'>${planDetail.accountName}</option>");
			}
		</c:forEach>	
	}	
}

function changeAccount(o){
	//获取主单位数量
	var account = $(o).val();
	if(isEmpty(account)){
		$(o).next().val('');
	}else{
		<c:forEach items="${planDetailList }" var="planDetail" >
			var accountX = '${planDetail.account}';
			if(account == accountX){
				$(o).next().val('${planDetail.id}');
			}
		</c:forEach>
	}	
}


//计算合计方法，如果有箱容，计算第二数量
function changeQuantity(o){
	//获取主单位数量
	var quantity = $(o).val();
	if(isEmpty(quantity)){
	}else{
		//获取主单位单价
		var price = $(o).parent().next().children().val();
		//求合计
		$(o).parent().next().next().children().val( parseFloat(quantity).multi(parseFloat(price),2));
		var conversion = $(o).next().val();//获取当前物料换算值
		if('' != conversion){
			$(o).next().next().val( parseFloat(quantity).multi(parseFloat(conversion),2));//给第二数量赋值
		}		
	}
	changeAmount();//计算总价
}
//给数量或金额进行四舍五入
function changeNumber(number){
	if(isEmpty($(number).val())){
	}else{
		$(number).val(parseFloat($(number).val()).add(0,2));	
	}
} 
//计算总价
function changeAmount(){
	var rows = $("#mxTbody tr");
	var orderAmount = parseFloat(0);
	var amount = $("input[name='amount']");
	for(var i = 1;i<rows.length ;i++){//第1行为空
		if(isEmpty(amount.eq(i).val())){
		}else{
			orderAmount = orderAmount + parseFloat(amount.eq(i).val());	
			amount.eq(i).val(parseFloat(amount.eq(i).val()).add(0,2));			
		}
	}
	$("#order_amount").val(orderAmount.add(0,2));
}
//保存订单方法
function save() {
	if (obj.form()) {
		var rows = $("#mxTbody tr");
		if(rows.length == 1){
			<c:if test="${'frame' eq type }">alert("请选择协议明细！");</c:if>
			<c:if test="${'contract' eq type }">alert("请选择合同明细！");</c:if>
			<c:if test="${'purchase' eq type }">alert("请选择物资审批表明细！");</c:if>
			return;
		}
		var main_quantity = $("input[name='main_quantity']");
		var delivery_date = $("input[name='delivery_date']");
		<c:if test="${'frame' eq type }">
			var centralized_department = $("select[name='centralized_department']");
			var account = $("select[name='account']");
		</c:if>
		var flag = true;
		for(var i = 1;i<rows.length ;i++){
			if (isEmpty(main_quantity.eq(i).val())) {
				alert("请填写第"+i+"行订单数量！");
				flag = false;
				return;
			}
			 if (isEmpty(delivery_date.eq(i).val())) {
				alert("请填写第"+i+"行交货日期！");
				flag = false;
				return;
			} 
			 <c:if test="${'frame' eq type }">
				if (isEmpty(centralized_department.eq(i).find("option:selected").val())) {
					alert("请选择第"+i+"行预算部门！");
					flag = false;
					return;
				}
				if (isEmpty(account.eq(i).find("option:selected").val())) {
					alert("请选择第"+i+"行预算科目！");
					flag = false;
					return;
				} 
			</c:if>
		}
		if(flag){
			changeDetails("mxtable", "orderDetailList");
			document.orderForm.submit();
		}
	} 
}


var object;
//获取物资审批表编号
function checkPurchase(o){
	var rows = $("#mxTbody tr");
	if(rows.length > 1){
		if(confirm('如果选择物资审批表编号，将删除已有明细，是否删除？')){
			$("#mxTbody tr:gt(0)").remove();
			object = $(o).parent().parent().parent().parent();//获取当前点击对象
			modal(1100,850,'${ctx}/materialPurchase/publicMaterialPurchase2.do');
		}
	}else{
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1100,850,'${ctx}/materialPurchase/publicMaterialPurchase2.do');
	}
}
function handleMaterialPurchase(materialPurchase) {
	var materialsPurchaseId="";
	var purchase_no="";
	for(var i=0;i<materialPurchase.length;i++){
		if(null != materialPurchase[i].id && '' != materialPurchase[i].id ){
			 materialsPurchaseId += materialPurchase[i].id + ",";
			 purchase_no += materialPurchase[i].purchase_no + ",";
		}
	}
	purchase_no = purchase_no.substring(0,purchase_no.length - 1);
	materialsPurchaseId = materialsPurchaseId.substring(0,materialsPurchaseId.length - 1);
	object.find("input[name='purchase_no']").val(purchase_no);
	object.find("input[name='materialsPurchaseId']").val(materialsPurchaseId);
}
//获取物资

function checkPurchaseDetail(o) {
	var rows = $("#mxTbody tr");
	var frame_head = $("#frame_id").val();//框架协议ID
	var order_frame = $("#id").val();//订单ID
	var materialsPurchaseIds = $("#materialsPurchaseId").val();//物资审批表ID
	if('' == frame_head && rows.length == 1){
		alert("请先选择框架协议编号，再增加明细！");
		return;
	}else if('' == materialsPurchaseIds && rows.length == 1){
		alert("请先选择物资审批表编号，再增加明细！");
		return;
	}else{
		var details = "";
		$("#mxTbody input[name='purchase_detail_id']").each(function(i) {
			if ($(this).val() != "") {
				details = details + $(this).val()+",";
			}
		});
		console.log(details)
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1100,850,'${ctx}/materialPurchase/publicDetailByFrameId.do?frame_head='+frame_head+'&materialsPurchaseIds='+materialsPurchaseIds+'&purchase_detail_ids='+details+'&order_frame='+order_frame);
	}
}

function handleDetail(detail) {
	if(detail.length > 0){
		var tr;
		for(var i=0;i<detail.length;i++){
			tr = addTr('#mxTbody', 0);
			tr.find("input[name='purchase_head_id']").val(detail[i].purchase_head_id); 
			tr.find("input[name='purchase_detail_id']").val(detail[i].id); 
			tr.find("input[name='frame_detail_id']").val(detail[i].frame_detail_id); 
			tr.find("input[name='name']").val(detail[i].name);
			tr.find("input[name='material_id']").val(detail[i].material);
			tr.find("input[name='spec']").val(detail[i].spec);
			tr.find("input[name='unit']").val(detail[i].unit);
			tr.find("input[name='main_price']").val(parseFloat(detail[i].mainPrice).multi(1,2)); 
			tr.find("input[name='main_quantity']").val(parseFloat(detail[i].quantity).multi(1,2)); 
			var amount = parseFloat(detail[i].quantity).multi(parseFloat(detail[i].mainPrice),2);
			tr.find("input[name='amount']").val(amount);
			if('' != detail[i].conversion){
				tr.find("input[name='secondary_price']").val(parseFloat(detail[i].secondaryPrice).multi(1,2));
				tr.find("input[name='conversion']").val(detail[i].conversion);
				tr.find("input[name='secondary_quantity']").val(parseFloat(detail[i].secondaryQuantity).multi(1,2)); 
			}
					
			tr.find("input[name='budget_plan_detail']").val(detail[i].budget_plan_detail);
			tr.find("input[name='centralized_department']").val(detail[i].centralized_department);
			tr.find("input[name='account']").val(detail[i].account);
			tr.find("input[name='department_name']").val(detail[i].department_name);
			tr.find("input[name='account_name']").val(detail[i].account_name);
			console.log(tr);
		}
	}
	changeAmount();//计算总价
}


//选择框架编号
function checkFrame(o) {
	var rows = $("#mxTbody tr");
	if(rows.length > 1){
		if(confirm('如果选择协议编号，将删除已有明细，是否删除？')){
			$("#mxTbody tr:gt(0)").remove();
			object = $(o).parent().parent().parent().parent();//获取当前点击对象
			modal(1000, 650, '${ctx}/frame/publicQuery.do');
		}
	}else{
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1000, 650, '${ctx}/frame/publicQuery.do');
	}
	
}
//将框架协议的内容赋值到表头字段中
function handleFrame(frame) {
	object.find("input[name='frame_id']").val(frame.id);
	object.find("input[name='frameNo']").val(frame.frameNo);
	object.find("input[name='supplier_id']").val(frame.supplier);
	object.find("input[name='supplier_name']").val(frame.supplierName);
	object.find("input[name='seller_contact']").val(frame.linkman);
	object.find("input[name='seller_tel']").val(frame.tel);
	object.find("input[name='bank_account_number']").val(frame.bank_account_number);
	object.find("input[name='seller_fax']").val(frame.fax);
	object.find("input[name='seller_address']").val(frame.address);
}
//选择框架协议明细
function checkFrameDetail(o) {
	var rows = $("#mxTbody tr");
	var id = $("#frame_id").val();
	if(null == id && rows.length == 1){
		alert("请先选择框架协议编号，再增加明细！");
		return;
	}else{
		var details = "";
		$("#mxTbody input[name='frame_detail_id']").each(function(i) {
			if ($(this).val() != "") {
				details = details + $(this).val()+";";
			}
		});
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1000, 650, '${ctx}/frame/publicFrameDetail.do?frameHead='+id+'&details='+details);
	}
}
//将框架协议明细的内容赋值到表体字段中，框架中不赋值数量
function handleFrameDetail(frameDetail) {
	 if(frameDetail.length > 0){
		var tr;
		for(var i = 0; i < frameDetail.length ; i++){
			tr = addTr('#mxTbody', 0);
			tr.find("input[name='frame_detail_id']").val(frameDetail[i].id);
			tr.find("input[name='name']").val(frameDetail[i].name);
			tr.find("input[name='material_id']").val(frameDetail[i].material);
			tr.find("input[name='spec']").val(frameDetail[i].spec);
			tr.find("input[name='unit']").val(frameDetail[i].unit);
			tr.find("input[name='main_price']").val(parseFloat(frameDetail[i].mainPrice).multi(1,2));
			if('' != frameDetail[i].conversion){
				tr.find("input[name='secondary_price']").val(parseFloat(frameDetail[i].secondaryPrice).multi(1,2));
				tr.find("input[name='conversion']").val(frameDetail[i].conversion);
			}	
		}
	} 
}
//选择合同编号
function checkContract(o) {
	var rows = $("#mxTbody tr");
	if(rows.length > 1){
		if(confirm('如果选择合同编号，将删除已有明细，是否删除？')){
			$("#mxTbody tr:gt(0)").remove();
			object = $(o).parent().parent().parent().parent();//获取当前点击对象
			modal(1000, 650, '${ctx}/purchaseContract/publicQuery.do');
		}
	}else{
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1000, 650, '${ctx}/purchaseContract/publicQuery.do');
	}
}
//将合同的内容赋值到表头字段中
function handleContract(contract) {
	object.find("input[name='contract_id']").val(contract.id);
	object.find("input[name='contractNo']").val(contract.contractNo);
	object.find("input[name='supplier_id']").val(contract.supplier);
	object.find("input[name='supplier_name']").val(contract.supplierName);
	object.find("input[name='seller_contact']").val(contract.linkman);
	object.find("input[name='seller_tel']").val(contract.tel);
	object.find("input[name='bank_account_number']").val(contract.bank_account_number);
	object.find("input[name='seller_fax']").val(contract.fax);
	object.find("input[name='seller_address']").val(contract.address);
}
//选择合同明细
function checkContractDetail(o) {
	var rows = $("#mxTbody tr");
	var id = $("#contract_id").val();
	if(null == id && rows.length == 1){
		alert("请先选择合同编号，再增加明细！");
		return;
	}else{
		var details = "";
		$("#mxTbody input[name='contract_detail_id']").each(function(i) {
			if ($(this).val() != "") {
				details = details + $(this).val()+";";
			}
		});
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1000, 650, '${ctx}/purchaseContract/publicContractDetail.do?contractHead='+id+'&details='+details);
	}
}
//将合同明细的内容赋值到表体字段中，并计算金额，第二数量，总价
function handleContractDetail(contractDetail) {
	 if(contractDetail.length > 0){
		 var tr;
		for(var i = 0; i < contractDetail.length ; i++){
			tr = addTr('#mxTbody', 0);
			tr.find("input[name='contract_detail_id']").val(contractDetail[i].id);
			tr.find("input[name='name']").val(contractDetail[i].name);
			tr.find("input[name='material_id']").val(contractDetail[i].material);
			tr.find("input[name='spec']").val(contractDetail[i].spec);
			tr.find("input[name='unit']").val(contractDetail[i].unit);
			tr.find("input[name='main_price']").val(contractDetail[i].mainPrice);
			tr.find("input[name='main_quantity']").val(parseFloat(contractDetail[i].quantity).multi(parseFloat(1),2));
			var amount = parseFloat(contractDetail[i].quantity).multi(parseFloat(contractDetail[i].mainPrice),2);
			tr.find("input[name='amount']").val(amount);
			if('' != contractDetail[i].conversion){
				tr.find("input[name='conversion']").val(contractDetail[i].conversion);
				tr.find("input[name='secondary_price']").val(parseFloat(contractDetail[i].secondaryPrice).multi(1,2));
				var secondary_quantity = parseFloat(contractDetail[i].quantity).multi(parseFloat(contractDetail[i].conversion),2);
				tr.find("input[name='secondary_quantity']").val(secondary_quantity);
			}
			
			tr.find("input[name='budget_plan_detail']").val(contractDetail[i].budget_plan_detail);
			tr.find("input[name='centralized_department']").val(contractDetail[i].centralized_department);
			tr.find("input[name='account']").val(contractDetail[i].account);
			tr.find("input[name='department_name']").val(contractDetail[i].department_name);
			tr.find("input[name='account_name']").val(contractDetail[i].account_name);
			
		}
		changeAmount();
	} 
}
//删除明细
function delTr1(table) {
	var vTb = $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if (vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
	changeAmount();
}
//手机号码验证
jQuery.validator.addMethod("isTel", function(value, element) {     
	var length = value.length;   
	var mobile = /^(13|14|15|18)\d{9}$/; 
	var tel = /^\d{3,4}-?\d{7,9}$/;    //电话号码格式010-12345678 
	if(value.substring(0,1)==1){
		return this.optional(element) || (length == 11 && mobile.test(value)); 
	}else{
		return this.optional(element) || (tel.test(value));
	}
},
	"请正确填写电话号码"
);
//传真验证       
jQuery.validator.addMethod("isFaxNo", function(value, element) {     
	var length = value.length;   
	var mobile = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;   
	return this.optional(element) || (length <= 12 && mobile.test(value));       
},
	"请正确填写传真号码"
);
//邮编验证
jQuery.validator.addMethod("isZipCode", function(value, element) {     
	var length = value.length;   
	var zipCode = /^[0-9]{6}$/; 
	return this.optional(element) || (length == 6 && zipCode.test(value)); 
},
	"请正确填写邮政编码"
);
	//保存校验
	var obj = $("#formValidate").validate({
		rules : {
			<c:if test="${'frame' eq type || 'purchase' eq type }">
			frameNo : {
				required : true
			},
			</c:if>
			<c:if test="${'contract' eq type }">
			contractNo : {
				required : true
			},
			</c:if>
			<c:if test="${'purchase' eq type }">
			purchase_no : {
				required : true
			},
			</c:if>
			buyer_tel : {
				required : true,
				isTel:true
			},
			/* buyer_fax : {
				required : true,
				isFaxNo:true
			},
			buyer_zip_code : {
				required : true,
				isZipCode : true
			},
			buyer_address : {
				required : true,
				maxlength:200
			}, */
			 seller_contact : {
				required : true,
				maxlength:10
			},
			seller_tel : {
				required : true,
				isTel:true
			},
			/* seller_fax : {
				required : true,
				isFaxNo:true
			}, */
			seller_address : {
				required : true,
				maxlength:200
			},
			
			delivery_contact : {
				required : true,
				maxlength:10
			},
			delivery_call : {
				required : true,
				isTel:true
			},
			delivery_address : {
				required : true,
				maxlength:200
			}, 	
			transportation_clause : {
				required : true,
				maxlength:2000
			}, 	
			buyer_explain : {
				maxlength:1000
			}
		},
		messages : {
			<c:if test="${'frame' eq type || 'purchase' eq type }">
			frameNo : {
				required : "框架协议编号不能为空！"
			},
			</c:if>
			<c:if test="${'contract' eq type }">
			contractNo : {
				required : "合同编号不能为空！"
			},
			</c:if>	
			<c:if test="${'purchase' eq type }">
			
			purchase_no : {
				required : "物资审批表编号不能为空！"
			},
			</c:if>
			buyer_tel : {
				required : "买方电话不能为空！",
				isTel:"请正确填写电话号码"
			},
			/* buyer_fax : {
				required : "买方传真不能为空！",
				isFaxNo:"请正确填写传真号码"
			},
			buyer_zip_code : {
				required : "买方邮编不能为空！",
				isZipCode : "请正确填写邮政编码"
			},
			buyer_address : {
				required : "买方地址不能为空！",
				maxlength: "买方地址长度不能超过200！"
			}, */
			seller_contact : {
				required : "卖方联系人不能为空！",
				maxlength: "卖方联系人长度不能超过10！"
			},
			seller_tel : {
				required : "卖方电话不能为空！",
				isTel:"请正确填写电话号码"
			},
			/* seller_fax : {
				required : "卖方传真不能为空！",
				isFaxNo:"请正确填写传真号码"
			}, */
			seller_address : {
				required : "卖方地址不能为空！",
				maxlength: "卖方地址长度不能超过200！"
			},
			
			delivery_contact : {
				required : "交货联系人不能为空！",
				maxlength: "交货联系人长度不能超过10！"
			},
			delivery_call : {
				required : "交货电话不能为空！",
				isTel:"请正确填写电话号码"
			},
			delivery_address : {
				required : "交货地址不能为空！",
				maxlength: "交货地址长度不能超过200！"
			}, 
			transportation_clause : {
				required : "运输条款不能为空！",
				maxlength: "运输条款长度不能超过2000！"
			}, 	
			buyer_explain : {
				maxlength:"买方说明长度不能超过1000！"
			}
		}
	});
	$(document).ready(function(){
		$("input[type='checkbox']").iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue'
		});
		//复选框样式生成
		$('#quanxuan2').on('ifChecked', function(event){
			$("input[type='checkbox']").iCheck('check');
		});
		$('#quanxuan2').on('ifUnchecked', function(event){
			$("input[type='checkbox']").iCheck('uncheck');
		});
	});
</script>
</html>