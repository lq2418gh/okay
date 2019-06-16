<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>发票编辑</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
 	<div id="modal-dialog" class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display:none">关闭</button>
      </div>
      <div class="modal-body" id="modal-body">
       <iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->

<div id="context">
  <div class="container">
	<form:form id="formValidate" name="invoice"  action="${ctx}/invoice/save.do" commandName="invoice">
	<div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
			<div class="panel panel-primary">
	            <div class="panel-heading">
					<h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
					<span class="label label-primary">付款管理>>发票登记>>编辑</span></a></h4>
	            </div>
	            <div id="collapseOne" class="panel-collapse collapse in" >
					<div class="panel-body">
	                	<table id="queryTable" class="table table-condensed">
							<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>发票编号</th>
			                    <td>
				                    <input type="hidden" name="id" id="id" value="${invoice.id}"/>
				                    <form:input type="text" path="invoiceNo" id="invoiceNo" value="${invoice.invoiceNo}" class="form-control input-sm" />
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>开票日期</th>
			                    <td>
			                    	<input type="text"  name="billingDate" id="billingDate" value="<fmt:formatDate value="${invoice.billingDate}" pattern="yyyy-MM-dd"/>"  class="form-control input-sm form_datetime" readonly />
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>供应商名称</th>
				                <td>
									<input type="hidden" name="supplier" id="supplier" value="${invoice.supplier}"/>
									<input type="text" name="supplier_name" id="supplier_name" style="width:80%" value="${invoice.supplier_name}" class="form-control input-sm" readonly/>
									<span class="input-group-btn">
										<button type="button" class="btn btn-primary btn-sm" style="height:130%" onClick="checkAcorder1(this);">查询</button>
									</span>
								</td>
							</tr>
						  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>开户银行</th>
			                    <td>
			                    	<input type="text"  name="opening_bank" id="opening_bank" value="${invoice.opening_bank}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>银行账号</th>
			                    <td>
			                    	<input type="text"  name="bank_account_number" id="bank_account_number" value="${invoice.bank_account_number}"  class="form-control input-sm" readonly/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>联系电话</th>
			                    <td>
			                    	<input type="text"  name="tel" id="tel" value="${invoice.tel}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
		                  	</tr>
		                  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>地址</th>
			                    <td>
			                    	<input type="text"  name="address" id="address" value="${invoice.address}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
			                    <td></td><td></td><td></td><td></td>
		                  	</tr>
						  	<tr>
								<td colspan="6" id="tools">
								   <security:authorize ifAllGranted="ROLE_INVOICE_SAVE">
										<input type="button" value="保存 " onClick="save(actable)" class="btn btn-primary btn-xs" />
									</security:authorize>	
									<c:if test="${empty invoice.id}">
										<a class="btn btn-primary btn-xs" href="${ctx }/invoice/query.do">返回</a>
									</c:if>
									<c:if test="${not empty invoice.id}">
										<a class="btn btn-primary btn-xs" href="${ctx }/invoice/view.do?id=${invoice.id }">返回</a>
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
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > 
            		<span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
            		<a class="btn btn-primary btn-xs" onClick="addAC()"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细</a> 
					<a class="btn btn-primary btn-xs" onClick="delTr1('#actable')"><span class="glyphicon glyphicon-minus-sign" ></span>&nbsp;删除明细</a>
            		<input type="text"  readonly="readonly" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
            		</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:600px" > 
               <table id="actable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
                    <th>货物名称</th>
                    <th>规格型号</th>
                    <th>单位</th>
                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>数量</th>
                    <th>单价</th>
                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>金额</th>
                  </tr>
                  <tbody id="acTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids" /></td>
						<td style="width:20%">
							<div class="input-group" style="width:100%">
								<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
								<span class="input-group-btn">
								<input type="hidden" name="id1" id="id1"/>
								<input type="hidden" name="material" id="material"/>
									<button type="button"   class="btn btn-primary btn-sm" onClick="checkAcorder2(this);">查询</button>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
							</div>
						</td>
						<td style="width:16%"><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm "   readonly="readonly"/></td>
						<td style="width:16%"><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm" maxlength="10" readonly="readonly"/></td>
						<td style="width:16%"><input type="text" name="amount" id="amount" style="width:100%" class="form-control input-sm" maxlength="10" onChange="return changeSum(this)" number/></td>
						<td style="width:16%"><input type="text" name="price" id="price" style="width:100%"  class="form-control input-sm " maxlength="10" readonly="readonly"/></td>
						<td style="width:16%"><input type="text" name="sum" id="sum" style="width:100%" class="form-control input-sm" maxlength="20" onChange="return changeSum(this)" number/></td>
					</tr>
					<c:if test="${not empty invoice.id }">
						<c:forEach items="${invoice.invoiceDetailList}" var="list">
						<tr>
								<td><input type="checkbox" name="ids" /></td>
								<td style="width:20%">
									<div class="input-group" style="width:100%">
										<input type="text" name="name" value="${list.name}"  class="form-control input-sm" readonly="readonly" />
										<span class="input-group-btn">
										<input type="hidden" name="id2" id="id2" value="${list.id}" />
										<input type="hidden" name="material" id="material" value="${list.material }" />
											<button type="button" class="btn btn-primary btn-sm" onClick="checkAcorder2(this);">查询</button>
											<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
										</span>
									</div>
								</td>
							    <td style="width:16%"><input type="text" name="spec" id="spec" class="form-control input-sm " value="${list.spec}"   readonly="readonly"/></td>
								<td style="width:16%"><input type="text" name="unit" id="unit" class="form-control input-sm" value="${list.unit}" maxlength="10" readonly="readonly"/></td>
								<td style="width:16%"><input type="text" name="amount" id="amount"  value="${list.amount }" class="form-control input-sm" maxlength="10" onChange="return changeSum(this)" number/></td>
								<td style="width:16%"><input type="text" name="price" id="price" value="${list.price }"   class="form-control input-sm" maxlength="10" readonly="readonly"/></td>
								<td style="width:16%"><input type="text" name="sum" id="sum"  value="${list.sum }" class="form-control input-sm" maxlength="20" onChange="return changeSum(this)" number /></td>
						</tr>
						</c:forEach>
					</c:if>
				</tbody>	
                <tfoot>
	                <tr>
	                    <td></td>
						<td style="width:16%">合计</td>
						<td style="width:16%"></td>
						<td style="width:16%"></td>
						<td style="width:16%"></td>
						<td style="width:16%"></td>
						<td style="width:16%"><input type="text" name="total" id="total" value="${invoice.total }" class="form-control input-sm" style="width:100%" readonly="readonly"/></td>
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
//获取物资
var object;
function checkAcorder2(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1100,850,'${ctx}/material/publicCommodity.do');
}
function handleMaterial(material) {
	 var supplierLong = $("input[name='supplier']");
	 supplierIds="";
	 for(var i=0; i<supplierLong.length; i++){
			if(isEmpty(supplierLong.eq(i).val())){
				continue;
			}
			if(i!=supplierLong.length-1){  
				supplierIds+=supplierLong.eq(i).val()+",";
	        }else{  
	        	supplierIds+=supplierLong.eq(i).val();  
	        }  
	    }
		$.ajax({
			url : "${ctx}/tender/compareSupplierCapacity.do",
			data : {materialId : material.id,
				supplierIds : supplierIds
			},
			success : function(result){
				if(result!="yes"){
					alert("此物资"+result+"供应商没有");				
					return;
				}
				if(result=="yes"){
					object.find("input[name='material']").val(material.id);
					object.find("input[name='name']").val(material.name);
					object.find("input[name='unit']").val(material.unit);
					object.find("input[name='spec']").val(material.spec);
				}
			}
		})
}

//获取销售方
function checkAcorder1(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000,850,'${ctx}/supplier/publicSupplierQuery.do');
}
function handleSupplier(supplier) {
	var materialLong = $("input[name='material']");
	var materialIds = "";
	for(var i=1; i<materialLong.length; i++){
		if(isEmpty(materialLong.eq(i).val())){
			continue;
		}
		if(i!=materialLong.length-1){  
			materialIds+=materialLong.eq(i).val()+",";
        }else{  
       	 	materialIds+=materialLong.eq(i).val();  
        }  
    }
	$.ajax({
		url : "${ctx}/tender/viewSupplierCapacity.do",
		data : {supplierId : supplier.id,
			materialIds : materialIds
		},
		type : "post",
		success : function(result){
			if(result!="yes"){
				alert("供应商产能说明里面没有"+result+"此物资");				
				return;
			}
			if(result=="yes"){
				object.find("input[name='supplier']").val(supplier.id);
				object.find("input[name='supplier_name']").val(supplier.supplier_name);
				object.find("input[name='opening_bank']").val(supplier.opening_bank);
				object.find("input[name='tel']").val(supplier.tel);
				object.find("input[name='address']").val(supplier.address);
				object.find("input[name='bank_account_number']").val(supplier.bank_account_number);
			}
		}
	});
}
//总计事件
var count=0;
var total=0;
var a=0;
function changeSum(o){
	a=0;
	var price=document.getElementsByName('price');
	var sum=document.getElementsByName('sum');
	var amount=document.getElementsByName('amount');
	console.log(amount);
	var trList=$("#actable").find("tr");
	for (var i=1;i<trList.length-2;i++){
		 $tr = trList.eq(i + 1);
		 if(amount[i].value!=""&&sum[i].value!=""){
			 console.log(amount[i].value)
			 a=(parseFloat(sum[i].value)/parseFloat(amount[i].value)).toFixed(2);
			 $tr.find("input[name='price']").val(a);
		 }
	}
	count=0;
	$("#actable input[name='sum']").each(function(i){
		if($(this).val()!=""){
			console.log($(this).val())
		count=parseFloat(count)+parseFloat($(this).val());
		}
	});
	$("#total").val(count);
}
//增加明细
function addAC() {
	addTr('#acTbody',0);
	$('#quanxuan').on('ifChecked', function(event){
		$('input[name="ids"]').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event){
		$('input[name="ids"]').iCheck('uncheck');
	});
}
//删除明细
function delTr1(table){
	var vTb= $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if(vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
	changeSum();
}
//保存校验
var id=$("#id").val();
 var rule = {
			rules: {
				invoiceNo:{
					required: true,
					remote:{
	 					type:"POST",
	 					url:"${ctx}/invoice/repeatcode.do?id="+id, 
	 					data:{
	 						invoiceNo:function(){
	 							return $("#invoiceNo").val();
	 						}
		 				}
					}
				},
				billingDate: {
					required: true
				},
				bank_account_number: {
					required: true
				}							
			},
			messages: {
				invoiceNo: {
					required: "请输入预算科目",
					remote:"协议编号已存在"
				},
				billingDate: {
					required: "请选择开票日期"
				},
				bank_account_number: {
					required: "请选择销售方银行账号"
				}
			}
		} 
var obj = $("#formValidate").validate(rule);
function save(oTb) {
	var trCount = $("#actable").find("tr").length;
	if($("#supplier_name").val()==""||$("#supplier_name").val()==null){
		alert("请选择供应商");
		return;
	}
	if(obj.form()) {
		if(oTb.rows.length ==3){
			alert("请添加明细!");
			return;
		}
		var name=document.getElementsByName('name');
		var sum=document.getElementsByName('sum');
		var amount=document.getElementsByName('amount');
		console.log(trCount)
		for(i=1;i<trCount-2;i++){
			if(null == name[i].value || "" == name[i].value){
				alert("请选择物资！");
				return;
			}
			if(null == sum[i].value || "" == sum[i].value){
				alert("请填写金额！");
				return;
			}
			if(null == amount[i].value || "" == amount[i].value){
				alert("请填写数量！");
				return;
			}
		}
		changeDetails("acTbody","invoiceDetailList","0");
		document.invoice.submit();
	}	
} 
</script>
</html>