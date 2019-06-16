<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询合同信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
function getContract(){
	var checkRadio = $("input[name='radioId']:checked");
	if (checkRadio.length == 0) {
		alert("请选择合同信息！");
		return;
	}
	var checkIndex = checkRadio.attr("index");
	console.log(checkIndex)
	var contract = {};
	contract.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
	contract.contractNo = $(".dataTable [ name='contractNo']:eq(" + checkIndex + ")").val();
	contract.supplier = $(".dataTable [name='supplier']:eq(" + checkIndex + ")").val();
	contract.supplierName = $(".dataTable [name='supplierName']:eq(" + checkIndex + ")").val();
	contract.tel=$(".dataTable [name='tel']:eq(" + checkIndex + ")").val();
	contract.linkman=$(".dataTable [name='linkman']:eq(" + checkIndex + ")").val();
	contract.bank_account_number=$(".dataTable [name='bank_account_number']:eq(" + checkIndex + ")").val();
	contract.address=$(".dataTable [name='address']:eq(" + checkIndex + ")").val();
	contract.fax=$(".dataTable [name='fax']:eq(" + checkIndex + ")").val();
	console.log(contract)
	var handleContract = window.top.mainFrame.handleContract;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleContract && typeof(handleContract) == "function"){
		handleContract(contract);
	}
	modalClose();
}
</script>
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
                <form:form id="purchaseContractHead" commandName="purchaseContractHead" name="purchaseContractHead" action="${ctx}/purchaseContract/publicQuery.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>合同编号</th>
	                    <td><form:input path="contractNo" cssClass="form-control input-sm"/></td>
	                    <th>签署日期</th>
	                    <td >
		                    <div class="input-group">
		                        <form:input type="text" path="signStartDate" id="signStartDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
									<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
							</div>
							<div class="input-group">	
		                        <form:input  path="signEndDate"  id="signEndDate" cssClass="form-control input-sm form_datetime " readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
									<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
		                    </div>
	                    </td>
	                   </tr>
	                   <tr>
	                   <th>供应商</th>
	                    <td><form:input  path="supplierName" name="supplierName" id="supplierName" cssClass="form-control input-sm"/></td>
	                    
	                    <th>生效日期</th>
	                  <td >
		                    <div class="input-group">
		                        <form:input type="text" path="effectStartDate" id="effectStartDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
		                        <span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
									<span class="glyphicon glyphicon-remove"></span>
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
	                  </tr>
	                  <tr>
	                    <td colspan="4" id="tools">
	                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
	                      	<input type="button" value="重置"  onclick="resetControl()" class="btn btn-primary btn-xs" />
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
				<input type="button" value="确认"  onClick="getContract()" class="btn btn-primary btn-xs" /> 
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                  	<th></th>
                    <th>序号</th>
                    <th>合同编码</th>
                    <th>甲方</th>
                    <th>供应商</th>
                    <th>乙方负责人</th>
                    <th>联系电话</th>
                    <th>签署日期</th>
                    <th>生效日期</th>
                    <th>合同状态</th>
                  </tr>
                  <c:forEach items="${purchaseContractHead.purchaseContractList}" var="purchaseContractHead" varStatus="v">
                  <tr>
                  	<td><input type="radio" class="form-control input-sm" name="radioId" value="${purchaseContractHead.id}" index="${v.index}"/></td>
                    <td>${v.count}</td>
                    <td>${purchaseContractHead.contractNo }</td>
                    <td>${purchaseContractHead.partyAName}</td>
                    <td>${purchaseContractHead.supplierName }</td>
                    <td>${purchaseContractHead.bResponsibleDepartment }</td>
                    <td>${purchaseContractHead.tel }</td>
                    <td><fmt:formatDate value="${purchaseContractHead.signDate}" pattern="yyyy-MM-dd"/></td>
                    <td><fmt:formatDate value="${purchaseContractHead.effectDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${purchaseContractHead.state }
                    <input type="hidden"  name="contractNo" value="${purchaseContractHead.contractNo }" />
                    <input type="hidden"  name="supplierName" value="${purchaseContractHead.supplierName }" />
                    <input type="hidden"  name="tel" value="${purchaseContractHead.tel }" />
                    <input type="hidden"  name="supplier" value="${purchaseContractHead.supplier }" />
                    <input type="hidden"  name="linkman" value="${purchaseContractHead.linkman }" />
                    <input type="hidden"  name="bank_account_number" value="${purchaseContractHead.bank_account_number }" />
                    <input type="hidden"  name="address" value="${purchaseContractHead.address }" />
                    <input type="hidden"  name="fax" value="${purchaseContractHead.fax }" />
                    
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
