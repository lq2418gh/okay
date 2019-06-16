<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>采购合同编辑</title>
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
   <form:form id="formValidate" name="purchaseContractHead"  action="${ctx}/purchaseContract/save.do" commandName="purchaseContractHead">
    <div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
         
            <div class="panel-heading">
              <h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">协议/合同管理>>合同管理>>查看</span></a></h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
            
                     <div class="panel-body">
              		
                <table id="queryTable" class="table table-condensed">
                  <tr>
                    <th>合同编码</th>
                    <td>
                    <input type="hidden" name="id" id="id" value="${purchaseContractHead.id}"/>
                    <input type="hidden" name="tenderContract" id="tenderContract" value="${purchaseContractHead.tenderContract}"/>
                    ${purchaseContractHead.contractNo}
                    </td>
                    <th>品种</th>
                    <td>${purchaseContractHead.varieties}</td>
                    <th>签署日期</th>
                    <td><fmt:formatDate value="${purchaseContractHead.signDate}" pattern="yyyy-MM-dd"/></td>
                  </tr>
                  <tr>
                    <th>合同状态</th>
                    <td>${purchaseContractHead.state}</td>
                    <th>生效日期</th>
                    <td><fmt:formatDate value="${purchaseContractHead.effectDate}" pattern="yyyy-MM-dd"/></td>
                    <th>到期日期</th>
                    <td><fmt:formatDate value="${purchaseContractHead.expireDate}" pattern="yyyy-MM-dd"/></td>
                  </tr>
                  <tr>
                    <th>顺延年限</th>
                    <td>${purchaseContractHead.extendedYear}年</td>
                    <th>供应商</th>
	                    <td style="width: 24%">
		                    <input type="hidden" name="supplier" id="supplier" value="${purchaseContractHead.supplier}"/>
		                    ${purchaseContractHead.supplierName}
	                    </td>
                    <th>开户单位</th>
                    <td>${purchaseContractHead.supplierName}</td>
                  </tr>
				  <tr>
                    <th>开户银行</th>
                    <td>${purchaseContractHead.opening_bank}</td>
                    <th>银行账号</th>
                    <td>${purchaseContractHead.bank_account_number}</td>
                    <th>乙方法人</th>
                    <td>${purchaseContractHead.legal_person}</td>
                  </tr>
                  <tr>
                    <th>联系电话</th>
                    <td>${purchaseContractHead.tel}</td>
                    <th>电子邮箱</th>
                    <td>${purchaseContractHead.email}</td>
                    <th>乙方负责部门</th>
                    <td>${purchaseContractHead.bResponsibleDepartment}</td>
                  </tr>
                  <tr>
                    <th>乙方负责人</th>
                    <td>${purchaseContractHead.linkman}</td>
                    <th>甲方名称</th>
                    <td>${purchaseContractHead.partyAName}</td>
                    <th>甲方负责人</th>
                    <td>${purchaseContractHead.partyAChargeperson}</td>
                  </tr>
                  <tr>
                    <th>甲方负责部门</th>
                    <td>${purchaseContractHead.aResponsibleDepartment}</td>
                    <th>物资审批表编号</th>
                    <td colspan="3">
                    ${purchaseContractHead.purchase_no}
                    <input type="hidden" name="materialsPurchaseId" id="materialsPurchaseId" value="${purchaseContractHead.materialsPurchaseId}"/>
                    </td>
                  </tr>
                  <tr>
                    <th>备注</th>
                    <td colspan="5">${purchaseContractHead.remark}</td>
                  </tr>
				  <tr>
					<td colspan="6" id="tools">
					<c:if test="${purchaseContractHead.state=='新建'||purchaseContractHead.state=='审批退回'}">
					<security:authorize ifAllGranted="ROLE_CONTRACT_EDIT">
						<a class="btn btn-primary btn-xs"  href='${ctx}/purchaseContract/edit.do?id=${purchaseContractHead.id}'><span class="glyphicon glyphicon-pencil"></span>编辑</a>
					</security:authorize> 
					</c:if>
					<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_purchaseContract&fk_id=${purchaseContractHead.id }&importNo=${purchaseContractHead.contractNo }" >文件管理</a>
					<c:if test="${purchaseContractHead.state=='新建'}">
					<security:authorize ifAllGranted="ROLE_CONTRACT_SUBMIT">
						<a class="btn btn-primary btn-xs" href="${ctx }/purchaseContract/submit.do?id=${purchaseContractHead.id}" >提交</a>
					</security:authorize>
					</c:if>
					<c:if test="${purchaseContractHead.state=='生效'}">
					  <a class="btn btn-primary btn-xs" href="${ctx }/purchaseContract/end.do?id=${purchaseContractHead.id}" >合同终止</a>
					</c:if>
					  <a class="btn btn-primary btn-xs" href="${ctx }/purchaseContract/query.do">返回</a>
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
            		<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
            		</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:200px" > 
               <table id="jhtable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th>序号</th>
                    <th>交货地址</th>
                  </tr>
                  <tbody id="jhTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids1" /></td>
						<td style="width:100%">
						<input type="text" name="deliveryAddress" id="deliveryAddress" style="width:100%" class="form-control input-sm" maxlength="500" />	
						<input type="hidden" name="id1" id="id1" />
						</td>
					</tr>
					<c:if test="${not empty purchaseContractHead.id}">
						<c:forEach items="${purchaseContractHead.purchaseContractAddressList}" var="list" varStatus="v">
						<tr>
							<td>${v.count}</td>
							<td style="width:100%">
							${list.deliveryAddress }
							<input type="hidden" name="id1" id="id1" value="${list.id}" />
							</td>
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
<div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2">
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > 
           		<span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
           		<c:if test="${empty purchaseContractHead.tenderContract }">
           			<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
				</c:if>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:300px" > 
               <table id="fdtable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th>序号</th>
                    <th>货品名称</th>
                    <th>单位</th>
                    <th>规格</th>
                    <th>箱容</th>
                    <th>单价</th>
                    <th>价格</th>
                    <th>数量</th>
                    <th>已生成订单数量</th>
                    <th>总价</th>
                  </tr>
                  <tbody id="fdTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids2" /></td>
						<td style="width:20%">
							<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
							<input type="hidden" name="id2" id="id2"/>
							<input type="hidden" name="tenderFrameDetail" id="tenderFrameDetail"/>
							<input type="hidden" name="material" id="material"/>
							<input type="hidden" name="purchase_head_id" id="purchase_head_id"  />
							<input type="hidden" name="purchase_detail_id" id="purchase_detail_id"/>
						</td>
						<td ><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm" maxlength="10" readonly="readonly"/></td>
						<td ><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm "   readonly="readonly"/></td>
						<td ><input type="text" name="conversion" id="conversion" style="width:100%" class="form-control input-sm" maxlength="220" readonly="readonly"/></td>
						<td ><input type="text" name="secondaryPrice" id="secondaryPrice" style="width:100%"  class="form-control input-sm " maxlength="10"  readonly="readonly"/></td>
						<td ><input type="text" name="mainPrice" id="mainPrice" style="width:100%" class="form-control input-sm " maxlength="10" onChange="return changePrice(this)"/></td>
						<td ><input type="text" name="quantity" id="quantity" style="width:100%"  class="form-control input-sm " maxlength="10" value="按需" /></td>
						<td ><input type="text" name="totalPrice" id="totalPrice" style="width:100%"  class="form-control input-sm " maxlength="10"  /></td>
					</tr>
					<c:if test="${not empty purchaseContractHead.id}">
						<c:forEach items="${purchaseContractHead.purchaseContractDetailList}" var="list" varStatus="v">
						<tr>
							<td>${v.count}</td>
							<td style="width:20%">
								${list.name}
								<input type="hidden" name="id2" id="id2" value="${list.id}" />
								<input type="hidden" name="tenderContractDetail" id="tenderContractDetail" value="${list.tenderContractDetail}"/>
								<input type="hidden" name="material" id="material" value="${list.material }" />
								<input type="hidden" name="purchase_head_id" id="purchase_head_id" value="${list.purchase_head_id }" />
								<input type="hidden" name="purchase_detail_id" id="purchase_detail_id" value="${list.purchase_detail_id }" />
							</td>
							<td >${list.unit}</td>
						    <td >${list.spec}</td>
						    <td >${list.conversion}</td>
						    <td >${list.secondaryPrice}</td>
						    <td >${list.mainPrice}</td>
						    <td >${list.quantity}</td>
						    <td >${list.already_quantity}</td>
						    <td >${list.totalPrice}</td>
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
//获取物资审批表编号
function checkAcorder3(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1100,850,'${ctx}/materialPurchase/publicMaterialPurchase2.do');
}
function handleMaterialPurchase(materialPurchase) {
	var materialsPurchaseId="";
	var purchase_no="";
	for(var i=0;i<materialPurchase.length;i++){
		 materialsPurchaseId += materialPurchase[i].id + ",";
		 purchase_no += materialPurchase[i].purchase_no + ",";
		/* materialsPurchaseId[i]=materialPurchase[i].id;
		purchase_no[i]=materialPurchase[i].purchase_no; */
	}
	materialsPurchaseId = materialsPurchaseId.substring(0,materialsPurchaseId.length - 1);
	purchase_no = purchase_no.substring(0,purchase_no.length - 1);
	object.find("input[name='purchase_no']").val(purchase_no);
	object.find("input[name='materialsPurchaseId']").val(materialsPurchaseId);
	var trList=$("#fdTbody").find("tr");
	if(trList.length>1){
		$("#fdTbody").find("input[name='purchase_head_id']").each(function(){
			if(("," + materialsPurchaseId + ",").indexOf("," + $(this).val() + ",") == -1){
				var value = $(this).val(); // 获取值
				if(!(value ==''||value ==null)){
					$(this).parent().parent().remove();
				}
			}
		}); 
	}
 
}

//获取物资
function checkAcorder2(o){
	var ids=$("#materialsPurchaseId").val();
	if(ids==""||ids==null){
		alert("请先选择物资审批表编号！");
		return;
	}
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	var purchase_detail_id=document.getElementsByName('purchase_detail_id');
	var detailId="";
	for(var i=1;i<purchase_detail_id.length;i++){
		 detailId += purchase_detail_id[i].value+ ",";
	}
	 detailId = detailId.substring(0,detailId.length - 1);
	modal(1100,850,'${ctx}/materialPurchase/publicDetail.do?id='+ids+'&detailId='+detailId);
}

function handleDetail(detail) {
	for(var i=0;i<detail.length;i++){
		addFD();
		var trList=$("#fdTbody").find("tr");
		console.log(trList.length)
		$tr = $(trList[trList.length-1]);
		console.log(detail[i].name);
		$tr.find("input[name='name']").val(detail[i].name);
		$tr.find("input[name='material']").val(detail[i].material);
		$tr.find("input[name='unit']").val(detail[i].unit);
		$tr.find("input[name='spec']").val(detail[i].spec);
		$tr.find("input[name='conversion']").val(detail[i].conversion);
		$tr.find("input[name='quantity']").val(detail[i].quantity);
		$tr.find("input[name='purchase_head_id']").val(detail[i].purchase_head_id); 
		$tr.find("input[name='mainPrice']").val(detail[i].mainPrice); 
		$tr.find("input[name='purchase_detail_id']").val(detail[i].id); 
		 a=(parseFloat(detail[i].mainPrice)/parseFloat(detail[i].conversion)).toFixed(2);
		$tr.find("input[name='secondaryPrice']").val(a); 
	}
	
/* 	",01,02,03,"
	for */
}

//获取供应商
function checkAcorder1(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000,850,'${ctx}/supplier/publicSupplierQuery2.do');
}
function handleSupplier(supplier) {
	object.find("input[name='supplier']").val(supplier.id);
	object.find("input[name='supplierName']").val(supplier.supplier_name);
	object.find("input[name='opening_bank']").val(supplier.opening_bank);
	object.find("input[name='legal_person']").val(supplier.legal_person);
	object.find("input[name='linkman']").val(supplier.linkman);
	object.find("input[name='tel']").val(supplier.tel);
	object.find("input[name='email']").val(supplier.email);
}
//总计事件
var count=0;
var total=0;
var a=0;
function changePrice(o){
	var trList=$("#fdtable").find("tr");
	var mainPrice=document.getElementsByName('mainPrice');
	var conversion=document.getElementsByName('conversion');
	for (var i=1;i<=trList.length-2;i++){
		 $tr = $(trList[i+1]);
		 if(mainPrice[i].value!=""&& conversion[i].value !=""){
			 a=(parseFloat(mainPrice[i].value)/parseFloat(conversion[i].value)).toFixed(2);
			 $tr.find("input[name='secondaryPrice']").val(a);
		 }
	}
}
//增加明细
function addJH() {
	addTr('#jhTbody',0);
	$('#quanxuan1').on('ifChecked', function(event){
		$('input[name="ids1"]').iCheck('check');
	});
	$('#quanxuan1').on('ifUnchecked', function(event){
		$('input[name="ids1"]').iCheck('uncheck');
	});
}
function addFD() {
	addTr('#fdTbody',0);
	$('#quanxuan2').on('ifChecked', function(event){
		$('input[name="ids2"]').iCheck('check');
	});
	$('#quanxuan2').on('ifUnchecked', function(event){
		$('input[name="ids2"]').iCheck('uncheck');
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
}
function delTr2(table){
	var vTb= $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if(vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
	changePrice();
}
//保存校验
 var rule = {
			rules: {
				partyAChargeperson:{
					required: true
				},
				aResponsibleDepartment:{
					required: true
				}
			},
			messages: {
				partyAChargeperson:{
					required: "请输入甲方负责人"
				},
				aResponsibleDepartment:{
					required: "请输入甲方负责部门"
				}
			}
		} 
var obj = $("#formValidate").validate(rule);
function save(oTb1,oTb2,param) {
	var trCount2 = $("#fdtable").find("tr").length;
	var trCount1 = $("#jhtable").find("tr").length;
	if(param=='1'){
		$("#state").val("新建");
	}
	if(param=='2'){
		$("#state").val("生效");
	}
	if(obj.form()) {
		if(oTb1.rows.length ==2){
			alert("请添加交货地址!");
			return;
		}
		if(oTb2.rows.length ==2){
			alert("请添加明细!");
			return;
		}
		var purchasedQuantity=document.getElementsByName('purchasedQuantity');
		var mainPrice=document.getElementsByName('mainPrice');
		for(i=1;i<trCount2-1;i++){
			if(null == mainPrice[i].value || "" == mainPrice[i].value){
				alert("请填写价格！");
				return;
			}
			if(null == purchasedQuantity[i].value || "" == purchasedQuantity[i].value){
				alert("请填写拟采购数量！");
				return;
			}
			if(purchasedQuantity[i].value!="按需"){
				if(isNaN(parseFloat(purchasedQuantity[i].value))){
					alert("拟采购数量只能填写按需或者是数字！");
					return;
				}
			}
		}
		/* var name=document.getElementsByName('name');
		var budgetAmount=document.getElementsByName('budgetAmount');
		var residualAmount=document.getElementsByName('residualAmount');
		var remark=document.getElementsByName('remark');

	    for(i=1;i<trCount-2;i++){
	    	for(j=1;j<trCount-2;j++){
	    		if(i!=j){
		    		if(name[i].value==name[j].value){
		    			alert("所选的预算科目不可以重复");
		    			return;
		    		}
	    		}
	    	}
	    }				
		for(i=1;i<trCount-2;i++){
			if(null == budgetAmount[i].value || "" == budgetAmount[i].value){
				alert("请填写预算金额！");
				return;
			}
			if(budgetAmount[i].value.split(".")[0].length >8){
				alert("预算金额整数位不允许超过8位！");
				return;
			} 
			 if(null == residualAmount[i].value || "" == residualAmount[i].value){
				alert("请填写预算剩余金额！");
				return;
			}	 
			 if(residualAmount[i].value.split(".")[0].length>8){
				alert("预算剩余金额整数位不允许超过8位！");
				return;
			}	 
	     	if(parseFloat(budgetAmount[i].value) <parseFloat(residualAmount[i].value)){
				alert("预算金额小于预算剩余金额，不符合条件！");
				return;
			}	
			if(remark[i].length>200){
				alert("备注长度不能超过200！");
				return;
			}	
			 if(!checkpositive(PURCHASE_QTY[i].value)) {
				alert("<spring:message code='请输入合法的采购数量！' />");
				return;
			}
			if(null != DESIGN_QTY[i].value && "" != DESIGN_QTY[i].value){
				if(!checkpositive(DESIGN_QTY[i].value)) {
					alert("<spring:message code='请输入合法的设计数量' />");
					return false;
				}
			}
			if(null != RECOMMEND_SURPLUS[i].value && "" != RECOMMEND_SURPLUS[i].value){
				if(!checkpositive(RECOMMEND_SURPLUS[i].value)) {
					alert("<spring:message code='请输入合法的建议余量' />");
					return false;
				}
			}
			if(null != STOCK_USE_QTY[i].value && "" != STOCK_USE_QTY[i].value){
				if(!checkpositive(STOCK_USE_QTY[i].value)) {
					alert("<spring:message code='请输入合法的库存使用数量' />");
					return false;
				}
			} 
		}   */
		//console.log("hehe",document.planForm);
		changeDetails("fdTbody","frameDetailList","0");
		changeDetails("jhTbody","frameAddressList","0");
		console.log("aa");
		document.purchaseContractHead.submit();
	}	
} 
</script>
</html>