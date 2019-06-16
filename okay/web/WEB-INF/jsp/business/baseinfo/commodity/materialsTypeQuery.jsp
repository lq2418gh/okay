<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询物资类别</title>
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
              <span class="label label-primary">基础信息管理>>物料编码管理 >>查询物料类别信息1</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
              <form:form id="materialType" commandName="materialType" name="materialType" action="${ctx}/material/materialsTypeQuery.do?parentId=${parentId }" method="post">
                <table id="queryTable" class="table table-condensed ">
                  <tr>
                    <th>物料类别编码</th>
                    <td><form:input path="code" cssClass="form-control input-sm"/></td>
                    <th>物料类别名称</th>
                    <td><form:input path="name" cssClass="form-control input-sm"/></td>
                  </tr>
                  <tr>
                    <td colspan="4" id="tools">
                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      	<button type="button" value="重置" onclick="resetControl('materialType')" class="btn btn-primary btn-xs">重置 </button>
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
          <div class="panel panel-default"  >
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
				<security:authorize ifAllGranted="ROLE_MATERIAL_ADD">
					<button class="btn btn-primary btn-xs"  onclick="modal(900,350,'${ctx}/material/editMaterialsType.do?parentId=${parentId}');">新建类别</button>
				</security:authorize>
				<security:authorize ifAllGranted="ROLE_MATERIAL_IMP">
            		<button class="btn btn-primary btn-xs"  onclick="modal(900,300,'${ctx}/material/editImpMaterialsType.do?parentId=${parentId }');">导入物资类别</button>
            	</security:authorize>
            	<button class="btn btn-primary btn-xs"  onclick="download()">下载导入物资类别模板</button>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="height: 80%" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>物料类别编码</th>
                    <th>物料类别名称</th>
                    <th>物料类别父类编码</th>
                    <th>层级</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${list}" var="c">
					<tr>
						<td><a onClick="modal(900,350,'${ctx}/material/viewMaterialsType.do?id=${c.id}');">${c.code }</a></td>
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
						<td>${c.parentCode }</td>	
						<td>${c.levels }</td>										
						<td>
							<security:authorize ifAllGranted="ROLE_MATERIAL_MOD">
								<button class="btn btn-primary btn-xs" onClick="modal(900,350,'${ctx}/material/editMaterialsType.do?id=${c.id}');"><span class="glyphicon glyphicon-pencil"></span>编辑</button>
                       		</security:authorize>
                       		<security:authorize ifAllGranted="ROLE_MATERIAL_DEL">
                       			<button class="btn btn-primary btn-xs" onClick="deleteMaterialsType('${c.id}','${parentId }')"><span class="glyphicon glyphicon-trash"></span>删除</button>
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
      </div>
    </div>
  </div>
</div>
	<form id="condition" name="condition"  hidden="true" method="post">
      	<input type="hidden" name="code" id= "code" value="${materialType.code }">
      	<input type="hidden" name="name" id= "name" value="${materialType.name }">
      	<input type="hidden" name="parentId" id= "parentId" value="${parentId }">
    </form>
	<script type="text/javascript">
		function modal(width,height,url){
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			setTimeout(function(){window.top.document.getElementById("modal").click();}, 1500);
		}
		function deleteMaterialsType(id,parentId){
			if(confirm("确定删除吗?")){	
				window.location.href='${ctx}/material/deleteMaterialsType.do?id='+id+"&parentId="+parentId;
			}
		}
		function download(){
			window.location.href="${ctx}/material/downloadMaterialsTypeTemplate.do";
		}
	</script>
</body>
</html>