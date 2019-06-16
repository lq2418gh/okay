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
 <form:form id="supplierCapacity" commandName="supplierCapacity" name="supplierCapacity" action="${ctx}/supplierCapacity/supplierCapacitySave.do" method="post">
       <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" 
              	style="display: block;"><span class="label label-primary">供应商产能说明查询</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body">
                <table id="queryTable" class="table table-condensed ">
                  <tr>
                    <th>物资编码</th>
                    <td><form:input path="wzcode" id = "wzcode" cssClass="form-control input-sm"/></td>
                    <th>物资名称</th>
                    <td><form:input path="wzname" id = "wzname" cssClass="form-control input-sm"/></td>
                    <td><form:input path="supplier_id"  id = "supplier_id" cssClass="form-control input-sm" type="hidden"
                    value = '${supplierCapacity.supplier_id}' readonly="readonly"/></td>
                  </tr>
                  <tr>
                  	<td colspan="4" id="tools">
                    	<input type="submit" value="查询" class="btn btn-primary btn-xs" onclick="capacityQuery()"/>
                      	<input type="button" value="重置"  onclick="resetControl('supplierCapacity')" class="btn btn-primary btn-xs" />
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
			  </div>
			  <div id="collapseTwo" class="panel-collapse collapse in">
			    <div class="panel-body" style="max-height: 580px;">
			      <table class="table table-striped table-condensed table-hover" id="mxtable">
			        <tr>
			        	<th>序号</th>
						<th>物资编码</th>
						<th>物资名称</th>
						<th>规格型号</th>
						<th>计量单位</th>
						<th>单价</th>
						<th>说明</th>
					</tr>
					<c:forEach items="${supplierCapacity.capacityList}" var="capacityList" varStatus="v">
						<tr>
							<td>${v.count}</td>
							<td>
								<input type="text" name="code" class="form-control input-sm" readonly="readonly" value="${capacityList.material.code}"/>
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
			      <table  align="center">
					<tr id="tools">
						<td>
							<a href="${ctx}/supplier/publicSupplierQuery.do" class="btn btn-primary btn-xs" style=" margin-top: 10px; margin-left: 5px;">返回</a>
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