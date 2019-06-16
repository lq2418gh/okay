<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询供应商信息</title>
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
			              	style="display: block;"><span class="label label-primary">基础信息管理>>供应商管理>>查询</span></a>
			              </h4>
			            </div>
			            <div id="collapseOne" class="panel-collapse collapse in">
			            	<div class="panel-body">
			            	  <form:form id="supplier" commandName="supplier" name="supplier" 
			            	  			action="${ctx}/supplier/supplierQuery.do" method="post">
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
					                  	<th>供应商状态</th>
					                  	<td>
											<html:select id="state" name="state" classes="form-control input-sm" >     
												<html:sysOptions condition="supplier_state" checkValue="${supplier.state}" ></html:sysOptions>    
											</html:select>
										</td>
										<th>省份</th>
										<td>
											<html:select id="province" name="province" classes="form-control input-sm" >     
												<html:sysOptions condition="province" checkValue="${supplier.province}" ></html:sysOptions>    
											</html:select>
										</td>
										<th></th>
										<td></td>
									  </tr>
					                  <tr>
					                    <td colspan="6" id="tools">
					                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
					                      	<input type="button" value="重置"  onclick="resetControl('supplier')" class="btn btn-primary btn-xs" />
					                    </td>
					                  </tr>
			            	    </table>
			            	  </form:form>
			            	</div>
			            </div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="span12" style="margin-top: 10px;">
			  <div class="panel-group" id="accordion2">
			    <div class="panel panel-default">
			      <div class="panel-heading"> 
	            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
					<a class="btn btn-primary btn-xs"  href='${ctx}/supplier/editSupplier.do'>新建供应商</a>
            		<button class="btn btn-primary btn-xs"  onclick="modal(900,300,'${ctx}/supplier/editImpSupplier.do');">导入供应商信息</button>
            		<a class="btn btn-primary btn-xs"  href='${ctx}/supplier/downloadSupplierTemplate.do'>下载导入供应商模板</a>
				  </div>
				  <div id="collapseTwo" class="panel-collapse collapse in">
				    <div class="panel-body">
				      <table class="table table-striped table-condensed table-hover">
				        <tr>
		                    <th width="14%">供应商编码</th>
		                    <th width="13%">供应商名称</th>
		                    <th width="9%">法人</th>
		                    <th width="13%">供应商类别</th>
		                    <th width="13%">供应商等级</th>
		                    <th width="13%">供应商状态</th>
		                    <th width="13%">省份</th>
		                    <th width="13%">操作</th>
		                </tr>
		                <c:forEach items="${supplier.supplierList}" var="supplier">
		                 <tr>
		                 	<td><a style="font-style: oblique;" href='${ctx}/supplier/viewSupplier.do?supplierNo=${supplier.supplier_no}'>
		                 		${supplier.supplier_no }</a></td>
		                    <td>${supplier.supplier_name }</td>
		                    <td>${supplier.legal_person }</td>
		                    <td>${supplier.supplier_type }</td>
		                    <td>${supplier.score }</td>
		                    <td>${supplier.state }</td>
		                    <td>${supplier.province }</td>
		                    <td>
		                      <c:if test="${supplier.state=='新建' || supplier.state=='临时'}">
		                    	<button class="btn btn-primary btn-xs" onclick="deleteSupplier('${supplier.id}');">
		                    		<span class="glyphicon glyphicon-trash"></span> 删除</button>
		                      </c:if>
		                      <c:if test="${supplier.state!='待审批'}">
		                    	<a href='${ctx}/supplier/viewSupplierCapacity.do?supplierId=${supplier.id}' 
		                    		class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-new-window"></span>产能说明</a>
		                      </c:if>
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
		<input type="text" name="supplier_no" value="${supplier.supplier_no}">
		<input type="text" name="supplier_name" value="${supplier.supplier_name}">
		<input type="text" name="supplier_type" value="${supplier.supplier_type}">
		<input type="text" name="state" value="${supplier.state}">
		<input type="text" name="province" value="${supplier.province}">
</form>
<script type="text/javascript">
	function deleteSupplier(supplierId){
		if(confirm("确定删除吗?")){	
			window.location.href='${ctx}/supplier/deleteSupplier.do?supplierId='+supplierId;
		}
	}
	
</script>
</body>
</html>