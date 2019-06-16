<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>查询采购合同明细信息</title>
</head>
<script type="text/javascript">
function getContractDetail(){
	var count=0;
	var cont=document.getElementsByName('ids2');
	for( i=0;i<cont.length;i++){
		if(cont[i].checked){
			count++;
		}
	}
	if(count==0){
		alert("至少选择一条数据");
		return;
	}
	var contractDetail = new Array();
	$("table input[name=ids2]:checked").each(function(i){
		var a={};
		var index=$(this).attr('index');
		 a.id = $("#cont [name='id2']:eq(" + index + ")").val();
		 a.name= $("#cont [ name='name']:eq(" + index + ")").val();
		 a.material= $("#cont [ name='material']:eq(" + index + ")").val();
		 a.unit= $("#cont [ name='unit']:eq(" + index + ")").val();
		 a.spec= $("#cont [ name='spec']:eq(" + index + ")").val();
		 a.conversion= $("#cont [ name='conversion']:eq(" + index + ")").val();
		 a.mainPrice= $("#cont [ name='mainPrice']:eq(" + index + ")").val();
		 a.secondaryPrice= $("#cont [ name='secondaryPrice']:eq(" + index + ")").val();
		 var quantity = $("#cont [ name='quantity']:eq(" + index + ")").val();
		 var already_quantity = $("#cont [ name='already_quantity']:eq(" + index + ")").val();
		 if(null == already_quantity || '' == already_quantity){
			 a.quantity = parseFloat(quantity);
		 }else{
			 a.quantity = parseFloat(quantity).sub(parseFloat(already_quantity),2)
		 }
		 a.budget_plan_detail= $("#cont [ name='budget_plan_detail']:eq(" + index + ")").val();
		 a.centralized_department= $("#cont [ name='centralized_department']:eq(" + index + ")").val();
		 a.account= $("#cont [ name='account']:eq(" + index + ")").val();
		 a.department_name= $("#cont [ name='department_name']:eq(" + index + ")").val();
		 a.account_name= $("#cont [ name='account_name']:eq(" + index + ")").val();
		 contractDetail[i]=a;
	})
	var handleContractDetail = window.top.mainFrame.handleContractDetail;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleContractDetail && typeof(handleContractDetail) == "function"){
		handleContractDetail(contractDetail);
	}
	modalClose();
} 

</script>
<body>
<div id="context">
  <div class="container">
    <div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
         
            <div class="panel-heading">
              <h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">查询采购合同明细</span></a></h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
            
              </div>
</div>
</div>
</div>
</div>
<div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2">
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a>
           		<input type="button" value="确认"   onClick="getContractDetail()" class="btn btn-primary btn-xs" />              
              <input type="button" value="关闭"  class="btn btn-primary btn-xs" onClick="window.parent.document.getElementById('butclose').click()" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:300px" > 
               <table  class="table table-striped table-condensed table-hover" id="cont" >
                  <tr id="title">
                  	<th><input type="checkbox" name="checkAll11" id="quanxuan2"></th>
                    <th>序号</th>
                    <th>货品名称</th>
                    <th>单位</th>
                    <th>规格</th>
                    <th>价格</th>
                    <th>合同数量</th>
                    <th>已生成订单数量数量</th>
                  </tr>
						<c:forEach items="${contractDetailList}" var="list" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids2"  index="${v.index}"/></td>
							<td>${v.count}</td>
							<td style="width:20%">
								${list.name}
								<input type="hidden" name="name"  value="${list.name }" />
								<input type="hidden" name="id2"  value="${list.id}" />
								<input type="hidden" name="material"  value="${list.material }" />
								<input type="hidden" name="unit"  value="${list.unit }" />
								<input type="hidden" name="spec" value="${list.spec}"/>
								<input type="hidden" name="conversion"  value="${list.conversion }" />
								<input type="hidden" name="secondaryPrice" value="${list.secondaryPrice }" />
								<input type="hidden" name="mainPrice" value="${list.mainPrice }" />
								<input type="hidden" name="quantity" value="${list.quantity }" />
								<input type="hidden" name="already_quantity" value="${list.already_quantity }" />
								
								<input type="hidden" name="budget_plan_detail"  value="${list.budget_plan_detail }" />
								<input type="hidden" name="centralized_department" value="${list.centralized_department }" />
								<input type="hidden" name="account" value="${list.account }" />
								<input type="hidden" name="department_name" value="${list.department_name }" />
								<input type="hidden" name="account_name" value="${list.account_name }" />
							</td>
							<td >${list.unit}</td>
						    <td >${list.spec}</td>
						    <td >${list.mainPrice}</td>
						    <td >${list.quantity}</td>
						    <td >${list.already_quantity}</td>
					   </tr>
					   </c:forEach>
                </table>
              </div> 
            </div>
          </div>
        </div>
      </div>
</div>
</div>

</body>
<script type="text/javascript">

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