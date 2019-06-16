<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询采购合同信息</title>
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
              	style="display: block;"><span class="label label-primary">协议/合同管理>>合同管理>>查询</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="purchaseContractHead" commandName="purchaseContractHead" name="purchaseContractHead" action="${ctx}/purchaseContract/query.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>合同编号</th>
	                    <td><form:input path="contractNo" cssClass="form-control input-sm"/></td>
	                    <th>供应商</th>
	                    <td>
	                    <form:input  path="supplierName" name="supplierName" id="supplierName" cssClass="form-control input-sm"/>
	                    </td>
	                    <th>合同状态</th>
	                    <td><form:select path="state" cssClass="form-control input-sm" >
	                    		<form:option value="">全部</form:option>
	                    		<form:option value="新建">新建</form:option>
	                    		<form:option value="待审批">待审批</form:option>
	                    		<form:option value="审批通过">生效</form:option>
	                    		<form:option value="审批退回">审批退回</form:option>
	                    		<form:option value="终止">终止</form:option>
	                    	</form:select>
	                    </td>
	                   </tr>
	                   <tr>
	                    <th>签署日期</th>
	                    <td >
		                    <div class="input-group">
		                        <form:input type="text" path="signStartDate" id="signStartDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button">
									<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
							</div>
							<div class="input-group">	
		                        <form:input  path="signEndDate"  id="signEndDate" cssClass="form-control input-sm form_datetime " readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button">
									<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
		                    </div>
	                    </td>
	                    <th>生效日期</th>
	                  <td >
		                    <div class="input-group">
		                        <form:input type="text" path="effectStartDate" id="effectStartDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
									<span class="glyphicon glyphicon-remove" ></span>
									</button>
								</span>
							</div>
							<div class="input-group">	
		                        <form:input  path="effectEndDate"  id="effectEndDate" cssClass="form-control input-sm form_datetime " readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
									<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
		                    </div>
	                    </td>
	                    <td></td>
	                    <td></td>
	                  </tr>
	                  <tr>
	                    <td colspan="6" id="tools">
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
				<security:authorize ifAllGranted="ROLE_CONTRACT_ADD">
					<a class="btn btn-primary btn-xs"  href='${ctx}/purchaseContract/edit.do'>新建采购合同</a>
				</security:authorize>
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>序号</th>
                    <th>合同编码</th>
                    <th>甲方</th>
                    <th>供应商</th>
                    <th>联系电话</th>
                    <th>签署日期</th>
                    <th>生效日期</th>
                    <th>合同状态</th>
                  </tr>
                  <c:forEach items="${purchaseContractHead.purchaseContractList}" var="purchaseContractHead" varStatus="v">
                  <tr>
                    <td>${v.count}</td>
                    <td><a  href='${ctx}/purchaseContract/view.do?id=${purchaseContractHead.id }'>${purchaseContractHead.contractNo }</a></td>
                    <td>${purchaseContractHead.partyAName}</td>
                    <td>${purchaseContractHead.supplierName }</td>
                    <td>${purchaseContractHead.tel }</td>
                    <td><fmt:formatDate value="${purchaseContractHead.signDate}" pattern="yyyy-MM-dd"/></td>
                    <td><fmt:formatDate value="${purchaseContractHead.effectDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${purchaseContractHead.state }</td>
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
		<input type="text" name="contractNo" value="${purchaseContractHead.contractNo}">
		<input type="text" name="supplierName" value="${purchaseContractHead.supplierName}">
		<input type="text" name="state" value="${purchaseContractHead.state}">
		<input type="text" name="signStartDate" value="${purchaseContractHead.signStartDate}">
		<input type="text" name="signEndDate" value="${purchaseContractHead.signEndDate }">
		<input type="text" name="effectStartDate" value="${purchaseContractHead.effectStartDate }">
		<input type="text" name="effectEndDate" value="${purchaseContractHead.effectEndDate }">
	</form>
  <script type="text/javascript">
    function resetControl(){
  	  $("#contractNo").val("");
  	  $("#supplierName").val("");
 	  $("#state").val("");
 	  $("#signStartDate").val("");
 	  $("#signEndDate").val("");
 	  $("#effectStartDate").val("");
 	  $("#effectEndDate").val("");
    }
 </script>
</body>
</html>
