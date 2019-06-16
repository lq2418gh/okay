<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询仓库信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
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
                <form:form id="warehouse" commandName="warehouse" name="warehouse" action="${ctx}/warehouse/warehouseQuery.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>仓库名称</th>
	                    <td><form:input path="warehouseName" cssClass="form-control input-sm"/></td>
	                    <th>状态</th>
	                    <td>
	                    	<form:select path="state" cssClass="form-control input-sm" >
	                    		<form:option value="">请选择</form:option>
	                    		<form:option value="使用">使用</form:option>
	                    		<form:option value="停用">停用</form:option>
	                    	</form:select>
	                    </td>
	                  </tr>
	                  <tr>
	                    <td colspan="4" id="tools">
	                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
	                      	<input type="button" value="重置"  onclick="resetControl()" class="btn btn-primary btn-xs" />
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
				<security:authorize ifAllGranted="ROLE_WAREHOUSE_ADD">
					<button class="btn btn-primary btn-xs"  onclick="modal(900,600,'${ctx}/warehouse/editWarehouse.do');">新建仓库</button>
				</security:authorize>
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>仓库编码</th>
                    <th>仓库名称</th>
                    <th>状态</th>
                    <th>面积</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${warehouse.warehouseList}" var="warehouse">
                  <tr>
                    <td><a  onclick="modal(900,400,'${ctx}/warehouse/viewWarehouse.do?warehouseId=${warehouse.warehouseId }');">${warehouse.warehouseCode }</a></td>
                    <td>${warehouse.warehouseName }</td>
                    <td>${warehouse.state }</td>
                    <td>${warehouse.area }</td>
                    <td>
                    <security:authorize ifAllGranted="ROLE_WAREHOUSE_MOD">
                    	<button class="btn btn-primary btn-xs"  onclick="modal(900,600,'${ctx}/warehouse/editWarehouse.do?warehouseId=${warehouse.warehouseId }');"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                    </security:authorize>
                    <security:authorize ifAllGranted="ROLE_WAREHOUSE_DEL">
                    	<button class="btn btn-primary btn-xs" onclick="deleteWarehouse('${warehouse.warehouseId }');"><span class="glyphicon glyphicon-trash"></span> 删除</button>
                    </security:authorize>
                    </td>
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
         <form id="condition" name="condition"  hidden="true" method="post">
        	<input type="hidden" name="warehouseName" id= "warehouseName" value="${warehouse.warehouseName }">
        	<input type="hidden" name="state" id= "state" value="${warehouse.state }">
        </form>
      </div>
    </div>
  </div>
</div>
	<script type="text/javascript">
	    function resetControl(){
	    	$("#warehouseName").val("");
	    	$("#state").val("");
	    }
		
		function deleteWarehouse(warehouseId){
			if(confirm("确定删除吗?")){	
				window.location.href='${ctx}/warehouse/deleteWarehouse.do?warehouseId='+warehouseId;
			}
		}
	</script>
	<c:if test="${ not empty warehouse.message}"> 
		<script  type="text/javascript">
			alert("${warehouse.message}");
			window.top.frames["mainFrame"].location.href='${ctx}/warehouse/warehouse.do';
		</script> 
	</c:if>
</body>
</html>