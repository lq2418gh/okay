<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询框架协议信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
function getFrame(){
	var checkRadio = $("input[name='radioId']:checked");
	if (checkRadio.length == 0) {
		alert("请选择框架协议信息！");
		return;
	}
	var checkIndex = checkRadio.attr("index");
	var frame = {};
	frame.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
	frame.frameNo = $(".dataTable [ name='frameNo']:eq(" + checkIndex + ")").val();
	frame.supplier = $(".dataTable [name='supplier']:eq(" + checkIndex + ")").val();
	frame.supplierName = $(".dataTable [name='supplierName']:eq(" + checkIndex + ")").val();
	frame.tel=$(".dataTable [name='tel']:eq(" + checkIndex + ")").val();
	frame.linkman=$(".dataTable [name='linkman']:eq(" + checkIndex + ")").val();
	frame.bank_account_number=$(".dataTable [name='bank_account_number']:eq(" + checkIndex + ")").val();

	frame.address=$(".dataTable [name='address']:eq(" + checkIndex + ")").val();
	frame.fax=$(".dataTable [name='fax']:eq(" + checkIndex + ")").val();
	var handleFrame = window.top.mainFrame.handleFrame;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleFrame && typeof(handleFrame) == "function"){
		handleFrame(frame);
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
              	style="display: block;"><span class="label label-primary">协议/合同管理>>协议管理>>查询</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="frameHead" commandName="frameHead" name="frameHead" action="${ctx}/frame/publicQuery.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>协议编号</th>
	                    <td><form:input path="frameNo" cssClass="form-control input-sm"/></td>
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
            	<input type="button" value="确认"  onClick="getFrame()" class="btn btn-primary btn-xs" /> 
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                    <th></th>
                    <th>序号</th>
                    <th>协议编码</th>
                    <th>甲方</th>
                    <th>供应商</th>
                    <th>乙方负责人</th>
                    <th>联系电话</th>
                    <th>签署日期</th>
                    <th>生效日期</th>
                    <th>协议状态</th>
                  </tr>
                  <c:forEach items="${frameHead.frameHeadList}" var="frameHead" varStatus="v">
                  <tr>
                    <td><input type="radio" class="form-control input-sm" name="radioId" value="${frameHead.id}" index="${v.index}"/></td>
                    <td>${v.count}</td>
                    <td>${frameHead.frameNo }</td>
                    <td>${frameHead.partyAName}</td>
                    <td>${frameHead.supplierName }</td>
                    <td>${frameHead.bResponsibleDepartment }</td>
                    <td>${frameHead.tel }</td>
                    <td><fmt:formatDate value="${frameHead.signDate}" pattern="yyyy-MM-dd"/></td>
                    <td><fmt:formatDate value="${frameHead.effectDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${frameHead.state }
                    <input type="hidden"  name="frameNo" value="${frameHead.frameNo }" />
                    <input type="hidden"  name="supplierName" value="${frameHead.supplierName }" />
                    <input type="hidden"  name="supplier" value="${frameHead.supplier }" />
                    <input type="hidden"  name="linkman" value="${frameHead.linkman }" />
                    <input type="hidden"  name="tel" value="${frameHead.tel }" />
                    <input type="hidden"  name="bank_account_number" value="${frameHead.bank_account_number }" />
                    <input type="hidden"  name="fax" value="${frameHead.fax }" />
                    <input type="hidden"  name="address" value="${frameHead.address }" />
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
		<input type="text" name="frameNo" value="${frameHead.frameNo}">
		<input type="text" name="signStartDate" value="${frameHead.signStartDate}">
		<input type="text" name="signEndDate" value="${frameHead.signEndDate}">
		<input type="text" name="supplierName" value="${frameHead.supplierName}">
		<input type="text" name="effectStartDate" value="${frameHead.effectStartDate}">
		<input type="text" name="effectEndDate" value="${frameHead.effectEndDate}">
</form>
  <script type="text/javascript">
    function resetControl(){
  	  $("#frameNo").val("");
  	  $("#supplierName").val("");
 	  $("#signStartDate").val("");
 	  $("#signEndDate").val("");
 	  $("#effectStartDate").val("");
 	  $("#effectEndDate").val("");
    }
 </script>
</body>
</html>
