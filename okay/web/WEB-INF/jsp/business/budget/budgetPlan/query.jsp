<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>查询计划预算信息</title>
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
              	style="display: block;"><span class="label label-primary">物资计划管理>>计划预算>>查询</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="budgetPlan" commandName="budgetPlan" name="budgetPlan" action="${ctx}/budgetPlan/query.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>预算编号</th>
	                    <td><form:input path="budgetNo" cssClass="form-control input-sm"/></td>
	                    <th>年份</th>
	                    <td><input type="text"  name="year" id="year" value="${budgetPlan.year}"  class="form-control input-sm form_datetime_year"  /></td>
	                    </tr>
	                    <tr>
	                    <c:if test="${companyName=='公司'||companyName=='采办部'}">
	                    <th>预算部门</th>
	                    <td>
	                    <html:select id="company" name="company"  classes="form-control input-sm" >     
						<html:businessOptions  function="company" condition="" checkValue="${budgetPlan.company}" ></html:businessOptions>   
						</html:select>
						</td>
	                    </c:if>
	                    <th>状态</th>
	                    <td>
	                       <html:select id="state" name="state"  classes="form-control input-sm">     
							 <html:sysOptions condition="audit_state" checkValue="${budgetPlan.state}" ></html:sysOptions>      
						   </html:select>
	                    </td>
	                  </tr>
	                  <tr>
	                    <td colspan="4" id="tools">
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
				<security:authorize ifAllGranted="ROLE_BUDGETPLAN_ADD">
					<a class="btn btn-primary btn-xs"  href='${ctx}/budgetPlan/edit.do'>新建计划预算</a>
				</security:authorize>
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>预算编号</th>
                    <th>部门</th>
                    <th>年份</th>
                    <th>年度预算金额</th>
                    <th>状态</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${budgetPlan.budgetPlanList}" var="budgetPlan">
                  <tr>
                    <td><a  href='${ctx}/budgetPlan/view.do?id=${budgetPlan.id }'>${budgetPlan.budgetNo }</a></td>
                    <td>${budgetPlan.companyName}</td>
                    <td>${budgetPlan.year }</td>
                    <td>${budgetPlan.annualBudget }</td>
                    <td>${budgetPlan.state }</td>
                    <td>
                   <c:if test="${budgetPlan.state=='新建'}"> 
                    <security:authorize ifAllGranted="ROLE_BUDGETPLAN_DEL">
                    	<button class="btn btn-primary btn-xs" onclick="deleteBudgetPlan('${budgetPlan.id }');"><span class="glyphicon glyphicon-trash"></span>删除</button>
                    </security:authorize>
                    <security:authorize ifAllGranted="ROLE_BUDGETPLAN_VIEW">
                    	<a class="btn btn-primary btn-xs" href='${ctx}/budgetPlan/history.do?id=${budgetPlan.id }'><span class="glyphicon glyphicon-search"></span> 查看历史</a>
                    </security:authorize>
                    </c:if>
                    <c:if test="${budgetPlan.state=='审批通过'}"> 
                    <security:authorize ifAllGranted="ROLE_BUDGETPLAN_VIEW">
                    	<a class="btn btn-primary btn-xs" href='${ctx}/budgetPlan/history.do?id=${budgetPlan.id}'><span class="glyphicon glyphicon-search"></span> 查看历史</a>
                    </security:authorize>
                    </c:if>
                    </td>
                  </tr>
                  </c:forEach>
                </table> 
              
         	<table class="table table-condensed" id="pageTools">
				<tr>
					<td>
						<!------------- 分页开始 ------------>	
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
        	<input type="hidden" name="budgetNo" id= "budgetNo" value="${budgetPlan.budgetNo }">
        	<input type="hidden" name="year" id= "year" value="${budgetPlan.year }">
        	<input type="hidden" name="company" id= "company" value="${budgetPlan.company }">
        	<input type="hidden" name="state" id= "state" value="${budgetPlan.state }">
        </form>
  <script type="text/javascript">
    function resetControl(){
  	  $("#budgetNo").val("");
  	  $("#year").val("");
  	  $("#company").val("");
 	  $("#state").val("");
    }

	function deleteBudgetPlan(id){
		if(confirm("确定删除吗?")){	
			window.location.href='${ctx}/budgetPlan/delete.do?id='+id;
		}
	}
 </script>
</body>
</html>
