<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<title>物资采购计划表</title>
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
											<span class="label label-primary">物资库存管理>>物资入库>>查看</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th>入库单编号</th>
												<td>${storageHead.storage_no }</td>
												<th>仓库编号</th>
												<td>${storageHead.warehouse_name }</td>
												<th>入库时间</th>
												<td><fmt:formatDate value="${storageHead.entry_date }" pattern="yyyy-MM-dd" /></td>
												<th>状态</th>
												<td>${storageHead.state }</td>
											</tr>
											<tr>
												<th>采购单编号</th>
												<td>${storageHead.order_no }</td>
												<th>合同/协议 </th>
												<td>
													<c:if test="${empty storageHead.frame_no}">
													${storageHead.contract_no }
													</c:if>
													<c:if test="${empty storageHead.contract_no }">
													${storageHead.frame_no }
													</c:if>
												</td>
												<th>供应商名称 </th>
												<td>${storageHead.supplier_name }</td>
												<th>购置经办人</th>
												<td colspan="2">${storageHead.user_name }</td>
											</tr>
											<tr>
												<th>总金额</th>
												<td>${storageHead.main_totalAmount }</td>
												<th>入库接收</th>
												<td></td>
												<th>归口管理部门责任人</th>
												<td></td>
												<td colspan="2"></td>
											</tr>
											<tr>
												<td colspan="8" id="tools">
													<c:if test="${storageHead.state eq '新建' }">
													<a class="btn btn-primary btn-xs" href='${ctx}/storage/editAndEcho.do?id=${storageHead.id}'>编辑</a>
													<input type="button" value="提交 " onClick="Submit()" class="btn btn-primary btn-xs" />
													</c:if>
													<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=storage&fk_id=${storageHead.id }&importNo=${storageHead.storage_no }" >文件管理</a>
													<c:if test="${storageHead.state eq '审批通过' }">
													<a class="btn btn-primary btn-xs" href='${ctx}/storage/excel.do?id=${storageHead.id}'>入库订单导出</a>
													</c:if>
													<a class="btn btn-primary btn-xs" href="${ctx}/storage/query.do">返回</a>
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
					    			<th>备注</th>
					    		</tr>
					    		<c:forEach items="${storageHead.storageDetailList }" var="c">
					    		<tr class="trs">
					    			<td width="4%">${c.no }</td>
					    			<td width="10%">${c.name }</td>
					    			<td width="10%">${c.spec }</td>
					    			<td width="10%">${c.packing }</td>
					    			<td width="10%">${c.conversion }</td>
					    			<!-- 显示最小计量单位  如果没有辅助计量单位显示主单位 主单位价格 主单位数量 主单位入库数量和剩余数量-->
					    			<c:if test="${empty c.unit_help}">
					    			<td width="13%">${c.unit }</td>
					    			<td width="13%">${c.main_price }</td>
					    			<td width="13%">${c.main_quantity }</td>
					    			</c:if>
					    			<c:if test="${not empty c.unit_help}">
					    			<td width="13%">${c.unit_help }</td>
					    			<td width="13%">${c.secondary_price }</td>
					    			<td width="13%">${c.secondary_quantity }</td>
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
	location.href='${ctx}/storage/submit.do?id=${storageHead.id}'
}
</script>
</html>