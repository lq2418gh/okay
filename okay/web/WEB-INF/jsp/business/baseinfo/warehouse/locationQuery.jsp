<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询储位信息</title>
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
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">基础信息管理>>仓库储位管理>>查询储位信息</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="locationForm" commandName="locationForm" name="locationForm" action="${ctx}/warehouse/locationQuery.do" method="post">
                <table id="queryTable" class="table table-condensed ">
                <form:hidden path="regionId"/>
                  <tr>
                    <th>储位编码</th>
                    <td><form:input path="locationCode" cssClass="form-control input-sm"/></td>
                    <th>储位名称</th>
                    <td><form:input path="locationName" cssClass="form-control input-sm"/></td>
                  </tr>
                  <tr>
                    <th>状态</th>
                    <td><form:select path="state" cssClass="form-control input-sm" >
                    		<form:option value=""><-- 请选择  --></form:option>
                    		<form:option value="使用">使用</form:option>
                    		<form:option value="停用">停用</form:option>
                    	</form:select>
                    </td>
                    <th>储位类型</th>
                    <td><form:select path="locationType" cssClass="form-control input-sm" >
                    		<form:option value=""><-- 请选择  --></form:option>
                    		<form:option value="平面">平面</form:option>
                    		<form:option value="立体">立体</form:option>
                    	</form:select>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" id="tools">
                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      	<input type="button" value="重置"  onclick="resetControl('locationForm')" class="btn btn-primary btn-xs" />
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
				<security:authorize ifAllGranted="ROLE_LOCATION_ADD">
				<button class="btn btn-primary btn-xs"  onclick="modal(900,600,'${ctx}/warehouse/editLocation.do?regionId=${locationForm.regionId }');">新建储位</button>
				</security:authorize>
				<security:authorize ifAllGranted="ROLE_LOCATION_IMP">
				<button class="btn btn-primary btn-xs"  onclick="modal(900,700,'${ctx}/warehouse/editLocationList.do?regionId=${locationForm.regionId }');">批量新建储位</button>
            	</security:authorize>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>储位编码</th>
                    <th>储位名称</th>
                    <th>储位类型</th>
                    <th>仓库编码</th>
                    <th>库区编码</th>
                    <th>状态</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${locationForm.locationList}" var="location">
                  <tr>
                    <td><a  onclick="modal(900,400,'${ctx}/warehouse/viewLocation.do?locationId=${location.locationId }');">${location.locationCode }</a></td>
                    <td>${location.locationName }</td>
                    <td>${location.locationType }</td>
                    <td>${location.warehouseCode }</td>
                    <td>${location.regionCode }</td>
                    <td>${location.state }</td>
                    <td>
                    <security:authorize ifAllGranted="ROLE_LOCATION_MOD">
                    <button class="btn btn-primary btn-xs"  onclick="modal(900,600,'${ctx}/warehouse/editLocation.do?locationId=${location.locationId }');"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                    </security:authorize>
                    <security:authorize ifAllGranted="ROLE_LOCATION_DEL">
                    <button class="btn btn-primary btn-xs" onclick="deleteLocation('${location.regionId }','${location.locationId }');"><span class="glyphicon glyphicon-trash"></span>  删除</button>
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
        	<input type="hidden" name="locationCode" id= "locationCode" value="${locationForm.locationCode }">
        	<input type="hidden" name="locationName" id= "locationName" value="${locationForm.locationName }">
        	<input type="hidden" name="state" id= "state" value="${locationForm.state }">
        	<input type="hidden" name="locationType" id= "locationType" value="${locationForm.locationType }">
        	<input type="hidden" name="regionId" id= "regionId" value="${locationForm.regionId }">
        </form>
      </div>
    </div>
  </div>
</div>
	<script type="text/javascript">
		function modal(width,height,url){
			//window.top.document.getElementById("modal-dialog").style.marginTop=margin;
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function deleteLocation(regionId,locationId){
			if(confirm("确定删除吗?")){	
				window.location.href='${ctx}/warehouse/deleteLocation.do?regionId='+regionId+'&locationId='+locationId;
			}
		}
	</script>
	<c:if test="${ not empty locationForm.message}"> 
		<script type="text/javascript">
			window.top.frames["mainFrame"].location.href='${ctx}/warehouse/warehouse.do?regionId=${locationForm.regionId}';
			alert('${locationForm.message}');
		</script> 
	</c:if>
</body>
</html>