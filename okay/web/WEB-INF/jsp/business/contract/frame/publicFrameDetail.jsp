<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询框架协议明细信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
function getFrameDetail(){
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
	var frameDetail = new Array();
	$("table input[name=ids2]:checked").each(function(i){
		var a={};
		var index=$(this).attr('index');
		 a.id = $("#cont [name='id2']:eq(" + index + ")").val();
		 a.name= $("#cont [ name='name']:eq(" + index + ")").val();
		 a.material= $("#cont [ name='material']:eq(" + index + ")").val();
		 a.unit= $("#cont [ name='unit']:eq(" + index + ")").val();
		 a.unit_help= $("#cont [ name='unit_help']:eq(" + index + ")").val();
		 a.spec= $("#cont [ name='spec']:eq(" + index + ")").val();
		 a.conversion= $("#cont [ name='conversion']:eq(" + index + ")").val();
		 a.secondaryPrice= $("#cont [ name='secondaryPrice']:eq(" + index + ")").val();
		 a.mainPrice= $("#cont [ name='mainPrice']:eq(" + index + ")").val();
		 frameDetail[i]=a;
	})
	var handleFrameDetail = window.top.mainFrame.handleFrameDetail;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleFrameDetail && typeof(handleFrameDetail) == "function"){
		handleFrameDetail(frameDetail);
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
              <span class="label label-primary">查询框架协议明细</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
              
               </div>
            </div>
          </div>
        </div>
      </div> 
      <div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> <a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a>
              <input type="button" value="确认"   onClick="getFrameDetail()" class="btn btn-primary btn-xs" />              
              <input type="button" value="关闭"  class="btn btn-primary btn-xs" onClick="window.parent.document.getElementById('butclose').click()" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body">
                <table class="table table-striped table-condensed table-hover" id="cont" >
                  <tr>
                    <th><input type="checkbox" name="checkAll11" id="quanxuan2"></th>
                    <th>货品名称</th>
                    <th>单位</th>
                    <th>规格</th>
                    <th>价格</th>
                    <th>拟采购量</th>
                    <th>起订量</th>
                  </tr>
                  <c:forEach items="${frameDetailList}" var="list" varStatus="status">
                      	<tr>
							<td><input type="checkbox" name="ids2"  index="${status.index}"/></td>
							<td style="width:20%">${list.name}
								<input type="hidden" name="name" value="${list.name}" />
								<input type="hidden" name="id2" value="${list.id}" />
								<input type="hidden" name="material" value="${list.material }" />
								<input type="hidden" name="unit" value="${list.unit }" />
								<input type="hidden" name="spec" value="${list.spec }" />
								<input type="hidden" name="conversion" value="${list.conversion }" />
								<input type="hidden" name="secondaryPrice" value="${list.secondaryPrice }" />
								<input type="hidden" name="mainPrice" value="${list.mainPrice }" />
							</td>
							<td >${list.unit}</td>
						    <td >${list.spec}</td>
						    <td >${list.mainPrice}</td>
						    <td >${list.purchasedQuantity}</td>
						    <td >${list.minimumQuantity}</td>
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