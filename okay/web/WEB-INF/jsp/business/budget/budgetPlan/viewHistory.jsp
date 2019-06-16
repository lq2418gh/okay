<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计划预算编辑</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
 	<div id="modal-dialog" class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display:none">关闭</button>
      </div>
      <div class="modal-body" id="modal-body">
       <iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->

<div id="context">
  <div class="container">
   <form:form id="formValidate" name="budgetPlan"  action="${ctx}/budgetPlan/save.do"  commandName="budgetPlan">
    <div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
         
            <div class="panel-heading">
              <h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">物资计划管理>>计划预算>>查看历史明细</span></a></h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
            
                     <div class="panel-body">
              		
                <table id="queryTable" class="table table-condensed">
                  <tr>
                    <th>预算编码</th>
                    <td>
                    <input type="hidden" name="id" id="id" value="${budgetPlan.id}"/>
                   ${budgetPlan.budgetNo}
                    </td>
                   <th>预算部门</th>
                    <td>
                    ${companyName}
                    <input type="hidden" name="company" id="company" value="${budgetPlan.company}"/>
                    </td>
                   <th>年份</th>
                    <td>${budgetPlan.year}</td>
                  </tr>
				  <tr>
					<td colspan="6" id="tools">
					<a class="btn btn-primary btn-xs" href="${ctx }/budgetPlan/queryHistory.do">返回</a>
					</td>
				 </tr>
                </table>
              </div>
</div>
</div>
</div>
</div>
<div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2">
          <div class="panel panel-default">
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > 
            		<span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
            		<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
            		</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:600px" > 
               <table id="actable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th>序号</th>
                    <th>预算科目</th>
                    <th>预算金额</th>
                    <th>预算剩余金额</th>
                    <th style="width:20%">备注</th>
                    <th>预警比例%</th>
                  </tr>
					<c:if test="${not empty budgetPlan.id }">
					<c:forEach items="${budgetPlan.planDetailList}" var="list" varStatus="v">
					<tr>
					<c:if test="${list.status=='没超过预警比例' }">
					<td>${v.count}</td>
					<td >${list.accountName}</td>
					<td >${list.budgetAmount }</td>
					<td >${list.residualAmount }</td>
					<td style="width:20%">${list.remark }</td>
					<td >${list.warningRatio }</td>
					</c:if>
					<c:if test="${list.status=='超过预警比例' }">
					<td style="background-color:red">${v.count}</td>
					<td style="background-color:red">${list.accountName}</td>
					<td style="background-color:red">${list.budgetAmount }</td>
					<td style="background-color:red">${list.residualAmount }</td>
					<td style="background-color:red">${list.remark }</td>
					<td style="background-color:red">${list.warningRatio }</td>
					</c:if>
					</tr>
					</c:forEach>
					</c:if>
                <tr>
                    <td></td>
					<td style="text-align: right">合计：</td>
					<td >${budgetPlan.annualBudget}</td>
					<td >${residualBudget }</td>
					<td></td>
					<td></td>
				</tr>
               </table>
              </div> 
            </div>
          </div>
        </div>
      </div>
</div>
</form:form>
</div>
</div>

</body>
<script type="text/javascript">
</script>
</html>