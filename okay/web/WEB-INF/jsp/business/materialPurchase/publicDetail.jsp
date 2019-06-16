<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询物资审批表明细信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
var i=0;
function getDetail(){
	 var checkRadio = new Array();
		$("table input[name=ids]:checked").each(function(i){
			  if(0==i){
				  checkRadio = $(this).attr("index");
				  
			  }else{
				  checkRadio += (","+$(this).attr("index"));
			  }
		 })
	if(checkRadio.split(",").length==0){
		alert("请选择物资审批明细信息！");
		return;
	}	
	
	var detail = new Array();
	 for(var i=0;i<checkRadio.split(",").length;i++){
		 var checkIndex = checkRadio.split(",")[i];
		 var a={};
		 a.id = $(".dataTable [name='id']:eq(" + checkIndex + ")").val();
		 a.name= $(".dataTable [ name='name']:eq(" + checkIndex + ")").val();
		 a.purchase_head_id= $(".dataTable [ name='purchase_head_id']:eq(" + checkIndex + ")").val();
		 a.material= $(".dataTable [ name='material']:eq(" + checkIndex + ")").val();
		 a.unit= $(".dataTable [ name='unit']:eq(" + checkIndex + ")").val();
		 a.spec= $(".dataTable [ name='spec']:eq(" + checkIndex + ")").val();
		 a.conversion= $(".dataTable [ name='conversion']:eq(" + checkIndex + ")").val();
		 
		 
		 a.budget_plan_detail= $(".dataTable [ name='budget_plan_detail']:eq(" + checkIndex + ")").val();
		 a.explain= $(".dataTable [ name='explain']:eq(" + checkIndex + ")").val();
		 a.code= $(".dataTable [ name='code']:eq(" + checkIndex + ")").val();
		 a.account= $(".dataTable [ name='account']:eq(" + checkIndex + ")").val();
		 a.centralized_department= $(".dataTable [ name='centralized_department']:eq(" + checkIndex + ")").val();
		 a.secondaryQuantity= $(".dataTable [ name='secondary_Quantity']:eq(" + checkIndex + ")").val();
		 a.quantity= $(".dataTable [ name='main_Quantity']:eq(" + checkIndex + ")").val();
		 
		 
		 a.department_name= $(".dataTable [ name='department_name']:eq(" + checkIndex + ")").val();
		 a.account_name= $(".dataTable [ name='account_name']:eq(" + checkIndex + ")").val();

		 a.frame_detail_id= $(".dataTable [ name='frame_detail_id']:eq(" + checkIndex + ")").val();
		 <c:if test="${'' eq type}">
		 a.secondaryPrice= $(".dataTable [ name='secondary_Price']:eq(" + checkIndex + ")").val();
		 a.mainPrice= $(".dataTable [ name='main_Price']:eq(" + checkIndex + ")").val();
		 </c:if>
		 
		 <c:if test="${'frame' eq type}">
		 a.secondaryPrice= $(".dataTable [ name='secondary_Price_f']:eq(" + checkIndex + ")").val();
		 a.mainPrice= $(".dataTable [ name='main_Price_f']:eq(" + checkIndex + ")").val();
		 </c:if>
		 
		 detail[i]=a;
	} 
	 console.log(a);
  	var handleDetail = window.top.mainFrame.handleDetail;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleDetail && typeof(handleDetail) == "function"){
		handleDetail(detail);
	}
	modalClose(); 
}
</script>
<body>
<div id="context">
  <div class="container">
    <div class="row">
       <div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">查询物资采购审批表明细</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
              <c:if test=""></c:if>
               </div>
            </div>
          </div>
        </div>
      </div> 
      <div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> <a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a>
              <input type="button" value="确认"   onClick="getDetail()" class="btn btn-primary btn-xs" />              
              <input type="button" value="关闭"  class="btn btn-primary btn-xs" onClick="window.parent.document.getElementById('butclose').click()" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body">
                <table class="table table-striped table-condensed table-hover dataTable" id="cont" >
                  <tr>
                    <th><input type="checkbox" name="checkAll11" id="quanxuan2"></th>
                    <th>序号</th>
					<th>物资名称</th>
					<th>物资编码</th>
					<th>规格型号</th>
					<th>计量单位</th>
					<th>数量</th>
					<th>单价(元)</th>
					<th>金额(元)</th>					
					<th>预算部门</th>
					<th>预算科目</th>
					<th>说明</th>
                  </tr>
                  <c:forEach items="${materialPurchaseDetailList}" var="c" varStatus="status">
                      <tr>
						<td><input type="checkbox" name="ids" index="${status.index}"/></td>
						<td>${status.count }</td>
						<td>${c.name }
							<input type="hidden" name="name" value="${c.name }"/> 
							<input type="hidden" name="material" value="${c.material }" />
							<input type="hidden" name="conversion" value="${c.conversion }" />
							<input type="hidden" name="purchase_head_id" value="${c.purchase_head_id }" />
							<input type="hidden" name="id" value="${c.id }" />
							<input type="hidden" name="budget_plan_detail" value="${c.budget_plan_detail }" />
							<input type="hidden" name="account" value="${c.account }" />
							<input type="hidden" name="centralized_department" value="${c.centralized_department }" />
							<input type="hidden" name="secondary_Price" value="${c.secondary_Price }" />
							<input type="hidden" name="secondary_Quantity" value="${c.secondary_Quantity }" />
							<input type="hidden" name="department_name" value="${c.department_name }" />
							<input type="hidden" name="account_name" value="${c.account_name }" />
							<input type="hidden" name="code" value="${c.code }" />
							<input type="hidden" name="spec" value="${c.spec }" />
							<input type="hidden" name="unit" value="${c.unit }" />
							<input type="hidden" name="main_Quantity" value="${c.main_Quantity }" />
							<input type="hidden" name="main_Price" value="${c.main_Price }" />
							<input type="hidden" name="amount" value="${c.amount }" />
							<input type="hidden" name="explain" value="${c.explain }" />
							
							<input type="hidden" name="secondary_Price_f" value="${c.secondary_Price_f }" />
							<input type="hidden" name="main_Price_f" value="${c.main_Price_f }" />
							<input type="hidden" name="frame_detail_id" value="${c.frame_detail_id }" />
						</td>
						<td>${c.code }</td>
						<td>${c.spec }</td>
						<td>${c.unit }</td>
						<td>${c.main_Quantity }</td>
						<td>${c.main_Price }</td>
						<td>${c.amount }</td>
					  	<td>${c.department_name }</td>
						<td>${c.account_name }</td>
						<td>${c.explain }</td>
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
</div>
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