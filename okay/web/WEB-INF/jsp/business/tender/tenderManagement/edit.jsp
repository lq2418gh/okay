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
			<form:form id="formValidate" name="tenderFrameHead" action="${ctx}/tender/save.do" commandName="tenderFrameHead">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">招标管理>>协议招标>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<input type="hidden" value="${tenderFrameHead.id }" name="id">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>招标编号</th>
												<td>
												     <input type="text" name="tender_no" id="tender_no" value="${tenderFrameHead.tender_no }" style="width: 90%" class="form-control input-sm"  readonly="readonly" />
												</td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>发布时间</th>
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
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>招标状态</th>
												<td><input type="text" name="state" id="state" value="${tenderFrameHead.state}" style="width:100%" class="form-control input-sm"  readonly="readonly" /></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>开标地点</th>
												<td colspan="3"><textarea name="open_place" class="form-control input-sm "  id="open_place"  style="resize: none;maxlength:250;width: 150%" rows="2" cols="85">${tenderFrameHead.open_place}</textarea></td>
												<td colspan="4"></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
												<td colspan="3"><textarea name="remark" class="form-control input-sm" id="remark"  style="resize: none;maxlength:250;width: 150%" rows="2" cols="85">${tenderFrameHead.remark}</textarea></td>
												<td colspan="4"></td>
											</tr>
										</table >
										<table id="sutable" class="table table-condensed">
											<c:if test="${empty tenderFrameHead.id }">
											<tr name="suptr" style="width:100%">
												<th style="width: 8.6%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>供应商</th>
												<td style="width: 12%">
													<div class="input-group">
														<input type="text" name="supplier_name" class="form-control input-sm" readonly="readonly" /> 
														<span class="input-group-btn">
															<button type="button" class="btn btn-primary btn-sm" onClick="checkSupplier(this);">查询</button>
															<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
														</span>
													</div> 
													<input type="hidden" name="supplier" />
												</td>
												<th style="width: 5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>邮箱</th>
												<td style="width: 10%"><input type="text" name="email" class="form-control input-sm" /></td>
												<td style="width: 10%">
													<a class="btn btn-primary btn-xs" onClick="delSupplier(this)">
														删除供应商明细
													</a>
												</td>
												<td colspan="3"></td>
											</tr>
											</c:if>
											<c:if test="${not empty tenderFrameHead.id }">
												<c:forEach items="${tenderFrameHead.tenderFrameSupplierList }" var="s">
												<tr name="suptr">
													<th style="width: 8.6%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>供应商</th>
													<td style="width: 12%">
														<div class="input-group">
															<input type="text" name="supplier_name" class="form-control input-sm" value="${s.supplier_name }" readonly="readonly" /> 
															<span class="input-group-btn">
																<button type="button" class="btn btn-primary btn-sm" onClick="checkSupplier(this);">查询</button>
																<button id="supplierModal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
															</span>
														</div> 
														<input type="hidden" name="supplier" value="${s.supplier}" />
													</td >
													<th style="width: 5%"><span class="glyphicon glyphicon-asterisk" style="color: red"></span>邮箱</th>
													<td  style="width: 10%"><input type="text" name="email" class="form-control input-sm" value="${s.email}" /></td>
													<td style="width: 10%">
														<a class="btn btn-primary btn-xs" onClick="delSupplier(this)">
															删除供应商明细
														</a>
													</td>
													<td colspan="3"></td>
												</tr>
												</c:forEach>
											</c:if>
											<tr id="tools" align="center">
												<td colspan="8" style="text-align: center">
													<%-- <security:authorize ifAllGranted="ROLE_PURCHASE_MTO_MOD"> --%>
													<input type="button" value="保存 " onClick="save(mxtable)" class="btn btn-primary btn-xs" />
													<%-- </security:authorize> --%>
													<c:if test="${not empty tenderFrameHead.id }">
														<a class="btn btn-primary btn-xs" href="${ctx }/tender/view.do?id=${tenderFrameHead.id}">返回</a>
													</c:if>
													<c:if test="${empty tenderFrameHead.id }">
														<a class="btn btn-primary btn-xs" href="${ctx }/tender/query.do">返回</a>
													</c:if>
													<a class="btn btn-primary btn-xs" onClick="addSupplier()">
														增加供应商明细
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
									<a class="btn btn-primary btn-xs" onClick="addMX()">
										<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
									</a> 
									<a class="btn btn-primary btn-xs" onClick="delTr1('#mxtable')">
										<span class="glyphicon glyphicon-minus-sign"></span>&nbsp;删除明细
									</a> 
									<input type="text" readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent; border-style: none; width: 1px;">
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body" style="max-height: 600px">
										<table id="mxtable" class="table table-striped table-condensed table-hover">
											<tr id="title">
												<th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
												<th>物资编码</th>
												<th>物资名称</th>
												<th>计量单位</th>
												<th>规格型号</th>
												<th>说明</th>
											</tr>
											<tbody id="mxTbody">
												<tr style="display: none">
													<td><input type="checkbox" name="ids" /></td>
													<td style="width: 15%">
														<div class="input-group" style="width: 100%">
															<input type="text" name="code" class="form-control input-sm" readonly="readonly"/> 
															<span class="input-group-btn">
																<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
																<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
															</span>
														</div> 
														<input type="hidden" name="material"/>
													</td>
													<td><input type="text" name="name" class="form-control input-sm" readonly="readonly" style="width: 100%"/></td>
													<td><input type="text" name="unit"  class="form-control input-sm" maxlength="100" readonly="readonly" style="width: 100%"/></td>
													<td><input type="text" name="spec" class="form-control input-sm " maxlength="100" readonly="readonly" style="width: 100%"/></td>
													<td><input type="text" name="explain" class="form-control input-sm " readonly="readonly" style="width: 100%"/></td>
												</tr>
												<!-- 编辑页时使用 -->
												<c:if test="${not empty tenderFrameHead.id }">
													<c:forEach items="${tenderFrameHead.tenderFrameDetailList }" var="c">
														<tr>
															<td><input type="checkbox" name="ids" /></td>
															<td style="width: 15%">
																<div class="input-group" style="width: 100%">
																	<input type="text" name="code" class="form-control input-sm" readonly="readonly" value="${c.code }" /> 
																		<span class="input-group-btn">
																		<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
																		<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
																	</span>
																</div> 
																<input type="hidden" name="material" value="${c.material }" />
															</td>
															<td><input type="text" name="name" class="form-control input-sm" readonly="readonly" value="${c.name }" style="width: 100%"/></td>
															<td><input type="text" name="unit" class="form-control input-sm" maxlength="100" readonly="readonly" value="${c.unit }" style="width: 100%"/></td>
															<td><input type="text" name="spec" class="form-control input-sm" maxlength="100" readonly="readonly" value="${c.spec }" style="width: 100%"/></td>
															<td><input type="text" name="explain" class="form-control input-sm " value="${c.explain }" readonly="readonly" style="width: 100%"/></td>
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
</script>
<script type="text/javascript">
//添加供应商明细
function addSupplier() {
	var vTr = $("#sutable tr:eq(0)");
	var vTrClone = vTr.clone(true);
	vTrClone.find("input").val("");
	$("#tools").before(vTrClone);
	return vTrClone;
}
//删除供应商明细
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

//物资
var object;
function checkMtorder(o) {
	object = $(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000, 650, '${ctx}/material/publicCommodity.do');
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
			if(result!=="yes"){
				alert("此物资"+result+"供应商没有");				
				return;
			}
			if(result=="yes"){
				object.find("input[name='material']").val(material.id);
				object.find("input[name='code']").val(material.code);
				object.find("input[name='name']").val(material.name);
				object.find("input[name='unit']").val(material.unit);
				object.find("input[name='spec']").val(material.spec);
				object.find("input[name='explain']").val(material.explain);
			}
		}
	})
	
	
	
	
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
		url : "${ctx}/tender/viewSupplierCapacity.do",
		data : {supplierId : supplier.id,
			materialIds : materialIds
		},
		type : "post",
		success : function(result){
			if(result!="yes"){
				alert("供应商里面没有"+result+"此物资");				
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
//物资增加明细
function addMX() {
	addTr('#mxTbody', 0);
	$('#quanxuan').on('ifChecked', function(event) {
		$('input[name="ids"]').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event) {
		$('input[name="ids"]').iCheck('uncheck');
	});
}
//物资删除明细
function delTr1(table) {
	var vTb = $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if (vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
}

//保存校验
function save(oTb) {
	if (oTb.rows.length == 2) {
		alert("请添加明细!");
		return;
	}
	var open_date = $("input[name='open_date']");
	var open_place = $("textarea[name='open_place']");
	var supplier = $("input[name='supplier']");
	var email = $("input[name='email']");
	var code = $("input[name='code']");
	var count=code.length;
	var str="";
	for (i =1 ; i < count; i++) {
		if (isEmpty(code.eq(i).val())) {
			alert("请选择物料编码！");
			return;
		}
		if (str.indexOf(code.eq(i).val())>=0) {
			alert("物料编码不能重复");
			return;
		}else{
			str=str+","+code.eq(i).val();
		}
	}
	if (isEmpty(open_date.val())){
		alert("请填选开标时间");
		open_date.focus();
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
	
	changeDetails("mxtable", "tenderFrameDetailList");
	changeDetails("sutable", "tenderFrameSupplierList",-1);
	
	document.tenderFrameHead.submit();
}
</script>
</html>