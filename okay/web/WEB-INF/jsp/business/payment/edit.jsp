<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑付款信息</title>
</head>


<body>

<div id="context">
  <div class="container">
<form:form id="formValidate" commandName="payment" name="payment" action="${ctx}/payment/save.do" method="post">
<div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
			<div class="panel panel-primary">
	            <div class="panel-heading">
					<h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
					<span class="label label-primary">付款管理>>付款登记>>编辑</span></a></h4>
	            </div>
	              <div id="collapseOne" class="panel-collapse collapse in" >
					<div class="panel-body">
						<table id="queryTable" class="table table-condensed">
						    <tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>付款流水号</th>
								<td>
								 <input type="text" name="paymentNo" id="paymentNo" Class="form-control input-sm" value="${payment.paymentNo}" />
								 <input type="hidden" name="id" id="id" value="${payment.id}" />
								 <input type="hidden" name="state" id="state" value="${payment.state}" />
								 <c:if test="${payment.state!='已付款'}">
								 <input type="hidden" name="amountPaid" id="amountPaid" value="${payment.amountPaid}" />
								 </c:if>
								</td>
								 <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>填报日期</th>
								 <td>
								 <input type="text"  name="fillingDate" id="fillingDate" value="<fmt:formatDate value="${payment.fillingDate}" pattern="yyyy-MM-dd"/>"  class="form-control input-sm form_datetime" readonly />
								 </td>
								 <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>供应商</th>
								 <td>
									<input type="hidden" name="supplier" id="supplier" value="${payment.supplier}"/>
									<input type="text" name="supplier_name" id="supplier_name" style="width:80%" value="${payment.supplier_name}" class="form-control input-sm" readonly/>
									<span class="input-group-btn">
										<button type="button" class="btn btn-primary btn-sm" style="height:130%" onClick="checkAcorder1(this);">查询</button>
									</span>
								</td>
							</tr>
							<tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>供应商开户银行</th>
								<td>
								   <input type="text"  name="opening_bank" id="opening_bank" value="${payment.opening_bank}"  class="form-control input-sm" readonly="readonly"/>
								</td>
								<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>供应商银行账号</th>
								<td>
								   <input type="text"  name="bank_account_number" id="bank_account_number" value="${payment.bank_account_number}"  class="form-control input-sm" readonly/>
								</td>
								<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>付款金额</th>
								<td>
									<c:if test="${payment.state!='已付款'}">
										<input id="amount"  name="amount" value="${payment.amount}" Class="form-control input-sm"/>
									</c:if>
									<c:if test="${payment.state=='已付款'}">
										<input id="amount"  name="amount" value="${payment.amount}" Class="form-control input-sm" readonly/>
									</c:if>
								</td>
							</tr>
							<tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>发票单编号</th>
								<td colspan="4">
									<input type="hidden" name="invoiceIds" id="invoiceIds" value="${payment.invoiceIds}"/>
									<input type="text" name="invoiceNos" id="invoiceNos" style="width:92%" value="${payment.invoiceNos}" class="form-control input-sm" readonly/>
									<c:if test="${payment.state!='已付款'}">
										<span class="input-group-btn">
											<button type="button" class="btn btn-primary btn-sm" style="height:130%" onClick="checkAcorder2(this);">查询</button>
										</span>
									</c:if>
								</td>
								<td></td>
							</tr>
						    <tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>入库单编号</th>
								<td colspan="4">
									<input type="hidden" name="storageIds" id="storageIds" value="${payment.storageIds}"/>
									<input type="text" name="storageNos" id="storageNos" style="width:92%" value="${payment.storageNos}" class="form-control input-sm" readonly/>
									<c:if test="${payment.state!='已付款'}">
										<span class="input-group-btn">
											<button type="button" class="btn btn-primary btn-sm" style="height:130%" onClick="checkAcorder3(this);">查询</button>
										</span>
									</c:if>
								</td>
								<td></td>
							</tr>
							<tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>协议编号</th>
								<td colspan="4">
									<input type="text" name="frameNos" id="frameNos" style="width:92%" value="${payment.frameNos}" class="form-control input-sm" readonly/>
								</td>
								<td></td>
							</tr>
							<tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>合同编号</th>
								<td colspan="4">
									<input type="text" name="contractNos" id="contractNos" style="width:92%" value="${payment.contractNos}" class="form-control input-sm" readonly/>
								</td>
								<td></td>
							</tr>
							<tr>
								<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>付款说明</th>
								<td colspan="4">
									<c:if test="${payment.state!='已付款'}">
										<textarea  name="explain" id="explain" style="width:92%"  class="form-control input-sm" >${payment.explain}</textarea>
									</c:if>
									<c:if test="${payment.state=='已付款'}">
										<textarea  name="explain" id="explain" style="width:92%"  class="form-control input-sm" readonly>${payment.explain}</textarea>
									</c:if>
								</td>
								<td></td>
							</tr>
							<c:if test="${payment.state=='已付款'}">
								<tr>
								<th> <span class="glyphicon glyphicon-asterisk"style="color: white"></span>已付金额</th>
								<td><input id="amountPaid"  name="amountPaid"  value="${payment.amountPaid}"  Class="form-control input-sm" /></td>
								<td></td><td></td><td></td><td></td>
								</tr>
							</c:if>
							<tr>
								<td colspan="6" id="tools">
									<input type="button" value="保存 " onClick="formSubmit()" class="btn btn-primary btn-xs" />
							        <a class="btn btn-primary btn-xs" href="${ctx }/payment/query.do">返回</a>
								</td>
							</tr>
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
<script type="text/javascript">
//获取供应商
var object;
function checkAcorder1(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000,850,'${ctx}/supplier/publicSupplierQuery.do');
}
function handleSupplier(supplier) {
	object.find("input[name='supplier']").val(supplier.id);
	object.find("input[name='supplier_name']").val(supplier.supplier_name);
	object.find("input[name='opening_bank']").val(supplier.opening_bank);
	object.find("input[name='bank_account_number']").val(supplier.bank_account_number);
	console.log($("#id").val())
}
//获取发票单
function checkAcorder2(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	var paymentId=$("#id").val();
	modal(1000,850,'${ctx}/invoice/publicQuery.do?paymentId='+paymentId);
}
function handleInvoice(Invoice){
	var invoiceIds="";
	var invoiceNos="";
	for(var i=0;i<Invoice.length;i++){
		invoiceIds += Invoice[i].invoiceId + ",";
		invoiceNos += Invoice[i].invoiceNo + ",";
	}
	invoiceIds = invoiceIds.substring(0,invoiceIds.length - 1);
	invoiceNos = invoiceNos.substring(0,invoiceNos.length - 1);
	object.find("input[name='invoiceIds']").val(invoiceIds);
	object.find("input[name='invoiceNos']").val(invoiceNos);
	console.log($("#id").val())
}
//获取入库单
function checkAcorder3(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	var paymentId=$("#id").val();
	modal(1000,850,'${ctx}/storage/publicQuery.do?paymentId='+paymentId);
}
function handleStorage(Storage){
	var storageIds="";
	var storageNos="";
	var frameNos="";
	var contractNos="";
	for(var i=0;i<Storage.length;i++){
		storageIds += Storage[i].storage_id + ",";
		storageNos += Storage[i].storage_no + ",";
		if(Storage[i].frame_no!=""){
			frameNos += Storage[i].frame_no+",";
		}
		if(Storage[i].contract_no!=""){
			contractNos += Storage[i].contract_no+",";
		}
	}
	storageIds = storageIds.substring(0,storageIds.length - 1);
	storageNos = storageNos.substring(0,storageNos.length - 1);
	frameNos = frameNos.substring(0,frameNos.length - 1);
	contractNos = contractNos.substring(0,contractNos.length - 1);
	object.find("input[name='storageIds']").val(storageIds);
	object.find("input[name='storageNos']").val(storageNos);
	object.find("input[name='frameNos']").val(frameNos);
	object.find("input[name='contractNos']").val(contractNos);
	console.log($("#id").val())
}

	function formSubmit(){
		if($("#supplier_name").val()==""||$("#supplier_name").val()==null){
			alert("请选择供应商");
			return;
		}
		if(obj.form()){
			var amount = $("input[name=amount]").val();
			var storageIds = $("input[name=storageIds]").val();
			var invoiceIds = $("input[name=invoiceIds]").val();
			console.log(amount+"sss"+storageIds+"生生世世"+invoiceIds);
			$.ajax({
				url:"${ctx}/payment/checkAmount.do",
				datType : "json",
				data : {
					amount:amount,
					storageIds:storageIds,
					invoiceIds:invoiceIds 
				},
				type : "post",
				success:function(result){
					if(result!="yes"){
						alert(result);
						return;
					}else{
						document.getElementById("formValidate").submit();
					}
				}
			});
		}
	}
	
	var id=$("#id").val();
	var obj = $("#formValidate").validate({	
		rules: {
			paymentNo: {
				required: true,
				remote:{
 					type:"POST",
 					url:"${ctx}/payment/checkRepeat.do?id="+id, 
 					data:{
 						paymentNo:function(){
 							return $("#paymentNo").val();
 						}
	 				}
				}
			},
			fillingDate:{
				required: true
			},
			amount: {
				required: true,
				number:true,
				min:0
			}
		},
		messages: {
			paymentNo: {
				required: "请输入付款流水号",
				remote: "付款流水号已存在"
			},
			fillingDate: {
				required: "请输入填报日期",
			},
			amount: {
				required: "请输入预警比例",
				number:"请正确填写金额",
				min:"金额不能为负数"
			}
		}
	});	
</script>
</body>
</html>
