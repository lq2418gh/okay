<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<title>存货出库</title>
</head>
<body>
	<div id="context">
		<div class="container">
			<form:form id="formValidate" name="storageHead" action="" commandName="storageHead">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">物资库存管理>>物资出库>>查看</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th>出库单编号</th>
												<td>${outstockHead.outstock_no }</td>
												<th>仓库名称</th>
												<td>${outstockHead.warehouse_name }</td>
												<th>出库时间</th>
												<td><fmt:formatDate value="${outstockHead.out_date }" pattern="yyyy-MM-dd" /></td>
											</tr>
											<tr>
												<th>采购单编号</th>
												<td>${outstockHead.order_no }</td>
												<th>库管员</th>
												<td>${outstockHead.user_name }</td>
												<th>状态</th>
												<td>${outstockHead.state }</td>
											</tr>
											<tr>
												<th>领用部门</th>
												<td>${outstockHead.department_name }</td>
												<th>领用人</th>
												<td></td>
												<th>归口管理部门责任人</th>
												<td></td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<c:if test="${outstockHead.state eq '新建' }">
													<a class="btn btn-primary btn-xs" href='${ctx}/outstock/editAndEcho.do?id=${outstockHead.id}'>编辑</a>
													<input type="button" value="提交 " onClick="Submit()" class="btn btn-primary btn-xs" />
													</c:if>
													<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=outstock&fk_id=${outstockHead.id }&importNo=${outstockHead.outstock_no }" >文件管理</a>
													<c:if test="${outstockHead.state eq '审批通过' }">
													<a class="btn btn-primary btn-xs" href='${ctx}/outstock/excel.do?id=${outstockHead.id}'>出库订单导出</a>
													</c:if>
													<a class="btn btn-primary btn-xs" href="${ctx}/outstock/query.do">返回</a>
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
					    			<th>数量</th>
					    			<th>备注</th>
					    		</tr>
					    		<c:forEach items="${outstockHead.outstockDetailList }" var="c">
					    		<tr class="trs">
					    			<td width="4%">${c.outstock_row_no }</td>
					    			<td width="10%">${c.name }</td>
					    			<td width="10%">${c.spec }</td>
					    			<td width="10%">${c.packing }</td>
					    			<td width="10%">${c.conversion }</td>
					    			<!-- 显示最小计量单位  如果没有辅助计量单位显示主单位 主单位价格 主单位数量 主单位出库数量和剩余数量-->
					    			<c:if test="${empty c.unit_help}">
					    			<td width="10%">${c.unit }</td>
					    			<td width="10%">${c.main_quantity }</td>
					    			</c:if>
					    			<c:if test="${not empty c.unit_help}">
					    			<td width="10%">${c.unit_help }</td>
					    			<td width="10%">${c.secondary_quantity }</td>
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
	location.href='${ctx}/outstock/submit.do?id=${outstockHead.id}';
}
</script>
</html>