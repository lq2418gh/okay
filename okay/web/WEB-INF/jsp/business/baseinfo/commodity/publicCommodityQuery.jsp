<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询物料信息</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
	function getCommodityId(){
		var checkRadio = $("input[name='radioId']:checked");
		if (checkRadio.length == 0) {
			alert("请选择物料！");
			return;
		}
		var checkIndex = checkRadio.attr("index");
		var material = {};
		material.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
		material.code = $(".dataTable [name='code']:eq(" + checkIndex + ")").val();
		material.name = $(".dataTable [name='name']:eq(" + checkIndex + ")").val();
		material.unit = $(".dataTable [name='unit']:eq(" + checkIndex + ")").val();
		material.spec = $(".dataTable [name='spec']:eq(" + checkIndex + ")").val();
		material.conversion = $(".dataTable [name='conversion']:eq(" + checkIndex + ")").val();
		material.explain = $(".dataTable [name='explain']:eq(" + checkIndex + ")").val();
		var handleMaterial = window.top.mainFrame.handleMaterial;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
		if(handleMaterial && typeof(handleMaterial) == "function"){
			handleMaterial(material);
		}
		modalClose();
	} 
</script>
<body>
<div id="context">
  <div class="container">
    <div class="row">
         <div class="span13" style="margin-top: 10px;">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">查询物料编码</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="material" commandName="material" name="commodityForm" action="${ctx}/material/publicCommodityQuery.do?parentId=${parentId }" method="post">
                <table id="queryTable" class="table table-condensed ">
                  <tr>
                    <th>物料编码</th>
                    <td><form:input path="code" cssClass="form-control input-sm"/></td>
                    <th>物料名称</th>
                    <td><form:input path="name" cssClass="form-control input-sm"/></td>
                  </tr>
                  <tr>
                    <td colspan="4" id="tools">
                      <input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      <input type="button" value="重置" onclick="resetControl('material')" class="btn btn-primary btn-xs" />
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
      <div class="span13" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
            	<input type="button" value="确认"  onClick="getCommodityId()" class="btn btn-primary btn-xs" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="height:280px;">
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                  	<th></th>
                    <th>物料编码</th>
                    <th>物料名称</th>
                    <th>计量单位</th>
                    <th>规格型号</th>
                    <th>说明</th>
                  </tr>
                  <c:forEach items="${list}" var="c" varStatus="status">
                  <tr>
                  	<td><input type="radio" class="form-control input-sm" name="radioId" value="${c.id}" index="${status.index}" /></td>
                  	<td><input type="text" class="form-control input-sm" name="code" value="${c.code }" readonly /></td>
                  	<td><input type="text" class="form-control input-sm" name="name" value="${c.name }" readonly /></td>
                  	<td><input type="text" class="form-control input-sm" name="unit" value="${c.unit }" readonly /></td>
                  	<td><input type="text" class="form-control input-sm" name="spec" value="${c.spec }" readonly /></td>
                  	<td>
                  	<input type="hidden"  name="conversion" value="${c.conversion }" readonly />
                  	<input type="text" class="form-control input-sm" name="explain" value="${c.explain }" readonly />
                  	</td>
                  </tr>
				  </c:forEach>
                </table>
              </div>
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
<form id="condition" name="condition"  hidden="true" method="post">
     <input type="hidden" name="code" id= "code" value="${material.code }">
     <input type="hidden" name="name" id= "name" value="${material.name }">
</form>
</body>
</html>