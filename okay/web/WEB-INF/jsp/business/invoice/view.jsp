<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>发票编辑</title>
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
	<form:form id="formValidate" name="invoice"  action="${ctx}/invoice/save.do" commandName="invoice">
	<div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
			<div class="panel panel-primary">
	            <div class="panel-heading">
					<h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
					<span class="label label-primary">付款管理>>发票登记>>查看</span></a></h4>
	            </div>
	            <div id="collapseOne" class="panel-collapse collapse in" >
					<div class="panel-body">
	                	<table id="queryTable" class="table table-condensed">
							<tr>
			                    <th>发票编号</th>
			                    <td>
				                    <input type="hidden" name="id" id="id" value="${invoice.id}"/>
				                    ${invoice.invoiceNo}
			                    </td>
			                    <th>开票日期</th>
			                    <td><fmt:formatDate value="${invoice.billingDate }" pattern="yyyy-MM-dd" /></td>
			                    <th>销售方名称</th>
				                <td>
									<input type="hidden" name="supplier" id="supplier" value="${invoice.supplier}"/>
									${invoice.supplier_name}
								</td>
							</tr>
						  	<tr>
			                    <th>销售方开户银行</th>
			                    <td>${invoice.opening_bank}
			                    </td>
			                    <th>销售方银行账号</th>
			                    <td>${invoice.bank_account_number}</td>
			                    <th>销售方联系电话</th>
			                    <td>${invoice.tel}</td>
		                  	</tr>
		                  	<tr>
			                    <th>销售方地址</th>
			                    <td>${invoice.address}</td>
			                    <td></td><td></td><td></td><td></td>
		                  	</tr>
						  	<tr>
								<td colspan="6" id="tools">
								<security:authorize ifAllGranted="ROLE_INVOICE_EDIT">
								<a class="btn btn-primary btn-xs"  href='${ctx}/invoice/edit.do?id=${invoice.id }'><span class="glyphicon glyphicon-pencil"></span>编辑</a>
								</security:authorize>
										<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_invoice&fk_id=${invoice.id }&importNo=${invoice.invoiceNo }" >文件管理</a>
										<a class="btn btn-primary btn-xs" href="${ctx }/invoice/query.do">返回</a>
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
                    <th>货物名称</th>
                    <th>规格型号</th>
                    <th>单位</th>
                    <th>数量</th>
                    <th>单价</th>
                    <th>金额</th>
                  </tr>
                  <tbody id="acTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids" /></td>
						<td style="width:20%">
							<div class="input-group" style="width:100%">
								<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
								<span class="input-group-btn">
								<input type="hidden" name="id1" id="id1"/>
								<input type="hidden" name="material" id="material"/>
									<button type="button"   class="btn btn-primary btn-sm" onClick="checkAcorder2(this);">查询</button>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
							</div>
						</td>
						<td><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm" maxlength="10" readonly="readonly"/></td>
						<td><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm "   readonly="readonly"/></td>
						<td ><input type="text" name="amount" id="amount" style="width:100%" class="form-control input-sm" maxlength="10" onChange="return changeAmount(this)"/></td>
						<td ><input type="text" name="price" id="price" style="width:100%"  class="form-control input-sm " maxlength="10" readonly="readonly"/></td>
						<td ><input type="text" name="sum" id="sum" style="width:100%" class="form-control input-sm" maxlength="20" onChange="return changeSum(this)"/></td>
					</tr>
					<c:if test="${not empty invoice.id }">
						<c:forEach items="${invoice.invoiceDetailList}" var="list" varStatus="v">
						<tr>
								<td>${v.count}</td>
								<td style="width:20%">
									<div class="input-group" style="width:100%">
										${list.name}
										<input type="hidden" name="id2" id="id2" value="${list.id}" />
										<input type="hidden" name="material" id="material" value="${list.material }" />
									</div>
								</td>
							    <td>${list.spec}</td>
								<td>${list.unit}</td>
								<td>${list.amount }</td>
								<td>${list.price }</td>
								<td>${list.sum }</td>
						</tr>
						</c:forEach>
					</c:if>
				</tbody>	
                <tfoot>
	                <tr>
	                    <td></td>
						<td>合计</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>${invoice.total }</td>
					</tr>
				</tfoot>
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

</html>