<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<script type="text/javascript">
$(function(){
	$('#quanxuan').on('ifChecked', function(event) {
		$('input[name="ids"]').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event) {
		$('input[name="ids"]').iCheck('uncheck');
	});
});
function getStorage(){
	var count=0;
	var cont=document.getElementsByName('ids');
	for( i=0;i<cont.length;i++){
		if(cont[i].checked){
			count++;
		}
	}
	if(count==0){
		alert("至少选择一条数据");
		return;
	}
	var Storage = new Array();
	$("table input[name=ids]:checked").each(function(i){
		var a={};
		var index=$(this).attr('index');
		a.storage_no = $(".dataTable [name='storage_no']:eq(" + index + ")").val();
		a.storage_id = $(".dataTable [name='storage_id']:eq(" + index + ")").val();
		a.contract_no = $(".dataTable [name='contract_no']:eq(" + index + ")").val();
		a.frame_no = $(".dataTable [name='frame_no']:eq(" + index + ")").val();
		Storage[i]=a;
	})
	var handleStorage = window.top.mainFrame.handleStorage;// handleStorage方法是在需要引用物料的页面进行定义的处理函数，进行实际的dom操作
	if(handleStorage && typeof(handleStorage) == "function"){
		handleStorage(Storage);
	}
	modalClose();
	} 
</script>
</head>
<body>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
										<span class="label label-primary">物资库存管理>>物资入库>>查询</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="storageHead" commandName="storageHead" id="storageHead" action="${ctx}/storage/publicQuery.do?paymentId=${paymentId}">
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
											</tr>
											<tr>
												<td colspan="4" id="tools">
													<input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<button type="button" value="重置" onclick="resetControl('storageHead')" class="btn btn-primary btn-xs">重置 </button>
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
					<div class="panel-group" id="accordion2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> 
									<span class="icon"><span class="glyphicon glyphicon-file"></span></span>
								</a>
								<input type="button" value="确认"  onClick="getStorage()" class="btn btn-primary btn-xs" />
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover dataTable">
										<tr>
											<th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
											<th>序号</th>
											<th>入库单号</th>
											<th>入库日期</th>
											<th>总金额</th>
											<th>状态</th>
										</tr>
										<c:forEach var="t" items="${list }" varStatus="c">
												<input type="hidden"  value="${t.id }" name="storage_id"/>
												<input type="hidden"  value="${t.frame_no }" name="frame_no"/>
												<input type="hidden"  value="${t.contract_no }" name="contract_no"/>
											<tr>
												<td><input type="checkbox" name="ids" index="${c.index}"/>
												<td><input type="text" style="width: 100%" value="${c.count }" name="count" class="form-control input-sm w100" readonly="readonly"  /></td>
												<td><input type="text" style="width: 100%" value="${t.storage_no }" name="storage_no" class="form-control input-sm w100" readonly="readonly"  /></td>
												<td><input type="text" style="width: 100%" value='<fmt:formatDate value="${t.entry_date }" pattern="yyyy-MM-dd" />' name="entry_date" class="form-control input-sm w100" readonly="readonly"  /></td>
												<td><input type="text" style="width: 100%" value="${t.main_totalAmount}" name="main_totalAmount" class="form-control input-sm w100" readonly="readonly"  /></td>
												<td><input type="text" style="width: 100%" value="${t.state}" name="state" class="form-control input-sm w100" readonly="readonly"  /></td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!------------- 分页开始 ------------->
								<table class="table table-condensed" id="pageTools">
									<tr>
										<td>
											<jsp:include page="../../../common/page.jsp">
												<jsp:param name="url" value="${pageUrl}" />
											</jsp:include>
										</td>
									</tr>
								</table>
								<!------------- 分页结束 ------------->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<form id="condition" name="condition" hidden="true" method="post">
		<input type="text" id="storage_no" name="storage_no" value="${storageHead.storage_no}" class="form-control input-sm" /> 
		<input type="text" id="entry_date_begin" name="entry_date_begin" value="${storageHead.entry_date_begin}" class="form-control input-sm" /> 
		<input type="text" id="entry_date_end" name="entry_date_end" value="${storageHead.entry_date_end}" class="form-control input-sm" />
		<input type="text" id="state" name="state" value="${storageHead.state }"class="form-control input-sm">
		</form>
</body>
</html>