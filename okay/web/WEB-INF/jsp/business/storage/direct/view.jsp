<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<title>直达现场</title>
</head>
<body>
	<div id="context">
		<div class="container">
			<form:form id="formValidate" name="direct" action="" commandName="direct">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">物资库存管理>>直达现场>>查看</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th>直达现场单编号</th>
												<td>${direct.direct_no }</td>
												<th>入库时间</th>
												<td><fmt:formatDate value="${direct.entry_date }" pattern="yyyy-MM-dd" /></td>
												<th>状态</th>
												<td>${direct.state }</td>
											</tr>
											<tr>
												<th>采购单编号</th>
												<td>${direct.order_no }</td>
												<th>领用部门</th>
												<td>${direct.department_name }</td>
												<th>购置经办人</th>
												<td >${direct.user_name }</td>
											</tr>
											<tr>
												<th>合同/协议 </th>
												<td>
												<c:if test="${empty direct.contract_no }">${direct.frame_no }</c:if>
												<c:if test="${empty direct.frame_no }">${direct.contract_no }</c:if>
												</td>
												<th>供应商名称 </th>
												<td >${direct.supplier_name }</td>
												<th>总金额</th>
												<td >${direct.main_totalAmount }</td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<c:if test="${direct.state eq '新建' || direct.state eq '审批退回'}">
														<security:authorize ifAnyGranted="ROLE_DIRECT_ADD">
														<a class="btn btn-primary btn-xs" href='${ctx}/direct/editAndEcho.do?id=${direct.id}'>编辑</a>
														</security:authorize>
														<security:authorize ifAnyGranted="ROLE_DIRECT_SUBMIT">
															<input type="button" value="提交 " onClick="Submit()" class="btn btn-primary btn-xs" />
														</security:authorize>
													</c:if>
													<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=direct&fk_id=${direct.id }&importNo=${direct.direct_no }" >文件管理</a>
													<security:authorize ifAnyGranted="ROLE_DIRECT_APPROVAL">
													<c:if test="${'待审批' eq direct.state}">
														<input type="button" value="审批通过 " onClick="approvalOk()" class="btn btn-primary btn-xs" />
														<input type="button" value="审批退回" onClick="approvalNo()" class="btn btn-primary btn-xs" />
													</c:if>
													</security:authorize>
													<a class="btn btn-primary btn-xs" href="${ctx}/direct/query.do">返回</a>
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
						  <div id="collapseTwo" class="panel-collapse collapse in">
						    <div class="panel-body" style="max-height: 380px;">
						      <table class="table table-striped table-condensed table-hover" id="mxtable">
						        <tr>
					    			<th>序号</th>
					    			<th>存货名称</th>
					    			<th>规格型号</th>
					    			<th>包装</th>
					    			<th>箱容</th>
					    			<th>单位</th>
					    			<th>单价</th>
					    			<th>数量</th>
					    			<th>已入库数量</th>
					    			<th>未入库数量</th>
					    			<th>备注</th>
					    		</tr>
					    		<c:forEach items="${direct.directDetailList }" var="c">
					    		<tr class="trs">
					    			<td width="4%" name="nos">${c.direct_row_no }</td>
					    			<td width="10%" name="names">${c.name }</td>
					    			<td width="10%">${c.spec }</td>
					    			<td width="10%">${c.packing }</td>
					    			<td width="10%">${c.conversion }</td>
					    			<!-- 显示最小计量单位  如果没有辅助计量单位显示主单位 主单位价格 主单位数量 主单位入库数量和剩余数量-->
					    			<c:if test="${empty c.unit_help}">
					    			<td width="10%">${c.unit }</td>
					    			<td width="10%">${c.main_price }</td>
					    			<td width="10%" name="quantity">${c.main_quantity }</td>
					    			<td width="10%">${c.main_in_storage }</td>
					    			<td width="10%" name="residue">${c.main_residue }</td>
					    			</c:if>
					    			<c:if test="${not empty c.unit_help}">
					    			<td width="10%">${c.unit_help }</td>
					    			<td width="10%">${c.secondary_price }</td>
					    			<td width="10%" name="quantity">${c.secondary_quantity }</td>
					    			<td width="10%">${c.in_storage }</td>
					    			<td width="10%" name="residue">${c.residue }</td>
					    			</c:if>
					    			<!-------------------------------------------------------------------------------------------->
					    			<td width="16%">${c.remark }</td>
					    		</tr>
					    		</c:forEach>
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
function Submit() {
	 $(".trs").each(function(i){
		var a = $(this).find("td[name='quantity']").text();
		var b = $(this).find("td[name='residue']").text();
		var c = $(this).find("td[name='names']").text();
		var d = $(this).find("td[name='nos']").text();
		if(a-b>0){
			alert("第"+d+"行的【"+c+"】已达订单最大可入库数量");
			return false;
		}
	})	 	
	location.href='${ctx}/direct/submit.do?id=${direct.id}'
}
function approvalOk() {
	location.href='${ctx}/direct/approvalOk.do?id=${direct.id}'
}
function approvalNo() {
	location.href='${ctx}/direct/approvalNo.do?id=${direct.id}'
}
</script>
</html>