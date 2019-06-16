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
		<form:form id="formValidate"  name="tenderFrameHead" action="${ctx}/supplier/saveSupplier.do" method="post">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
									<span class="label label-primary">招标管理>>协议招标>>查看</span></a>
								</h4>
			  				</div>
			 				<div id="collapseOne" class="panel-collapse collapse in" >
								<div class="panel-body">
									<table id="queryTable" class="table table-condensed">
										<tr>
											<th>招标编号</th>
											<td>${tenderFrameHead.tender_no }</td>
											<th>发布时间</th>
											<td><fmt:formatDate value="${tenderFrameHead.release_date}" pattern="yyyyMMdd" /></td>
											<th>开标时间</th>
											<td><fmt:formatDate value="${tenderFrameHead.open_date}" pattern="yyyyMMdd HH:mm" /></td>
											<th>招标状态</th>
											<td>${tenderFrameHead.state }</td>
										</tr>
										<!-- 第2行 -->
										<tr>
											<th>开标地点</th>
											<td colspan="7">${tenderFrameHead.open_place }</td>
										</tr>
										<tr>
											<th>备注</th>
											<td colspan="7">${tenderFrameHead.remark }</td>
										</tr>
										<!-- 循环 -->
										<c:forEach var="ts" items="${tenderFrameHead.tenderFrameSupplierList }">
											<tr>
												<th>供应商</th>
												<td>${ts.supplier_name }</td>
												<th>邮箱</th>
												<td><span class="email">${ts.email }</span>&nbsp;&nbsp;&nbsp;&nbsp;
													<c:if test="${ts.supplier ne tenderFrameHead.big_supplier && empty tenderFrameHead.big_supplier}">
														<c:forEach var="list" items="${list}">
															<c:if test="${ts.supplier eq list.supplier}">
																<a class="btn btn-primary btn-xs" href="${ctx}/tender/bidding.do?id=${tenderFrameHead.id}&supplier=${ts.supplier}" onclick="return confirms();">中标</a>
																<input type="button" value="已上传报价" class="btn btn-primary btn-xs" disabled/>
															</c:if>
														</c:forEach>
													</c:if>
												<c:if test="${ts.supplier eq tenderFrameHead.big_supplier }">
													<input type="button" value="已中标" class="btn btn-primary btn-xs" disabled/>
												</c:if>
												</td>
												<td colspan="4"></td>
											</tr>
										</c:forEach>
										<tr>
											<td colspan="8" id="tools">
												<c:if test="${tenderFrameHead.state eq '新建' }">
							                  	<a class="btn btn-primary btn-xs" href="${ctx}/tender/editAndEcho.do?id=${tenderFrameHead.id}" >编辑</a>
							                  	</c:if>
										    	<a class="btn btn-primary btn-xs" href="${ctx}/tender/query.do" >返回</a>
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
							<c:if test="${tenderFrameHead.state eq '新建' }">
								<a class="btn btn-primary btn-xs" onclick="sendEmail()">发布</a>
							</c:if>
							<c:if test="${tenderFrameHead.state eq '发布' }">
								<a class="btn btn-primary btn-xs" href="${ctx}/tender/cancel.do?id=${tenderFrameHead.id }" onclick="return confirms();">废标</a>
								<a class="btn btn-primary btn-xs" href="${ctx}/tender/download.do?tender_no=${tenderFrameHead.tender_no }" >下载模板</a>
						    	<a class="btn btn-primary btn-xs" onclick="modal(900,300,'${ctx}/tender/ImpTender.do?parentId=${tenderFrameHead.id }&tender_no=${tenderFrameHead.tender_no }');">报价上传</a>
							</c:if>
							<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_tender&fk_id=${tenderFrameHead.id }&importNo=${tenderFrameHead.tender_no }" >文件管理</a>
					    	<c:if test="${tenderFrameHead.state eq '中标' }">
					    		<a class="btn btn-primary btn-xs" onclick="checkAgreement()">生成协议</a>
					    	</c:if>
						</div>
					  <div id="collapseTwo" class="panel-collapse collapse in">
					    <div class="panel-body" style="max-height: 380px;">
					      <table class="table table-striped table-condensed table-hover" id="mxtable">
					        <tr>
								<th>序号</th>
								<th>物资编码</th>
								<th>物资名称</th>
								<th>规格</th>
								<th>单位</th>
								<th>说明</th>
								<th>中标价</th>
							</tr>
							<c:forEach var="td" items="${tenderFrameHead.tenderFrameDetailList }">
							<tr>
								<td>${td.tenderFrameDetail_row_no }</td>
								<td>${td.code }</td>
								<td>${td.name }</td>
								<td>${td.spec }</td>
								<td>${td.unit }</td>
								<td>${td.explain }</td>
								<td>${td.main_Price }</td>
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
			$.post("${ctx}/tender/checkFile.do",{'id':'${tenderFrameHead.id}'},function(response){
				if(response=='1'){
					alert("请先上传招标文件");
					return false;
				}else{
					var emails="";
					$(".email").each(function(i){
						emails=emails+$(this).text()+";";
					})
					location.href="${ctx}/tender/sendEmail.do?id=${tenderFrameHead.id }&emails="+emails;
				}
			});
		}
	}
	function checkAgreement(){
		$.post("${ctx}/tender/checkAgreement.do",{'id':'${tenderFrameHead.id}'},function(response){
			if(response=='1'){
				alert("已生成协议,请勿重复操作");
				return false;
			}else{
				location.href="${ctx}/frame/edit.do?tenderFrameHeadID=${tenderFrameHead.id }&type=check" 
			}
		});
	}
</script>
</html>