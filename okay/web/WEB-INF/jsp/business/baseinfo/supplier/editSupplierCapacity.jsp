<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>供应商产能说明</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<div id="context">
  <div class="container">
 <form:form id="supplierCapacity" commandName="supplierCapacity" name="supplierCapacity" 
  action="${ctx}/supplierCapacity/supplierCapacitySave.do" method="post">
      <div class="span12" style="margin-top: 10px;">
		  <div class="panel-group" id="accordion2">
		    <div class="panel panel-primary">
		      <div class="panel-heading">
		      	<h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" 
              		style="display: block;"><span class="label label-primary">基础信息管理>>供应商管理>>供应商产能说明>>编辑</span></a>
             	</h4>
			  </div>
			  <div class="panel-body">
                <table class="table table-condensed ">
                  <tr>
                    <td>
                    	<a class="btn btn-primary btn-xs" onClick="addMX()">
                    		<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;<spring:message code="增加明细" />
                    	</a>
						<a class="btn btn-primary btn-xs" onClick="delTr1('#mxtableEdit')">
							<span class="glyphicon glyphicon-minus-sign"></span>&nbsp;<spring:message code="删除明细" />
						</a>
                    	<form:input path="supplier_id"  id = "supplier_id" cssClass="form-control input-sm" type="hidden"
                   	 		value = '${supplierCapacity.supplier_id}' readonly="readonly"/>
                   	 </td>
                  </tr>
                </table>
              </div>
			  <div id="collapseTwo" class="panel-collapse collapse in">
			    <div class="panel-body" style="max-height: 580px;">
			      <table class="table table-striped table-condensed table-hover" id="mxtableEdit">
			        <tr>
			        	<th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
						<th>物资编码</th>
						<th>物资名称</th>
						<th>规格型号</th>
						<th>计量单位</th>
						<th>单价</th>
						<th>说明</th>
					</tr>
					<tr style="display: none">
						<td><input type="checkbox" name="ids" /></td>
						<td>
							<div class="input-group">
								<input type="text" name="code" class="form-control input-sm" readonly="readonly" />
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
							</div>
							<input type="hidden" name="materiel_id" />
						</td>
						<td><input type="text" name="name" class="form-control input-sm" readonly="readonly" /></td>
						<td><input type="text" name="spec" class="form-control input-sm" readonly="readonly" /></td>
						<td><input type="text" name="unit" class="form-control input-sm" readonly="readonly" /></td>
						<td><input type="text" name="price" class="form-control input-sm" readonly="readonly" number/></td>
						<td><input type="text" name="explain" class="form-control input-sm" readonly="readonly" /></td>
						
					</tr>
					<c:forEach items="${supplierCapacity.capacityList}" var="capacityList">
						<tr>
							<td><input type="checkbox" name="ids" /></td>
							<td>
								<div class="input-group">
								<input type="text" name="code" class="form-control input-sm" readonly="readonly" value="${capacityList.material.code}"/>
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
								</div>
								<input  name="materiel_id" type ="hidden" value="${capacityList.materiel_id}"/>  
							</td>
							<td><input type="text" name="name" class="form-control input-sm" readonly="readonly" value="${capacityList.material.name}"/></td>
							<td><input type="text" name="spec" class="form-control input-sm" readonly="readonly" value="${capacityList.material.spec}"/></td>
							<td><input type="text" name="unit" class="form-control input-sm" readonly="readonly" value="${capacityList.material.unit}"/></td>
							<td><input type="text" name="price" class="form-control input-sm" number readonly="readonly" value="${capacityList.price}"/></td>
							<td><input type="text" name="explain" class="form-control input-sm" readonly="readonly" value="${capacityList.material.explain}"/></td>
						</tr>
					</c:forEach>
			      </table>
			      <table style="width:100%;text-align:center">
					<tr id="tools">
						<td>
							<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="saveCapacity()"/>
							<a href='${ctx}/supplier/viewSupplierCapacity.do?supplierId=${supplierCapacity.supplier_id}' class="btn btn-primary btn-xs">返回</a>
						</td>
					</tr>
			      </table>
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
function saveCapacity(){
	changeDetails("mxtableEdit","capacityList",1);
	/* console.log("123",document.supplierCapacity); */
	document.supplierCapacity.action="${ctx}/supplierCapacity/supplierCapacitySave.do";
	document.supplierCapacity.submit();
	/* window.top.document.getElementById('butclose').click(); */
}

//查询
function capacityQuery(){
	var supplier_id = $('#supplier_id').val();
	var wzcode = $('#wzcode').val();
	var wzname = $('#wzname').val();
	document.supplierCapacity.action="${ctx}/supplierCapacity/supplierCapacityQuery.do";
	document.supplierCapacity.submit();
}

var object;
function checkMtorder(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000,650,'${ctx}/material/publicCommodity.do');
}

//增加明细
function addMX() {
	addTr('#mxtableEdit');
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
}
//物资选择
function handleMaterial(material){
	object.find("input[name='materiel_id']").val(material.id);
	object.find("input[name='code']").val(material.code);
	object.find("input[name='name']").val(material.name);
	object.find("input[name='spec']").val(material.spec);
	object.find("input[name='unit']").val(material.unit);
	object.find("input[name='explain']").val(material.explain);
}
</script>
</html>