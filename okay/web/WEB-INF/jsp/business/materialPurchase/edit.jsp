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
			<form:form id="formValidate" name="planForm" action="" commandName="planForm">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">采购申请管理>>物资采购审批表>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<input type="hidden" value="${materialPurchaseHead.input_userid }" name="input_userid" id="input_userid">
										<input type="hidden" value="${materialPurchaseHead.purchase_department }" name="purchase_department" id="purchase_department"> 
										<input type="hidden" value="${materialPurchaseHead.centralized_department }" name="centralized_department" id="centralized_department">
										<input type="hidden" value="${materialPurchaseHead.purchase_type }" name="purchase_type" id="purchase_type">  
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>物资编号</th>
												<td><input type="text" name="purchase_no" id="purchase_no" value="${materialPurchaseHead.purchase_no }" class="form-control input-sm" readonly="readonly" /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>归口部门</th>
												<td>
													<input type="text" name="company_name" id="company_name" value="${materialPurchaseHead.company_name }" class="form-control input-sm" readonly="readonly" />
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>填报日期</th>
												<td><input type="text" name="input_date" id="input_date" value="<fmt:formatDate value="${materialPurchaseHead.input_date}" pattern="yyyy-MM-dd"/>" class="form-control input-sm" readonly="readonly" /></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>采购时限</th>
												<td style="width: 8.5%">
													<div class="input-group" style="width: 100%">
														<input type="text" name="purchase_time_limit" readonly="readonly" id="purchase_time_limit" class="form-control input-sm form_datetime"  value="<fmt:formatDate value="${materialPurchaseHead.purchase_time_limit}" pattern="yyyy-MM-dd"/>"/> 
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>申购部门</th>
												<td>
													<input type="text" name="company_name" id="company_name" value="${materialPurchaseHead.company_name }" class="form-control input-sm" readonly="readonly" />
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>申购人</th>
												<td><input type="text" name="realName" id="realName" value="${materialPurchaseHead.realName }" class="form-control input-sm" readonly="readonly" /></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>电话号码</th>
												<td><input type="text" name="contract_number" id="contract_number" value="${materialPurchaseHead.contract_number }" class="form-control input-sm" maxlength="11"/></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>采购说明</th>
												<td colspan="3"><textarea name="purchase_explain" class="form-control input-sm" id="purchase_explain" style="resize: none;maxlength:200;" rows="2" cols="117" >${materialPurchaseHead.purchase_explain }</textarea></td> 
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<security:authorize ifAnyGranted="ROLE_MATERIALPURCHASE_INSERT">
														<input type="button" value="保存 " onClick="add(mxtable)" class="btn btn-primary btn-xs" />
													</security:authorize>
													<security:authorize ifAnyGranted="ROLE_MATERIALPURCHASE_SUBMIT">
														<input type="button" value="提交 " onClick="commitAndAdd(mxtable)" class="btn btn-primary btn-xs" />
													</security:authorize>
													<c:if test="${not empty materialPurchaseHead.id}">
														<a class="btn btn-primary btn-xs" href="${ctx }/materialPurchase/view.do?id=${materialPurchaseHead.id}">返回</a>
													</c:if>
													<c:if test="${empty materialPurchaseHead.id}">
														<a class="btn btn-primary btn-xs" href="${ctx}/materialPurchase/query.do">返回</a>
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
									<a class="btn btn-primary btn-xs" onClick="addMX()">
										<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
									</a> 
									<a class="btn btn-primary btn-xs" onClick="delTr('#mxtable')">
										<span class="glyphicon glyphicon-minus-sign"></span>&nbsp;删除明细
									</a> 
									<input type="text" readonly="readonly" id="detail" name="detail" style="BACKGROUND-COLOR: transparent; border-style: none; width: 1px;">
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body" style="max-height: 600px">
										<table id="mxtable" class="table table-striped table-condensed table-hover">
											<tr id="title">
												<th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
												<th>物资名称</th>
												<th>规格型号</th>
												<th>计量单位</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>数量</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>单价(元)</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>金额(元)</th>
												<th>年度预算</th>
												<th>预算使用</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>预算科目</th>
												<th>库存</th>
											</tr>
											<tbody id="mxTbody">
												<tr style="display: none">
													<td><input type="checkbox" name="ids" style="width: 100%"/></td>
													<td>
														<div class="input-group">
															<input type="text" name="name" class="form-control input-sm" readonly="readonly" style="width: 100%"/> 
															<span class="input-group-btn">
																<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
																<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
															</span>
														</div> 
														<input type="hidden" name="material" />
														<input type="hidden" name="conversion" />
													</td>
													<td><input type="text" name="spec" class="form-control input-sm w100" maxlength="100" readonly="readonly" style="width: 100%"/></td>
													<td><input type="text" name="unit" class="form-control input-sm" maxlength="100" readonly="readonly" style="width: 100%"/></td>
													<td><input type="text" id="main_Quantity" name="main_Quantity" class="form-control input-sm " maxlength="500" style="width: 100%" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="return changeNum(this)"/></td>
													<td><input type="text" id="main_Price" name="main_Price" class="form-control input-sm "  maxlength="4000" onblur="checkprice(this)"  style="width: 100%" onChange="return changePrice(this)"/></td>
													<td><input type="text" id="amount" name="amount" class="form-control input-sm  "  onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" style="width: 100%" onChange="return changePurchaseAmount(this)" /></td>
													<td><input type="text" name="budgetAmount" class="form-control input-sm w100 " style="width: 100%" readonly="readonly" /></td>
													<td><input type="text" name="budgetuse" class="form-control input-sm  " style="width: 100%" readonly="readonly" /></td>
													<td>
														<select onChange="return changeAccount(this)" id="budget_plan_detail" name="budget_plan_detail" class="form-control input-sm w100">
															<option value="">请选择</option>
															<c:forEach items="${planDetail}" var="c">
																<option budgetAmount="${c.budgetAmount}" residualAmount="${c.residualAmount }" value="${c.id }">${c.account }</option>
															</c:forEach>
														</select>
													</td>
													<td><input type="text" name="stock" class="form-control input-sm "  style="width: 100%" readonly="readonly" /></td>
												</tr>
												<!-- 编辑页时使用 -->
												<c:if test="${not empty materialPurchaseHead.id }">
													<c:forEach items="${materialPurchaseHead.materialPurchaseDetailList }" var="c">
												<tr>
													<td><input type="checkbox" name="ids" /></td>
													<%-- <td><input type="text" name="purchase_row_no" class="form-control input-sm w100" maxlength="100" readonly="readonly" value="${c.purchase_row_no }"/></td> --%>
													<td>
														<div class="input-group">
															<input type="text" style="width: 100%" name="name" class="form-control input-sm" readonly="readonly" value="${c.name }"/> 
															<span class="input-group-btn">
																<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
																<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
															</span>
														</div> 
														<input type="hidden" name="material" value="${c.material }"/>
														<input type="hidden" name="conversion" value="${c.conversion }"/>
													</td>
													<td><input type="text" style="width: 100%" name="spec" class="form-control input-sm w100" maxlength="100" readonly="readonly" value="${c.spec }"/></td>
													<td><input type="text" style="width: 100%" name="unit" style="width:100px" class="form-control input-sm" maxlength="100" readonly="readonly" value="${c.unit }"/></td>
													<td><input type="text" style="width: 100%" id="main_Quantity" name="main_Quantity" class="form-control input-sm w100" maxlength="500" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="return changeNum(this)" value="${c.main_Quantity }"/></td>
													<td><input type="text" style="width: 100%" id="main_Price" name="main_Price" class="form-control input-sm w100"  maxlength="4000" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="return changePrice(this)" value="${c.main_Price }"/></td>
													<td><input type="text" style="width: 100%" id="amount" name="amount" class="form-control input-sm  w100"  onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="return changePurchaseAmount(this)" value="${c.amount }"/></td>
													<td><input type="text" style="width: 100%" name="budgetAmount" class="form-control input-sm  w100"  readonly="readonly" value="${c.budgetAmount }"/></td>
													<td><input type="text" style="width: 100%" name="budgetuse" class="form-control input-sm  w100"  readonly="readonly" value="${c.budgetuse }"/></td>
													<td>
														<input name="budget" type="hidden" value="${c.budget_plan_detail }"/>
														<select onChange="return changeAccount(this)" id="budget_plan_detail" name="budget_plan_detail" class="form-control input-sm w100" >
															<option value="">请选择</option>
															<c:forEach items="${planDetail}" var="ch">
																<option budgetAmount="${ch.budgetAmount }" residualAmount="${ch.residualAmount }" value="${ch.id }">${ch.account }</option>
															</c:forEach>
														</select>
													</td>
													<td><input type="text" style="width: 100%" name="budgetuse" class="form-control input-sm  w100"  readonly="readonly" value="${c.stock }"/></td>
												</tr>
													</c:forEach>
												</c:if>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="6" style="text-align: right">合计：</td>
													<td colspan="6">
														<input type="text" name="all_amount" id="all_amount" class="form-control input-sm  w100" readonly="readonly" ignore />
													</td>
												</tr>
											</tfoot>
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
//页面加载的时候选中下拉框
$(function(){
	$("input[name='budget']").each(function(){
		$(this).next().find("option[value="+$(this).val()+"]").attr("selected",true);
	});
});
var object;
function checkMtorder(o) {
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000, 650, '${ctx}/material/publicCommodity.do');
}
function handleMaterial(material) {
	//查询库存数量
	$.ajax({
		type : "POST",
		url: "${ctx}/materialPurchase/selectStock.do", 
		data:{material:material.id},
		success: function(data){
			object.find("input[name='stock']").val(data);
		}
	});
	object.find("input[name='material']").val(material.id);
	object.find("input[name='name']").val(material.name);
	object.find("input[name='unit']").val(material.unit);
	object.find("input[name='spec']").val(material.spec);
	object.find("input[name='conversion']").val(material.conversion);
}
//增加明细
function addMX() {
	addTr('#mxTbody', 0);
	$('#quanxuan').on('ifChecked', function(event) {
		$('input[name="ids"]').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event) {
		$('input[name="ids"]').iCheck('uncheck');
	});
}
//删除明细
function delTr(table) {
	delTrCommon(table);
	changePurchaseAmount();//触发合计事件	
}
//改变数量计算总金额
function changeNum(o) {
	var count = 0;
	if ($(o).val() != "" && $(o).parent().next().children().val() != "") {
		count = Math.round((parseFloat($(o).parent().next().children().val())*parseFloat($(o).val()))*100)/100;
	}
	$(o).parent().next().next().children().val(count);
	changePurchaseAmount(o)
}
//改变价格计算总金额
function changePrice(o) {
	var count = 0;
	if ($(o).val() != "" && $(o).parent().prev().children().val() != "") {
		count = Math.round((parseFloat($(o).parent().prev().children().val())*parseFloat($(o).val()))*100)/100;
	}
	$(o).parent().next().children().val(count);
	changePurchaseAmount(o)
}
//改变预算科目
function changeAccount(o) {		
	$(o).parent().prev().prev().children().val($(o).find("option:selected").attr("budgetAmount"));
	$(o).parent().prev().children().val($(o).find("option:selected").attr("residualAmount"));
}
//合计
function changePurchaseAmount(o) {
	var count = 0;
	$("#mxTbody input[name='amount']").each(function(i) {
		if ($(this).val() != "") {
			count = parseFloat(count) + parseFloat($(this).val());
		}
	});
	$("#all_amount").val(count);
}
//编辑页初始化合计
$(function(){ 
	var count = 0;
	$("#mxTbody input[name='amount']").each(function(i) {
		if ($(this).val() != "") {
			count = parseFloat(count) + parseFloat($(this).val());
		}
	});
	$("#all_amount").val(count);		
});
//保存
function add(oTb){
   var url = '${ctx}/materialPurchase/save.do?id=${materialPurchaseHead.id}';   
   $("#formValidate").attr('action',url);    
   save(oTb);
}
//提交
function commitAndAdd(oTb){
   var url = "${ctx}/materialPurchase/save.do?id=${materialPurchaseHead.id}&type=1";    
   $("#formValidate").attr('action',url);    
   save(oTb);
}
// 保存校验
function save(oTb) {
	var material = $("input[name='material']");
    var purchase_num = $("input[name='main_Quantity']");
	var price = $("input[name='main_Price']");
	var budget_plan_detail = $("select[name='budget_plan_detail']");
	var amount = $("input[name='amount']");
	var purchase_explain = $("textarea[name='purchase_explain']");
	var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
	if(!myreg.test($("#contract_number").val())&&$("#contract_number").val()!="") 
	{ 
	    alert('请输入有效的手机号码！');
	    contract_number.focus();
	    return; 
	} 
	if(isEmpty(purchase_explain.val())){
		alert("请填写采购说明");
		purchase_explain.focus();
		return;
	}
	if (oTb.rows.length == 3) {
		alert("请添加明细!");
		return;
	}
	var count = material.length;
	var str="";
	for (i =1 ; i < count; i++) {
		if (isEmpty(material.eq(i).val())) {
			alert("请选择物资名称！");
			return;
		}
		if (str.indexOf(material.eq(i).val())>=0) {
			alert("物资不能重复！");
			return;
		}else{
			str=str+","+material.eq(i).val();
		}
		if (isEmpty(purchase_num.eq(i).val())){
			alert("请输入数量！");
			purchase_num.eq(i).focus();
			return false;
		}
		if(!checkprice(purchase_num.eq(i).val())){
			alert("请输入合法的单价，请保留2位小数");
			purchase_num.eq(i).focus();
			return false;
		}
		if (isEmpty(price.eq(i).val())) {
			alert("请输入单价！");
			price.eq(i).focus();
			return false;
		}
		if(!checkprice(price.eq(i).val())){
			alert("请输入合法的单价，请保留2位小数");
			price.eq(i).focus();
			return false;
		}
		if (isEmpty(amount.eq(i).val())) {
			alert("请输入金额！");
			amount.eq(i).focus();
			return false;
		}
		if (isEmpty(budget_plan_detail.eq(i).val())) {
			alert("请选择预算科目！");
			budget_plan_detail.eq(i).focus();
			return false;
		}
	} 
	changeDetails("mxtable", "materialPurchaseDetailList");
	document.planForm.submit();
}



</script>
</html>