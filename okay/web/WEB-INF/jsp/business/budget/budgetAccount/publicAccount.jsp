<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询物料信息</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script type="text/javascript">
    function resetControl(){
    	$("#name").val("");
    }
	function getBudgetAccountId(){
		var checkRadio = $("input[name='radioId']:checked");
		if (checkRadio.length == 0) {
			alert("请选择预算科目信息！");
			return;
		}
		var checkIndex = checkRadio.attr("index");
		var budgetAccount = {};
		budgetAccount.id = $(".dataTable [name='radioId']:eq(" + checkIndex + ")").val();
		budgetAccount.code = $(".dataTable [code='code']:eq(" + checkIndex + ")").val();
		budgetAccount.name = $(".dataTable [name='name']:eq(" + checkIndex + ")").val();
		budgetAccount.warningRatio = $(".dataTable [name='warningRatio']:eq(" + checkIndex + ")").val();
		budgetAccount.explain = $(".dataTable [name='explain']:eq(" + checkIndex + ")").val();
		
		var handleBudgetAccount = window.top.mainFrame.handleBudgetAccount;// handleMaterial方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
		if(handleBudgetAccount && typeof(handleBudgetAccount) == "function"){
			handleBudgetAccount(budgetAccount);
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
              <span class="label label-primary">查询预算科目</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="budgetAccount" commandName="budgetAccount" name="budgetAccount" action="${ctx}/budgetAccount/publicAccountQuery.do" method="post">
                <table id="queryTable" class="table table-condensed ">
                  <tr>
                    <th>预算科目</th>
                    <td><form:input path="name" cssClass="form-control input-sm"/></td>
                  </tr>
                  <tr>
                    <td colspan="4" id="tools">
                      <input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                      <input type="button" value="重置" onclick="resetControl()" class="btn btn-primary btn-xs" />
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
      <div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
            	<input type="button" value="确认"  onClick="getBudgetAccountId()" class="btn btn-primary btn-xs" />
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="height:280px;">
                <table class="table table-striped table-condensed table-hover dataTable">
                  <tr>
                  	<th></th>
                    <th>预算科目编号</th>
                    <th>预算科目</th>
                    <th>预警比例%</th>
                    <th>预算说明</th>
                  </tr>
                  <c:forEach items="${budgetAccount.budgetAccountList}" var="c" varStatus="status">
                  <tr>
                  	<td><input type="radio" class="form-control input-sm" name="radioId" value="${c.budgetAccountId}" index="${status.index}"/></td>
                  	<td><input type="text" class="form-control input-sm" name="code" value="${c.budgetAccountCode }" readonly /></td>
                  	<td><input type="text" class="form-control input-sm" name="name" value="${c.name }" readonly /></td>
                  	<td><input type="text" class="form-control input-sm" name="warningRatio" value="${c.warningRatio }" readonly /></td>
                  	<td><input type="text" class="form-control input-sm" name="explain" value="${c.explain }" readonly /></td>
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
        	<input type="hidden" name="name" id= "name" value="${budgetAccount.name }">
        </form>
</body>
<script type="text/javascript">
	//radio样式生成时缺少属性，导致定位有问题，直接赋样式，执行又因为当时iradio_square-blue元素未生成无效，故设置延迟调用
	function changeRadio(){
		$(".iradio_square-blue").css({"position":"relative"});
	}
	$(document).ready(function(){
		setTimeout("changeRadio()",500);
	});
		
</script>
</html>