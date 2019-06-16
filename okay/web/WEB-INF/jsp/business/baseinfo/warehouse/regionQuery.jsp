<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询库区信息</title>
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
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">基础信息管理>>仓库储位管理>>查询库区信息</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="region" commandName="region" name="region" action="${ctx}/warehouse/regionQuery.do" method="post">
                <table id="queryTable" class="table table-condensed ">
                <form:hidden path="warehouseId"/>
                  <tr>
                    <th>库区编码</th>
                    <td><form:input path="regionCode" cssClass="form-control input-sm"/></td>
                    <th>库区名称</th>
                    <td><form:input path="regionName" cssClass="form-control input-sm"/></td>
                  </tr>
                  <tr>
                    <td colspan="4" id="tools">
                    	<input type="submit" value="查询"  class="btn btn-primary btn-xs"/>
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
				<security:authorize ifAllGranted="ROLE_REGION_ADD">
					<button class="btn btn-primary btn-xs"  onclick="modal(900,400,'${ctx}/warehouse/editRegion.do?warehouseId=${region.warehouseId}');">新建库区</button>
				</security:authorize>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>库区编码</th>
                    <th>库区名称</th>
                    <th>状态</th>
                    <th>面积</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${region.regionList}" var="region">
                  <tr>
                    <td><a  onclick="modal(900,300,'${ctx}/warehouse/viewRegion.do?regionId=${region.regionId }');">${region.regionCode }</a></td>
                    <td>${region.regionName }</td>
                    <td>${region.state }</td>
                    <td>${region.area }</td>
                    <td>
                    <security:authorize ifAllGranted="ROLE_REGION_MOD">
                    	<button class="btn btn-primary btn-xs"  onclick="modal(900,400,'${ctx}/warehouse/editRegion.do?regionId=${region.regionId}');"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                    </security:authorize>
                    <security:authorize ifAllGranted="ROLE_REGION_DEL">
                    	<button class="btn btn-primary btn-xs" onclick="deleteRegion('${region.regionId }','${region.warehouseId }');"><span class="glyphicon glyphicon-trash"></span> 删除</button>
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
        	<input type="hidden" name="regionCode" id= "regionCode" value="${regionForm.regionCode }">
        	<input type="hidden" name="regionName" id= "regionName" value="${regionForm.regionName }">
        	<input type="hidden" name="warehouseId" id= "warehouseId" value="${regionForm.warehouseId }">
        </form>
      </div>
    </div>
  </div>
</div>
	<script type="text/javascript">
	    function resetControl(){
	    	$("#regionCode").val("");
	    	$("#regionName").val("");
	    }
		function modal(width,height,url){
			//window.top.document.getElementById("modal-dialog").style.marginTop=margin;
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function deleteRegion(regionId,warehouseId){
			if(confirm("确定删除吗?")){	
				window.location.href='${ctx}/warehouse/deleteRegion.do?regionId='+regionId+'&warehouseId='+warehouseId;
			}
		}
	</script>
	<c:if test="${ not empty region.message}"> 
		<script type="text/javascript">
			window.top.frames["mainFrame"].location.href='${ctx}/warehouse/warehouse.do?warehouseId=${region.warehouseId }';
			alert('${region.message}');
		</script> 
	</c:if>
</body>
</html>