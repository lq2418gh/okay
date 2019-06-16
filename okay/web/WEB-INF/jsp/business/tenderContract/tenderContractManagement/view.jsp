<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>查看</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<body>
<div id="context">
	<div class="container">
		<form:form id="formValidate"  name="tenderContractHead" action="${ctx}/supplier/saveSupplier.do" method="post">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
									<span class="label label-primary">招标管理>>合同招标>>查看</span></a>
								</h4>
			  				</div>
			 				<div id="collapseOne" class="panel-collapse collapse in" >
								<div class="panel-body">
									<table id="queryTable" class="table table-condensed">
										<tr>
											<th>招标编号</th>
											<td>${tenderContractHead.tender_no }</td>
											<th>发布时间</th>
											<td><fmt:formatDate value="${tenderContractHead.release_date}" pattern="yyyyMMdd" /></td>
											<th>开标时间</th>
											<td><fmt:formatDate value="${tenderContractHead.open_date}" pattern="yyyyMMdd HH:mm" /></td>
										</tr>
										<!-- 第2行 -->
										<tr>
											<th>招标状态</th>
											<td>${tenderContractHead.state }</td>
											<th>物资采购审批</th>
											<td colspan="3">${tenderContractHead.purchase_no}</td>
										</tr>
										<tr>
											<th>开标地点</th>
											<td colspan="5">
											${tenderContractHead.open_place }
											</td>
										</tr>
										<tr>
											<th>备注</th>
											<td colspan="5">${tenderContractHead.remark }
											</td>
										</tr>
										<!-- 循环 -->
										<c:forEach var="ts" items="${tenderContractHead.tenderContractSupplierList }">
											<tr>
												<th>供应商</th>
												<td>${ts.supplier_name }</td>
												<th>邮箱</th>
												<td><span class="email">${ts.email }</span>&nbsp;&nbsp;&nbsp;&nbsp;
													<c:if test="${ts.supplier ne tenderContractHead.big_supplier && empty tenderContractHead.big_supplier}">
														<c:forEach var="list" items="${list}">
															<c:if test="${ts.supplier eq list.supplier}">
																<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_BID">
																<a class="btn btn-primary btn-xs" href="${ctx}/tenderContract/bidding.do?id=${tenderContractHead.id}&supplier=${ts.supplier}" onclick="return confirms();">中标</a>
																</security:authorize>
																<input type="button" value="已上传报价" class="btn btn-primary btn-xs" disabled/>
															</c:if>
														</c:forEach>
													</c:if>
												<c:if test="${ts.supplier eq tenderContractHead.big_supplier }">
													<input type="button" value="已中标" class="btn btn-primary btn-xs" disabled/>
												</c:if>
												</td>
												<td colspan="2"></td>
											</tr>
										</c:forEach>
										<tr>
											<td colspan="6" id="tools">
												<c:if test="${tenderContractHead.state eq '新建' }">
												<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_EDIT">
							                  	<a class="btn btn-primary btn-xs" href="${ctx}/tenderContract/editAndEcho.do?id=${tenderContractHead.id}" >编辑</a>
							                  	</security:authorize>
							                  	</c:if>
										    	<a class="btn btn-primary btn-xs" href="${ctx}/tenderContract/query.do" >返回</a>
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
							<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> 
								<span class="icon"><span class="glyphicon glyphicon-file"></span></span>
							</a>
							<c:if test="${tenderContractHead.state eq '新建' }">
								<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_RELEASE">
								<a class="btn btn-primary btn-xs" onclick="sendEmail()">发布</a>
								</security:authorize>
							</c:if>
							<c:if test="${tenderContractHead.state eq '发布' }">
								<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_INVALID">
								<a class="btn btn-primary btn-xs" href="${ctx}/tenderContract/cancel.do?id=${tenderContractHead.id }" onclick="return confirms();">废标</a>
								</security:authorize>
								<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_DOWNTEM">
								<a class="btn btn-primary btn-xs" href="${ctx}/tenderContract/download.do?tender_no=${tenderContractHead.tender_no }" >下载模板</a>
						    	</security:authorize>
						    	<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_UPLOADPRICE">
						    	<a class="btn btn-primary btn-xs" onclick="modal(900,300,'${ctx}/tenderContract/ImpTender.do?parentId=${tenderContractHead.id }&tender_no=${tenderContractHead.tender_no }');">报价上传</a>
								</security:authorize>
							</c:if>
							<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_FILEMANAGE">
							<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_tender&fk_id=${tenderContractHead.id }&importNo=${tenderContractHead.tender_no }" >文件管理</a>
						    </security:authorize>
						    <c:if test="${tenderContractHead.state eq '中标' }">
						    <security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_PRODUCTCONTRACT">
						    	<a class="btn btn-primary btn-xs" onclick="checkAgreement()">生成合同</a>
						   	</security:authorize>
						    </c:if>
						</div>
					  <div id="collapseTwo" class="panel-collapse collapse in">
					    <div class="panel-body" style="max-height: 380px;">
					    <input type="hidden" name="materialsPurchaseId" value="${tenderContractHead.materialsPurchaseId }">
					      <table class="table table-striped table-condensed table-hover" id="mxtable">
					        <tr>
								<th>序号</th>
								<th>物资编码</th>
								<th>物资名称</th>
								<th>规格</th>
								<th>单位</th>
								<th>中标价</th>
								<th>数量</th>
								<th>说明</th>
							</tr>
							<c:forEach var="td" items="${tenderContractHead.tenderContractDetailList }">
							<tr>
								<td>${td.tcd_row_num}</td>
								<td>${td.name }</td>
								<td>${td.code }</td>
								<td>${td.spec }</td>
								<td>${td.unit }</td>
								<td>${td.main_Price }</td>
								<td>${td.quantity }</td>
								<td>${td.explain }</td>
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
<!-- 发布 -->
<script type="text/javascript">
	function sendEmail(){
		if (confirm("确定要执行该操作吗?")) {
			$.post("${ctx}/tenderContract/checkFile.do",{'id':'${tenderContractHead.id}'},function(response){
				if(response=='1'){
					alert("请先上传招标文件");
					return false;
				}else{
					var emails="";
					$(".email").each(function(i){
						emails=emails+$(this).text()+";";
						console.log(emails);
					})
					location.href="${ctx}/tenderContract/sendEmail.do?id=${tenderContractHead.id }&emails="+emails;
				}
			});
		}
	}
	function checkAgreement(){
		$.post("${ctx}/tenderContract/checkAgreement.do",{'id':'${tenderContractHead.id}'},function(response){
			if(response=='1'){
				alert("已生成合同,请勿重复操作");
				return false;
			}else{
				location.href="${ctx}/purchaseContract/edit.do?tenderContractHeadID=${tenderContractHead.id }&type=check" 
			}
		});
	}
</script>
</html>