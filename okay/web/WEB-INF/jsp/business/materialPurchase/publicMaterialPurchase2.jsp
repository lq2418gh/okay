<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询供应商信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
var i=0;
function getMaterialPurchase(){
	var count=0;
	var cont=document.getElementsByName('ids');
	for( i=0;i<cont.length;i++){
		if(cont[i].checked){
			count++;
		}
	}
	if(count==0){
		alert("请选择物资采购审核信息！");
		return;
	}
	 var checkRadio = new Array();
	$("table input[type=checkbox]:checked").each(function(i){
		  if(0==i){
			  checkRadio = $(this).attr("index");
			  
		  }else{
			  checkRadio += (","+$(this).attr("index"));
		  }
	 })
	  var materialPurchase = new Array();
	 for(var i=0;i<checkRadio.split(",").length;i++){
		 var checkIndex = checkRadio.split(",")[i];
		 var a={};
		 a.id = $(".dataTable [name='id']:eq(" + checkIndex + ")").val();
		 a.purchase_no= $(".dataTable [ name='purchase_no']:eq(" + checkIndex + ")").val();
		 materialPurchase[i]=a;
	}   
	 if(confirm("请注意选择的数据将要影响上级页面选择的明细，确定要选择这些数据吗")){
		 var handleMaterialPurchase = window.top.mainFrame.handleMaterialPurchase;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
			if(handleMaterialPurchase && typeof(handleMaterialPurchase) == "function"){
				handleMaterialPurchase(materialPurchase);
			}
			modalClose(); 
	 }
 	
	 
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
              <span class="label label-primary">查询物资采购审批表</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="materialPurchaseHead" commandName="materialPurchaseHead" name="materialPurchaseHead" action="${ctx}/materialPurchase/publicMaterialPurchase2.do" method="post">
                <table id="queryTable" class="table table-condensed ">
                 <tr>
                  <th>采购表编码</th>
					<td><form:input path="purchase_no" id="purchase_no" maxlength="64" cssClass="form-control input-sm"/></td>
					<th>填报日期</th>
					<td>
						<div class="input-group" style="width: 50%">
							<form:input type="text" id="inputDateBegin" path="inputDateBegin" cssClass="form-control input-sm form_datetime" readonly="true"/>
							<span class="input-group-btn">
								<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
									<span class="glyphicon glyphicon-remove"></span>
								</button>
							</span>
						</div>
						<div class="input-group" style="width: 50%">
							<form:input type="text" id="inputDateEnd" path="inputDateEnd" cssClass="form-control input-sm form_datetime" readonly="true"/>
							<span class="input-group-btn">
								<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
									<span class="glyphicon glyphicon-remove"></span>
								</button>
							</span>
						</div>
					</td>
					<th>归口部门</th>
					<td>
						<html:select id="centralized_department" name="centralized_department" classes="form-control input-sm">
							<html:businessOptions function="company" condition="" checkValue="${materialPurchaseHead.centralized_department}"></html:businessOptions>
						</html:select>
					</td>
				  </tr>
				  <tr>
					<th>采购表状态</th>
					<td>
						<form:input type="text" id="state" path="state"  cssClass="form-control input-sm " readonly="true"/>
					</td>
					<th>采购时限</th>
					<td>
						<div class="input-group" style="width: 50%">
							<form:input type="text" id="ptlBeginTime" path="ptlBeginTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
							<span class="input-group-btn">
								<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
									<span class="glyphicon glyphicon-remove"></span>
								</button>
							</span>
						</div>
						<div class="input-group" style="width: 50%">
							<form:input type="text" id="ptlEndTime" path="ptlEndTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
							<span class="input-group-btn">
								<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
									<span class="glyphicon glyphicon-remove"></span>
								</button>
							</span>
						</div>
					</td>
					<th></th>
					<td></td>
					</tr>
                  <tr>
                    <td colspan="6" id="tools">
                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      	<input type="button" value="重置"  onclick="resetControl('materialPurchaseHead')" class="btn btn-primary btn-xs" />
                    	<input type="button" value="关闭" class="btn btn-primary btn-xs" onclick="window.parent.parent.document.getElementById('butclose').click()">
                    </td>
                  </tr>
                </table>
                </form:form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
            	<input type="button" value="确认"  onClick="getMaterialPurchase()" class="btn btn-primary btn-xs" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="height:280px;">
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                  	<th><input type="checkbox" name="checkAll11" id="quanxuan1"></th>
                  	<th>采购表编号</th>
					<th>归口部门</th>
					<th>填报日期</th>
					<th>填报人</th>
					<th>采购时限</th>
           		  </tr>
                  <c:forEach items="${MaterialPurchaseHeadList }" var="mp" varStatus="status">
	                 <tr>
	                 	<td><input type="checkbox" name="ids" index="${status.index}"/><input type="hidden" name="id" value="${mp.id }"/></td>
	                 	<td><input type="text" class="form-control input-sm" name="purchase_no" value="${mp.purchase_no }" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="company_name" value="${mp.company_name }" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="input_date" value="<fmt:formatDate value="${mp.input_date}" pattern="yyyy-MM-dd" />" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="realName" value="${mp.realName }" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="purchase_time_limit" value="<fmt:formatDate value="${mp.purchase_time_limit}" pattern="yyyy-MM-dd" />" readonly /></td>
	                  </tr>
                  </c:forEach>
                </table>
              </div>
              <table class="table table-condensed" id="pageTools">
				<tr>
					<td>
						<!------------- 分页开始 ------------->	
						<jsp:include page="../../common/page.jsp">
							<jsp:param name="url" value="${pageUrl}" /> 
						</jsp:include> 
						<!------------- 分页结束 -------------> 
					</td>
				</tr>
			</table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<form id="condition" name="condition" hidden="true" method="post">
	<input type="text" id="purchase_no" name="purchase_no" value="${materialPurchaseHead.purchase_no}" class="form-control input-sm" /> 
	<input type="text" id="state" name="state" value="${materialPurchaseHead.state}" class="form-control input-sm" /> 
	<input type="text" id="centralized_department" name="centralized_department" value="${materialPurchaseHead.centralized_department}" class="form-control input-sm" />
	<input type="text" id="inputDateBegin" name="inputDateBegin" value="${materialPurchaseHead.inputDateBegin }"class="form-control input-sm">
	<input type="text" id="inputDateEnd" name="inputDateEnd" value="${materialPurchaseHead.inputDateEnd }"class="form-control input-sm">
	<input type="text" id="ptlBeginTime" name="ptlBeginTime" value="${materialPurchaseHead.ptlBeginTime }"class="form-control input-sm">
	<input type="text" id="ptlEndTime" name="ptlEndTime" value="${materialPurchaseHead.ptlEndTime }"class="form-control input-sm">
</form>
<script type="text/javascript">
	$(document).ready(function(){
	 	$("input[type='checkbox']").iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue'
		}); 
		//复选框样式生成
		$('#quanxuan1').on('ifChecked', function(event){
			$("input[type='checkbox']").iCheck('check');
		});
		$('#quanxuan1').on('ifUnchecked', function(event){
			$("input[type='checkbox']").iCheck('uncheck');
		});
	});
</script>
</body>
</html>