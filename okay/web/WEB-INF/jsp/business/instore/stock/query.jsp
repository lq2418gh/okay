<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>查询物料库存</title>
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
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">物资库存管理>>库存统计>>查询</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
              <form:form name="stock" commandName="stock" id="stock" action="${ctx}/stock/query.do" method="post" >
                <table id="queryTable" class="table table-condensed ">
                	<tr>
						<th>入库单号</th>
						<td><form:input path="storage_no" id="storage_no" maxlength="32" cssClass="form-control input-sm"/></td>
						<th>入库日期</th>
						<td>
							<div class="input-group">
								<form:input type="text" id="entry_date_begin" path="entry_date_begin" cssClass="form-control input-sm form_datetime" readonly="true"/>
								<span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
										<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
							</div>
							<div class="input-group">
								<form:input type="text" id="entry_date_end" path="entry_date_end" cssClass="form-control input-sm form_datetime" readonly="true"/>
								<span class="input-group-btn">
									<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
										<span class="glyphicon glyphicon-remove"></span>
									</button>
								</span>
							</div>
						</td>
						<th>仓库名称</th>
						<td><form:input path="warehouse_name" id="warehouse_name" maxlength="32" cssClass="form-control input-sm"/></td>
					</tr>
					<tr>
						<th>采购单编号</th>
						<td><form:input path="order_no" id="order_no" maxlength="32" cssClass="form-control input-sm"/></td>
						<th>物资名称</th>
						<td><form:input path="name" id="name" maxlength="32" cssClass="form-control input-sm"/></td>
						<th>购置经办人</th>
						<td><form:input path="user_name" id="user_name" maxlength="32" cssClass="form-control input-sm"/></td>
					</tr>
					<tr>
						<th>供应商</th>
						<td><form:input path="supplier_name" id="supplier_name" maxlength="32" cssClass="form-control input-sm"/></td>
						<th>合同编号</th>
						<td><form:input path="contract_no" id="contract_no" maxlength="32" cssClass="form-control input-sm"/></td>
						<th>协议编号</th>
						<td><form:input path="frame_no" id="frame_no" maxlength="32" cssClass="form-control input-sm"/></td>
					</tr>
					<tr>
						<td colspan="6" id="tools">
							<input type="submit" value="查询" class="btn btn-primary btn-xs" />
							<button type="button" value="重置" onclick="resetControl('stock')" class="btn btn-primary btn-xs">重置 </button>
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
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" >
            		<span class="icon"><span class="glyphicon glyphicon-file" ></span></span>
				</a> 
<!--             	<input type="button" value="导出" onclick="exportStock()" class="btn btn-primary btn-xs" /> -->
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body">
                <table class="table table-striped table-condensed table-hover" >
                  <tr>
                  	<th>入库单号</th>
                  	<th>仓库名称</th>
                  	<th>入库时间</th>
                  	<th>购置经办人</th>
                  	<th>供应商</th>
                  	<th>采购单编号</th>
                  	<th>合同/协议</th>
                  	<th>物资名称</th>
                  	<th>规格型号</th>
                  	<th>包装</th>
                  	<th>箱容</th>
                  	<th>单位1</th>
                  	<th>单价1</th>
                  	<th>数量1</th>
                  	<th>单位2</th>
                  	<th>单价2</th>
                  	<th>数量2</th>
                  	<th>库存</th>
                  	<th>备注</th>
                  </tr>
					<c:forEach items="${list}" var="s">
						<tr>
							<td name="storage_no2">${s.storage_no}</td>
							<td>${s.warehouse_name}</td>
							<td><fmt:formatDate value="${s.entry_date }" pattern="yyyy-MM-dd" /></td>
							<td>${s.user_name}</td>
							<td>${s.supplier_name}</td>
							<td>${s.order_no}</td>
							<td>
								<c:if test="${empty s.contract_no }">
									${s.frame_no}
								</c:if>
								<c:if test="${empty s.frame_no }">
									${s.contract_no}
								</c:if>
							</td>
							<td>${s.name}</td>
							<td>${s.spec}</td>
							<td>${s.packing}</td>
							<td>${s.conversion}</td>
						<!-- 显示最小计量单位  显示库存的-->
			    			<td width="10%">${s.unit }</td>
			    			<td width="10%">${s.main_price }</td>
			    			<td width="10%" name="quantity">${s.main_quantity }</td>
			    			<td width="10%">${s.unit_help }</td>
			    			<td width="10%">${s.secondary_price }</td>
			    			<td width="10%" name="quantity">${s.secondary_quantity }</td>
			    			<td width="10%">${s.stockNum }</td>
			    			<td width="16%">${s.remark }</td>
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
		<input type="text" name="storage_no" value="${stock.storage_no}">
		<input type="text" name="warehouse_name" value="${stock.warehouse_name}">
		<input type="text" name="order_no" value="${stock.order_no}">
		<input type="text" name="name" value="${stock.name}">
		<input type="text" name="user_name" value="${stock.user_name}">
		<input type="text" name="supplier_name" value="${stock.supplier_name}">
		<input type="text" name="contract_no" value="${stock.contract_no}">
		<input type="text" name="frame_no" value="${stock.frame_no}">
		<input type="text" name="entry_date_begin" value="${stock.entry_date_begin }">
		<input type="text" name="entry_date_end" value="${stock.entry_date_end }">
</form>
</body>
</html>