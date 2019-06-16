<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询仓库信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	<script type="text/javascript">
function getWarehouse(){
	var checkRadio = $("input[name='radioId']:checked");
	if (checkRadio.length == 0) {
		alert("请选择仓库！");
		return;
	}
	var checkIndex = checkRadio.attr("index");
	var warehouse = {};
	warehouse.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
	warehouse.name = $(".dataTable [name='warehouseName']:eq(" + checkIndex + ")").val();
	var handleWarehouse = window.top.mainFrame.handleWarehouse;// handleWarehouse方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleWarehouse && typeof(handleWarehouse) == "function"){
		handleWarehouse(warehouse);
	}
	modalClose();
} 
</script>
</head>

<body>
<div id="context">
  <div class="container">
    <div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" 
              	style="display: block;"><span class="label label-primary">基础信息管理>>仓库储位管理>>查询仓库信息</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="warehouse" commandName="warehouse" name="warehouse" action="${ctx}/warehouse/publicWarehouseQuery.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                  	<th>仓库编码</th>
	                    <td><form:input path="warehouseCode" cssClass="form-control input-sm"/></td>
	                    <th>仓库名称</th>
	                    <td><form:input path="warehouseName" cssClass="form-control input-sm"/></td>
	                  </tr>
	                  <tr>
	                    <td colspan="4" id="tools">
	                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
	                      	<input type="button" value="重置"  onclick="resetControl('warehouse')" class="btn btn-primary btn-xs" />
	                      	 <input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.parent.parent.document.getElementById('butclose').click()" />
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
				<input type="button" value="确认"  onClick="getWarehouse()" class="btn btn-primary btn-xs" />
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                  	<th></th>
                    <th>仓库编码</th>
                    <th>仓库名称</th>
                    <th>状态</th>
                    <th>面积</th>
                  </tr>
                  <c:forEach items="${warehouse.warehouseList}" var="warehouse" varStatus="status">
                  <tr>
                  	<td><input type="radio" style="width: 100%" class="form-control input-sm" name="radioId" value="${warehouse.warehouseId}" index="${status.index}" /></td>
                    <td><input type="text" style="width: 100%" class="form-control input-sm" name="warehouseCode" value="${warehouse.warehouseCode }" readonly /></td>
                    <td><input type="text" style="width: 100%" class="form-control input-sm" name="warehouseName" value="${warehouse.warehouseName }" readonly /></td>
                    <td><input type="text" style="width: 100%" class="form-control input-sm" name="state" value="${warehouse.state }" readonly /></td>
                    <td><input type="text" style="width: 100%" class="form-control input-sm" name="area" value="${warehouse.area }" readonly /></td>
                  </tr>
                  </c:forEach>
                </table>
              
         	<table class="table table-condensed" id="pageTools">
				<tr>
					<td>
						<!------------- 分页开始 ------------->	
						<jsp:include page="../../../common/page.jsp">
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
</div>
<form id="condition" name="condition"  hidden="true" method="post">
	<input type="text" name="warehouseCode" value="${warehouse.warehouseCode}">
	<input type="text" name="warehouseName" value="${warehouse.warehouseName}">
</form>
</body>
</html>