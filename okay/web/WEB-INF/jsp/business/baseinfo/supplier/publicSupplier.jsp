<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询供应商信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
function getSupplier(){
	var checkRadio = $("input[name='radioId']:checked");
	if (checkRadio.length == 0) {
		alert("请选择供应商信息！");
		return;
	}
	var checkIndex = checkRadio.attr("index");
	var supplier = {};
	supplier.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
	supplier.supplier_no = $(".dataTable [ name='supplier_no']:eq(" + checkIndex + ")").val();
	supplier.supplier_name = $(".dataTable [name='supplier_name']:eq(" + checkIndex + ")").val();
	supplier.email = $(".dataTable [name='email']:eq(" + checkIndex + ")").val();
	supplier.legal_person = $(".dataTable [name='legal_person']:eq(" + checkIndex + ")").val();
	supplier.supplier_type = $(".dataTable [name='supplier_type']:eq(" + checkIndex + ")").val();
	supplier.score = $(".dataTable [name='score']:eq(" + checkIndex + ")").val();
	supplier.state = $(".dataTable [name='state']:eq(" + checkIndex + ")").val();
	supplier.province = $(".dataTable [name='province']:eq(" + checkIndex + ")").val();
	supplier.opening_bank=$(".dataTable [name='opening_bank']:eq(" + checkIndex + ")").val();
	supplier.tel=$(".dataTable [name='tel']:eq(" + checkIndex + ")").val();
	supplier.linkman=$(".dataTable [name='linkman']:eq(" + checkIndex + ")").val();
	supplier.address=$(".dataTable [name='address']:eq(" + checkIndex + ")").val();
	supplier.bank_account_number=$(".dataTable [name='bank_account_number']:eq(" + checkIndex + ")").val();
	var handleSupplier = window.top.mainFrame.handleSupplier;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleSupplier && typeof(handleSupplier) == "function"){
		handleSupplier(supplier);
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
              <span class="label label-primary">查询供应商</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="supplier" commandName="supplier" name="supplier" action="${ctx}/supplier/publicSupplierQuery.do" method="post">
                <table id="queryTable" class="table table-condensed ">
                  <tr>
                    <th>供应商编码</th>
                    <td><form:input path="supplier_no" cssClass="form-control input-sm"/></td>
                    <th>供应商名称</th>
                    <td>
                      <form:input path="supplier_name" cssClass="form-control input-sm"/>
                    </td>
                  	<th>供应商类别</th>
                  	<td>
						<html:select id="supplier_type" name="supplier_type" classes="form-control input-sm" >     
							<html:sysOptions condition="supplier_type" checkValue="${supplier.supplier_type}" ></html:sysOptions>    
						</html:select>
					</td>
                  </tr>
                  <tr>
                    <td colspan="6" id="tools">
                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      	<input type="button" value="重置"  onclick="resetControl('supplier')" class="btn btn-primary btn-xs" />
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
            	<input type="button" value="确认"  onClick="getSupplier()" class="btn btn-primary btn-xs" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="height:280px;">
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                  	<th></th>
                  	<th>供应商编码</th>
                    <th>供应商名称</th>
                    <th>邮箱</th>
                    <th>法人</th>
                    <th>供应商类别</th>
                    <th>供应商等级</th>
                    <th>供应商状态</th>
                    <th>省份</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${supplier.supplierList}" var="supplier" varStatus="status">
	                 <tr>
	                 	<td><input type="radio" class="form-control input-sm" name="radioId" value="${supplier.id}" index="${status.index}"/></td>
	                 	<td><input type="text" class="form-control input-sm" name="supplier_no" value="${supplier.supplier_no }" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="supplier_name" value="${supplier.supplier_name }" readonly /></td>
						<td><input type="text" class="form-control input-sm" name="email" value="${supplier.email}" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="legal_person" value="${supplier.legal_person }" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="supplier_type" value="${supplier.supplier_type}" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="score" value="${supplier.score }" readonly /></td>
	                 	<td><input type="text" class="form-control input-sm" name="state" value="${supplier.state }" readonly /></td>
	                 	<td>
	                 	<input type="text" class="form-control input-sm" name="province" value="${supplier.province }" readonly />
	                 	<input type="hidden"  name="opening_bank" value="${supplier.opening_bank }" />
	                 	<input type="hidden"  name="tel" value="${supplier.tel }" />
	                 	<input type="hidden"  name="linkman" value="${supplier.linkman }" />
	                 	<input type="hidden"  name="address" value="${supplier.address }" />
	                 	<input type="hidden"  name="bank_account_number" value="${supplier.bank_account_number }" />
	                 	</td>
	                  	<td>
	                  		<a href='${ctx}/supplier/publicViewSupplierCapacity.do?supplierId=${supplier.id}' class="btn btn-primary btn-xs">
	                    		<span class="glyphicon glyphicon-new-window"></span>产能说明
	                    	</a>
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
		<input type="text" name="supplier_no" value="${supplier.supplier_no}">
		<input type="text" name="supplier_name" value="${supplier.supplier_name}">
		<input type="text" name="supplier_type" value="${supplier.supplier_type}">
		<input type="text" name="state" value="${supplier.state}">
		<input type="text" name="province" value="${supplier.province}">
</form>
</body>
</html>