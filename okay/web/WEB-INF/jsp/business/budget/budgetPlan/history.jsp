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
              	style="display: block;"><span class="label label-primary">物资计划管理>>计划预算>>查看历史</span></a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="budgetPlan" commandName="budgetPlan" name="budgetPlan" action="${ctx}/budgetPlan/queryHistory.do" method="post">
	                <table id="queryTable" class="table table-condensed ">
	                  <tr>
	                    <th>预算编号</th>
	                    <td><form:input path="budgetNo" cssClass="form-control input-sm"/></td>
	                    <th>年份</th>
	                    <td><form:input path="year" value="${budgetPlan.year}" cssClass="form-control input-sm"/></td>
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
	                    <c:if test="${companyName!='公司'&&companyName!='采办部'}">
	                    <th>预算部门</th>
	                    <td><form:input path="company" value="${companyName}" cssClass="form-control input-sm" readonly="readonly"/></td>
	                    </c:if>
	                    <th>修改时间</th>
	                    <td colspan="4">
	                    <div class="input-group">
	                        <form:input type="text" path="modifyStartDate" id="modifyStartDate" cssClass="form-control input-sm form_datetime" readonly="true"/>
	                        <span class="input-group-btn">
							<button class="btn btn-primary btn-sm" type="button">
							<span class="glyphicon glyphicon-remove"></span>
							</button>—
							</span>
						</div>
						<div class="input-group">	
	                        <form:input  path="modifyEndDate"  id="modifyEndDate" cssClass="form-control input-sm form_datetime " readonly="true"/>
	                        <span class="input-group-btn">
							<button class="btn btn-primary btn-sm" type="button">
							<span class="glyphicon glyphicon-remove"></span>
							</button>
							</span>
	                    </div>
	                    </td>
	                  </tr>
	                  <tr>
	                    <td colspan="6" id="tools">
	                    	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
	                      	<input type="button" value="重置"  onclick="resetControl()" class="btn btn-primary btn-xs" />
	                      	<a class="btn btn-primary btn-xs" href="${ctx }/budgetPlan/query.do">返回</a>
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
			</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" >
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>预算编号</th>
                    <th>部门</th>
                    <th>年份</th>
                    <th>年度预算金额</th>
                    <th>修改时间</th>
                  </tr>
                  <c:forEach items="${budgetPlan.budgetPlanList}" var="budgetPlan">
                  <tr>
                    <td><a  href='${ctx}/budgetPlan/viewHistory.do?id=${budgetPlan.id }'>${budgetPlan.budgetNo }</a></td>
                    <td>${budgetPlan.companyName}</td>
                    <td>${budgetPlan.year }</td>
                    <td>${budgetPlan.annualBudget }</td>
                    <td><fmt:formatDate value="${budgetPlan.modifyDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
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

  <script type="text/javascript">
    function resetControl(){
  	  $("#budgetNo").val("");
 	  $("#modifyStartDate").val("");
 	 $("#modifyEndDate").val("");
    }
    $('.form_datetime').datetimepicker({
        language:  'zh-CN',
		format: "yyyy-mm-dd hh:ii",
		autoclose: 1,
		todayHighlight: 1,
		pickerPosition: "bottom-right"
    });
 </script>
</body>
</html>
