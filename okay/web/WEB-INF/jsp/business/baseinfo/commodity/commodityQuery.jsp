<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询物资信息</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<div id="context">
  <div class="container">
    <div class="row">
         <div class="span12" style="margin-top: 10px;" >
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title">
              <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">基础信息管理>>物料编码管理>>查询物料编码信息</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="material" commandName="material" name="material" action="${ctx}/material/commodityQuery.do?parentId=${parentId }&levels=${levels}" method="post">
                <table id="queryTable" class="table table-condensed ">
                  <tr>
                    <th>物料编码</th>
                    <td><form:input path="code" cssClass="form-control input-sm"/></td>
                    <th>物料名称</th>
                    <td><form:input path="name" cssClass="form-control input-sm"/></td>
                    <th>状态</th>
                    <td>
                    	<html:select id="state" name="state" classes="form-control input-sm" hideName="unitName">     
						<html:sysOptions condition="state" checkValue="${material.state}"></html:sysOptions>    
						</html:select>
					</td>
                  </tr>
                  <tr>
                    <td colspan="8" id="tools">
                      <input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      <button type="button" value="重置" onclick="resetControl('material')" class="btn btn-primary btn-xs">重置 </button>
                    </td>
                  </tr>
                </table>
                </form:form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="span12" style="margin-top: 10px;" >
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
				<c:if test="${levels eq '3' }">
    			<security:authorize ifAllGranted="ROLE_MATERIALTYPE_ADD">
					<button class="btn btn-primary btn-xs"  onclick="modal(900,600,'${ctx}/material/editCommodity.do?parentId=${parentId }&levels=${levels }');">新建物资</button>
            	</security:authorize>
            	</c:if>
            	<security:authorize ifAllGranted="ROLE_MATERIALTYPE_IMP">
            		<button class="btn btn-primary btn-xs"  onclick="modal(900,300,'${ctx}/material/editImpCommodity.do?parentId=${parentId }&levels=${levels }');">导入物资信息</button>
            	</security:authorize>
            	<button class="btn btn-primary btn-xs"  onclick="download()">下载导入物资信息模板</button>
            	<!-- <button class="btn btn-primary btn-xs"  onclick="exportData()">导出物资信息</button> -->
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body"  >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>物料编码</th>
                    <th>物料名称</th>
                    <th>计量单位</th>
                    <th>规格型号</th>
                    <th>说明</th>
                    <th>状态</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${list}" var="c">
                  <tr <c:if test="${c.state eq '停用'}">style="text-decoration:line-through"</c:if>>
                    <td><a onClick="modal(800,500,'${ctx}/material/viewCommodity.do?id=${c.id }');">${c.code }</a></td>
                    <td>
                    	<c:if test="${!(empty c.name) }">
	                    	<c:if test="${fn:length(c.name) > 5}" var="length">
	                     		<a data-toggle="tooltip" title="<c:out value='${c.name}'/>" data-original-title=""><c:out value='${fn:substring(c.name, 0, 5)}'/>...</a>
	                     	</c:if>
	                     	<c:if test="${!length }">
	                     		${c.name}
	                     	</c:if>
	                    </c:if>
                    </td>
                    <td>${c.unit }</td>
                    <td>${c.spec}</td>
                    <td>
                    	<c:if test="${!(empty c.explain) }">
	                    	<c:if test="${fn:length(c.explain) > 10}" var="length">
	                     		<a data-toggle="tooltip" title="<c:out value='${c.explain}'/>" data-original-title=""><c:out value='${fn:substring(c.explain, 0, 10)}'/>...</a>
	                     	</c:if>
	                     	<c:if test="${!length }">
	                     		${c.explain}
	                     	</c:if>
	                    </c:if>
                    </td>
                    <td>${c.state }</td>
                    <td>


                    	<security:authorize ifAllGranted="ROLE_MATERIALTYPE_MOD">
                    		<button class="btn btn-primary btn-xs"  onclick="modal(900,600,'${ctx}/material/editCommodity.do?id=${c.id }')"><span class="glyphicon glyphicon-pencil"></span> <spring:message code="编辑" /></button>
	                    </security:authorize>
	                    <button class="btn btn-primary btn-xs" onClick="jumpType('${c.material_type }')"><span class="glyphicon glyphicon-share-alt"></span>跳转至该分类</button>
	                    <%-- <security:authorize ifAllGranted="ROLE_MATERIALTYPE_DEL">
	                    	<button class="btn btn-primary btn-xs" onClick="deleteCommodity('${c.id}','${parentId}')"><span class="glyphicon glyphicon-trash"></span> 删除</button>
	                    </security:authorize>--%>
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
        	<input type="hidden" name="code" id= "code" value="${material.code }">
        	<input type="hidden" name="name" id= "name" value="${material.name }">
        	<input type="hidden" name="levels" id= "levels" value="${levels}">
        	<input type="hidden" name="parentId" id= "parentId" value="${parentId}">
        	<input type="hidden" name="state" id= "state" value="${material.state}">
        </form>
      </div>
    </div>
  </div>
</div>
	<script type="text/javascript">
		function modal(width,height,url){
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function deleteCommodity(id,parentId){
			if(confirm("确定删除吗?")){	
				window.location.href='${ctx}/material/deleteCommodity.do?id='+id+'&parentId='+parentId;
			}
		}
		function download(){
			location.href="${ctx}/material/downloadCommodityTemplate.do";
		}
		/* function exportData(){
			var url = "${ctx}/material/exportData.do?";
			$("#condition input").each(function(){
				url += $(this).attr("name") + "=" + $(this).val() + "&";
			});
			url = url.substring(0,url.length - 1);
			location.href = url;
		} */
		function jumpType(materialsTypeId){
			window.location.href = "${ctx}/material/commodityQuery.do?parentId=" + materialsTypeId + "&levels=3";
		}
	</script>
</body>
</html>