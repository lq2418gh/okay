<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询预算科目信息</title>
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
              	style="display: block;"><span class="label label-primary">基础信息管理>>预算科目管理>>查询</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="budgetAccount" commandName="budgetAccount" name="budgetAccount" action="${ctx}/budgetAccount/query.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>预算科目</th>
	                    <td><form:input path="name" cssClass="form-control input-sm"/></td>
	                    <th>状态</th>
	                    <td>
	                       <html:select id="isValidate" name="isValidate"  classes="form-control input-sm">     
							 <html:sysOptions condition="state" checkValue="${budgetAccount.isValidate}" ></html:sysOptions>      
						   </html:select>
	                    </td>
	                  </tr>
	                  <tr>
	                    <td colspan="4" id="tools" style="padding-right:50px;">
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
				<security:authorize ifAllGranted="ROLE_BUDGETACCOUNT_ADD">
					<button class="btn btn-primary btn-xs"  onclick="modal(900,300,'${ctx}/budgetAccount/edit.do');">新建预算科目</button>
				</security:authorize>
				<security:authorize ifAllGranted="ROLE_BUDGETACCOUNT_IMP">
				<button class="btn btn-primary btn-xs"  onclick="modal(900,300,'${ctx}/budgetAccount/editImp.do');">预算科目导入</button>
				</security:authorize>
				<button class="btn btn-primary btn-xs"  onclick="download()">导入模板下载</button> 
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th width="17%">预算科目编号</th>
                    <th width="17%">预算科目</th>
                    <th width="17%">预算说明</th>
                    <th width="17%">预警比例</th>
                    <th width="17%">状态</th>
                    <th width="15%">操作</th>
                  </tr>
                  <c:forEach items="${budgetAccount.budgetAccountList}" var="budgetAccount">
                  <tr>
                    <td>${budgetAccount.budgetAccountCode }</td>
                    <td>${budgetAccount.name }</td>
                    <td>${budgetAccount.explain }</td>
                    <td>${budgetAccount.warningRatio }</td>
                    <td>${budgetAccount.isValidate }</td>
                    <td>
                    <security:authorize ifAllGranted="ROLE_BUDGETACCOUNT_MOD">
                    	<button class="btn btn-primary btn-xs"  onclick="modal(900,300,'${ctx}/budgetAccount/edit.do?budgetAccountId=${budgetAccount.budgetAccountId }');"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                    </security:authorize>
                    <security:authorize ifAllGranted="ROLE_BUDGETACCOUNT_DEL">
                    	<button class="btn btn-primary btn-xs" onclick="deleteBudgetAccount('${budgetAccount.budgetAccountId }');"><span class="glyphicon glyphicon-trash"></span> 删除</button>
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
        	<input type="hidden" name="name" id= "name" value="${budgetAccount.name }">
        	<input type="hidden" name="isValidate" id= "isValidate" value="${budgetAccount.isValidate }">
        </form>
      </div>
    </div>
  </div>
</div>
  <script type="text/javascript">
    function resetControl(){
  	  $("#name").val("");
  	  $("#isValidate").val("");
    }

	function deleteBudgetAccount(budgetAccountId){
		if(confirm("确定删除吗?")){	
			window.location.href='${ctx}/budgetAccount/delete.do?budgetAccountId='+budgetAccountId;
		}
	}
	function download(){
		location.href="${ctx}/budgetAccount/download.do";
	}
 </script>
</body>
</html>
