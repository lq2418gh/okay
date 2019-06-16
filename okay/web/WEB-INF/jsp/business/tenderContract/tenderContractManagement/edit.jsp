<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<title>招标编辑</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="modal-dialog" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display: none">关闭</button>
				</div>
				<div class="modal-body" id="modal-body">
					<iframe id="a" name="a" src="" width="100%" height="100%"frameborder="0" scrolling="no"></iframe>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div id="context">
		<div class="container">
			<form:form id="formValidate" name="tenderContractHead" action="${ctx}/tenderContract/save.do" commandName="tenderContractHead">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">招标管理>>合同招标>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<input type="hidden" value="${tenderContractHead.id }" name="id">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>招标编号</th>
												<td>
												     <input type="text" name="tender_no" id="tender_no" value="${tenderContractHead.tender_no }" class="form-control input-sm" readonly="readonly" />
												</td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red" style="width: 100%"></span>发布时间</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="release_date" path="release_date"  cssClass="form-control input-sm form_datetime" style="width: 100%" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>开标时间</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="open_date" path="open_date" style="width: 100%" cssClass="form-control input-sm form_datetime_minutes"   readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button> 
														</span>
													</div>
												</td>
												
												
											</tr>
											<tr name="checkMaterialPurchase">
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>招标状态</th>
												<td><input type="text" name="state" id="state" value="${tenderContractHead.state}" class="form-control input-sm" 	 readonly="readonly" /></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>物资采购审批编号</th>
												<td colspan="3">
													<div class="input-group" style="width: 91%">
														<input type="hidden" name="materialsPurchaseId" id="materialsPurchaseId" value="${tenderContractHead.materialsPurchaseId }"/>
														<input type="text" name="purchase_no" class="form-control input-sm" value="${tenderContractHead.purchase_no }" readonly="readonly" /> 
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkMaterialPurchase(this)">查询 </button>
															<button id="materialPurchaseModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
														<input type="hidden" name="material_purchase" class="form-control input-sm" /> 
													</div> 
												</td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>开标地点</th>
<%-- 												<td ><input type="text" name="open_place" id="open_place" value="" title="${tenderContractHead.open_place}" style="width: 100%" class="form-control input-sm"  /></td> --%>
												<td colspan="5"><textarea name="open_place" class="form-control input-sm" id="open_place"  style="resize: none;maxlength:250;width: 60%" rows="2" cols="85">${tenderContractHead.open_place}</textarea>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
												<td colspan="5"><textarea name="remark" class="form-control input-sm" id="remark"  style="resize: none;maxlength:250;width: 60%" rows="2" cols="85">${tenderContractHead.remark }</textarea>
											</tr>
										</table >
										
										<table id="sutable" class="table table-condensed">
											<c:if test="${empty tenderContractHead.id }">
												<tr name="suptr">
													<th style="width: 10.2%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>供应商</th>
													<td style="width: 15%">
														<div class="input-group">
															<input type="text" name="supplier_name" class="form-control input-sm" readonly="readonly" /> 
															<span class="input-group-btn">
																<button type="button" class="btn btn-primary btn-sm" onClick="checkSupplier(this);">查询</button>
																<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
															</span>
														</div> 
														<input type="hidden" name="supplier" />
													</td>
													<th style="width: 7.8%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>邮箱</th>
													<td style="width: 10%"><input type="text" name="email" class="form-control input-sm" /></td>
													<td style="width: 10%">
														<a class="btn btn-primary btn-xs" onClick="delSupplier(this)">
															删除供应商
														</a>
													</td>
													<td style="width:47%"></td>
												</tr>
											</c:if>
											<c:if test="${not empty tenderContractHead.id }">
												<c:forEach items="${tenderContractHead.tenderContractSupplierList }" var="s">
													<tr name="suptr">
														<th style="width: 10.2%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>供应商</th>
														<td style="width: 15%">
															<div class="input-group">
																<input type="text" name="supplier_name" class="form-control input-sm" value="${s.supplier_name }" readonly="readonly" /> 
																<span class="input-group-btn">
																	<button type="button" class="btn btn-primary btn-sm" onClick="checkSupplier(this);">查询</button>
																	<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
																</span>
															</div> 
															<input type="hidden" name="supplier" value="${s.supplier}" />
														</td>
														<th style="width: 7.8%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>邮箱</th>
														<td  style="width: 10%"><input type="text" name="email" class="form-control input-sm" value="${s.email}" /></td>
														<td style="width: 10%">
															<a class="btn btn-primary btn-xs" onClick="delSupplier(this)">
																删除供应商
															</a>
														</td>
														<td style="width: 47%"></td>
													</tr>
												</c:forEach>
											</c:if>
											<tr id="tools" align="center">
												<td colspan="8" style="text-align: center">
													<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_INSERT">
													<input type="button" value="保存 " onClick="save(mxtable)" class="btn btn-primary btn-xs" />
													</security:authorize>
													<c:if test="${not empty tenderContractHead.id }">
														<a class="btn btn-primary btn-xs" href="${ctx }/tenderContract/view.do?id=${tenderContractHead.id}">返回</a>
													</c:if>
													<c:if test="${empty tenderContractHead.id }">
														<a class="btn btn-primary btn-xs" href="${ctx }/tenderContract/query.do">返回</a>
													</c:if>
													<a class="btn btn-primary btn-xs" onClick="addSupplier()">
														添加供应商
													</a>
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
									<c:if test="${empty purchaseContractHead.tenderContract }">
						           		<a class="btn btn-primary btn-xs" onClick="checkMter(this);"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细</a> 
										<a class="btn btn-primary btn-xs" onClick="delTr2('#mxtable')"><span class="glyphicon glyphicon-minus-sign" ></span>&nbsp;删除明细</a>
					           			<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
									</c:if>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body" style="max-height: 600px">
										<table id="mxtable" class="table table-striped table-condensed table-hover">
											<tr id="title">
												<th><input type="checkbox" name="checkAll11" id="quanxuan2"></th>
							                    <th>物资名称</th>
							                    <th>物资编码</th>
							                    <th>单位</th>
							                    <th>规格</th>
							                    <th>数量</th>
							                    <th>说明</th>
											</tr>
										<tbody id="fdTbody">
											<tr style="display: none;"  class="text-error">
												<td><input type="checkbox" name="ids2" /></td>
												<td style="width:20%">
													<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
													<input type="hidden" name="id2" id="id2"/>
													<input type="hidden" name="material" id="material"/>
													<input type="hidden" name="purchase_head_id" id="purchase_head_id"  />
													<input type="hidden" name="purchase_detail_id" id="purchase_detail_id"/>
													<input type="hidden" name="budget_plan_detail" id="budget_plan_detail"/>
													<input type="hidden" name="centralized_department" id="centralized_department"/>
													<input type="hidden" name="account" id="account"/>
												</td>
												<td ><input type="text" name="code" id="code" style="width:100%" class="form-control input-sm"  maxlength="10"   readonly="readonly"/></td>
												<td ><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm"   maxlength="10"  readonly="readonly"/></td>
												<td ><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm "   readonly="readonly"/></td>
												<td ><input type="text" name="quantity" id="quantity" style="width:100%"  class="form-control input-sm "  maxlength="10"    readonly="readonly"/></td>
												<td ><input type="text" name="explain" id="explain" style="width:100%"  class="form-control input-sm "   maxlength="10"   readonly="readonly"/></td>
											</tr>
											<c:if test="${not empty tenderContractHead.id}">
												<c:forEach items="${tenderContractHead.tenderContractDetailList}" var="list">
												<tr>
													<td><input type="checkbox" name="ids2" /></td>
													<td style="width:20%">
														<input type="text" name="name" value="${list.name}"  style="width:100%" class="form-control input-sm" readonly="readonly" />
														<input type="hidden" name="id2" id="id2" value="${list.id}" />
														<input type="hidden" name="purchase_head_id" id="purchase_head_id" value="${list.purchase_head_id}"/>
														<input type="hidden" name="material" id="material" value="${list.material }" />
														<input type="hidden" name="purchase_detail_id" id="purchase_detail_id" value="${list.purchase_detail_id }" />
														<input type="hidden" name="budget_plan_detail" id="budget_plan_detail" value="${list.budget_plan_detail }"/>
														<input type="hidden" name="centralized_department" id="centralized_department" value="${list.centralized_department }"/>
														<input type="hidden" name="account" id="account" value="${list.account }"/>
													</td>
													<td ><input type="text" name="code" id="code" style="width:100%" class="form-control input-sm" value="${list.code }"  maxlength="10"  readonly="readonly"/></td>
													<td ><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm" value="${list.unit}"  maxlength="10"   readonly="readonly"/></td>
												    <td ><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm " value="${list.spec}"   readonly="readonly"/></td>
												    <td ><input type="text" name="quantity" id="quantity" style="width:100%"  class="form-control input-sm " value="${list.quantity}"  maxlength="10"   readonly="readonly" /></td>
												    <td ><input type="text" name="explain" id="explain" style="width:100%"  class="form-control input-sm " value="${list.explain}"  maxlength="10"   readonly="readonly" /></td>
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
function checkMaterialPurchase(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1100,650,'${ctx}/materialPurchase/publicMaterialPurchase2.do');
}
function handleMaterialPurchase(materialPurchase) {
	var materialsPurchaseId="";
	var purchase_no="";
	for(var i=0;i<materialPurchase.length;i++){
		 materialsPurchaseId += materialPurchase[i].id + ",";
		 purchase_no += materialPurchase[i].purchase_no + ",";
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
//删除物资明细
var purchase_detail_ids="";
function delTr2(table){
	var vTb= $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if(vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
	var purchase_detail_id=vTr.find("input[name=purchase_detail_id]");
	var pdi=purchase_detail_id.length;

	for(var i =0 ; i < pdi; i++){
		if(isEmpty(purchase_detail_id.eq(i).val())){
			continue;
		}
		if(isEmpty(purchase_detail_ids)){  
			purchase_detail_ids+=purchase_detail_id.eq(i).val();
        }else{  
        	purchase_detail_ids+=(","+purchase_detail_id.eq(i).val());  
        } 
	}
}
	//物资明细
	var objectM;
	function checkMter(o) {
		var ids=$("#materialsPurchaseId").val();
		if(isEmpty(ids)){
			alert("请先选择物资审批表编号！");
			return;
		}
		objectM=$(o).parent().parent().parent().parent();//获取当前点击对象
		var purchase_detail_id=document.getElementsByName('purchase_detail_id');
		var detailId="";
		for(var i=1;i<purchase_detail_id.length;i++){
			 detailId += purchase_detail_id[i].value+ ",";
		}
		detailId = detailId.substring(0,detailId.length - 1);
		modal(1100,850,'${ctx}/materialPurchase/publicDetail.do?id='+ids+'&detailId='+detailId+'&purchase_detail_ids='+purchase_detail_ids);
	}
	function handleDetail(detail) {
		var material=""
		for(var i=0;i<detail.length;i++){
			if(isEmpty(detail[i].material)){
				continue;
			}
			if(i!=detail.length-1){  
				material+=detail[i].material+",";
	        }else{  
	        	material+=detail[i].material;  
	        }  
		}
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
				url : "${ctx}/tenderContract/compareSupplierCapacity.do",
				data : {materialIds :material,
					supplierIds : supplierIds
				},
				success : function(result){
					if(result!=="yes"){
						alert("所选物资【"+result+"】供应商没有");				
						return;
					}
					if(result=="yes"){
						for(var i=0;i<detail.length;i++){
							addFD();
							var trList=$("#fdTbody").find("tr");
							$tr = $(trList[trList.length-1]);
							$tr.find("input[name='code']").val(detail[i].code);
							$tr.find("input[name='name']").val(detail[i].name);
							$tr.find("input[name='material']").val(detail[i].material);
							$tr.find("input[name='unit']").val(detail[i].unit);
							$tr.find("input[name='spec']").val(detail[i].spec);
							$tr.find("input[name='quantity']").val(detail[i].quantity);
							$tr.find("input[name='purchase_head_id']").val(detail[i].purchase_head_id); 
							$tr.find("input[name='purchase_detail_id']").val(detail[i].id); 
							$tr.find("input[name='budget_plan_detail']").val(detail[i].budget_plan_detail); 
							$tr.find("input[name='explain']").val(detail[i].explain); 
							$tr.find("input[name='centralized_department']").val(detail[i].centralized_department); 
							$tr.find("input[name='account']").val(detail[i].account); 
						}
					}
				}
			})
		 
	
		
	}
	//增加物资明显
	function addFD() {
		addTr('#fdTbody',0);
		$('#quanxuan2').on('ifChecked', function(event){
			$('input[name="ids2"]').iCheck('check');
		});
		$('#quanxuan2').on('ifUnchecked', function(event){
			$('input[name="ids2"]').iCheck('uncheck');
		});
	}
	
	//添加供应商明细
	function addSupplier() {
		var vTr = $("#sutable tr:eq(0)");
		var vTrClone = vTr.clone(true);
		vTrClone.find("input").val("");
		$("#tools").before(vTrClone);
		return vTrClone;
	}
	//供应商删除明细
	function delSupplier(obj){
		var trs=$("tr[name=suptr]");
		if(confirm("确定删除")){
			if(trs.length>1){
				$($(obj).parents("tr")).remove();
			}
			if(trs.length==1){
				trs.find("input").val("");	
			}
		}
	}
	
	
	//供应商
	var obj;
	function checkSupplier(s) {
		obj = $(s).parent().parent().parent().parent();//获取当前点击对象
		modal(1000, 650, '${ctx}/supplier/publicSupplierQuery.do');
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
			url : "${ctx}/tenderContract/viewSupplierCapacity.do",
			data : {supplierId : supplier.id,
				materialIds : materialIds
			},
			type : "post",
			success : function(result){
				if(result!="yes"){
					alert("供应商里面没有【"+result+"】此物资");				
					return;
				}
				if(result=="yes"){
					obj.find("input[name='supplier']").val(supplier.id);
					obj.find("input[name='supplier_name']").val(supplier.supplier_name);
					obj.find("input[name='email']").val(supplier.email);
				}
			}
		});
	}
	
	
	//保存方法
	function save(oTb) {
		var open_date = $("input[name='open_date']");
		var open_place = $("textarea[name='open_place']");
		var email = $("input[name='email']");
		var supplier = $("input[name='supplier']");
		var id2 = $("input[name='id2']");//物资ids
		var purchase_no = $("input[name='purchase_no']");

		if (isEmpty(open_date.val())){
			alert("请填选开标时间");
			open_date.focus();
			return;
		}
		if (isEmpty(purchase_no.val())){
			alert("请选择物资采购审批表编号");
			purchase_no.focus();
			return;
		}
		if (isEmpty(open_place.val())){
			alert("请输入开标地点");
			open_place.focus();
			return;
		}
		if (isEmpty(supplier.val())){
			alert("请查询供应商");
			supplier.focus();
			return;
		}
		var c=supplier.length;
		var s="";
		for (i =0 ; i < c; i++){
			if (isEmpty(supplier.eq(i).val())){
				alert("请查询供应商");
				supplier.eq(i).focus();
				return;
			}
			if (s.indexOf(supplier.eq(i).val())>=0) {
				alert("供应商编码不能重复");
				return;
			}else{
				s=s+","+supplier.eq(i).val();
			}
			if(isEmpty(email.eq(i).val())){
				alert("请输入邮箱");
				email.eq(i).focus();
				return;
			}
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
			if(reg.test(email.eq(i).val())){
				
			}else{
				alert("您输入的邮箱格式不对");
				email.eq(i).focus();
				return;
			}
		}
		if (oTb.rows.length == 2) {
			alert("请添加明细!");
			return;
		}
		changeDetails("sutable", "tenderContractSupplierList",-1);
		changeDetails("fdTbody","tenderContractDetailList",0);
		document.tenderContractHead.submit();
	}
</script>
</html>