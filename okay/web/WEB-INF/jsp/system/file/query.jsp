<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<%response.setHeader("cache-control","private"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>文件信息列表</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
</head>
<body>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title" style="margin-top: 5px;">
									<a id="example" data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne" style="display: block;"><span
										class="label label-primary">查询文件</span></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form commandName="fileInfoForm" action="${ctx}/fileInfo/query.do?file_module_code=${file_module_code }&fk_id=${fk_id}&importNo=${fileInfoForm.importNo}" method="post">
									<input type="hidden" name="url" value="${url}"/>
									<input type="hidden" name="rurl" value="${rurl}">
									<table id="queryTable" class="table table-condensed ">
										<tr>
											<th>文件类别</th>
											<td>
												<html:select id="file_type_code" name="file_type_code" classes="form-control input-sm">     
										            <html:sysOptions condition="${file_module_id}"></html:sysOptions>  
										        </html:select>
											</td>
											<th>文件名称</th>
											<td><form:input type="text" id="file_path" path="file_path" cssClass="form-control input-sm" /></td>
										</tr>
										<tr>
											<th>上传时间</th>
											<td>
												<div class="input-group">
													<form:input type="text" id="beginTime" path="beginTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
													<span class="input-group-btn">
														<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
															<span class="glyphicon glyphicon-remove"></span>
														</button>
													</span>
												</div>
												<div class="input-group" style="margin-left: 5px;">
													<form:input type="text" id="endTime" path="endTime" cssClass="form-control input-sm form_datetime" readonly="true"/>
													<span class="input-group-btn">
														<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
															<span class="glyphicon glyphicon-remove"></span>
														</button>
													</span>
												</div>
											</td>
											<th>上传人</th>
											<td><form:input type="text" id="INPUT_USERNAME" path="INPUT_USERNAME" cssClass="form-control input-sm" /></td>
										</tr>
										<tr>
											<td colspan="4" id="tools">
												<input type="submit" value="查询" class="btn btn-primary btn-xs" id="search" /> 
												<input type="reset" value="重置" class="btn btn-primary btn-xs" />
												<a class="btn btn-primary btn-xs" href="javascript:Back('${(empty rurl) ? url : rurl}')">返回</a>
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
								<a class="btn btn-primary btn-xs" href='javascript:upload()'>上传</a>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>文件名称</th>
											<th>文件类别</th>
											<th>文件类型</th>
											<th>上传人</th>
											<th>上传时间</th>
											<th>操作</th>
										</tr>
										<c:forEach items="${fileInfos}" var="file">
										<tr class="fileTr">
											
											<td><input type="hidden" name="filePath" value="${file.file_path}"/></td>
											<td>${file.file_type_name }</td>
											<td></td>
											<td>${file.INPUT_USERNAME }</td>
											<td>
												<fmt:formatDate value="${file.INPUT_DATE }" pattern="yyyy-MM-dd"/>  
											</td>
											<td>
												<a href="javascript:del('${file.file_id }')" onclick="return confirms();">删除</a>
												<a href="${ctx}/fileInfo/download.do?file_id=${file.file_id }" onclick="return confirms();">下载</a>
											</td>
										</tr>
										</c:forEach>
									</table>
								</div>
								<table class="table table-condensed" id="pageTools">
									<tr>
										<td>
											<!------------- 分页开始 ------------->	
											<jsp:include page="../../common/page.jsp">  
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
		<input type="text" name="file_type_code" value="${fileInfoForm.file_type_code}">
		<input type="text" name="file_path" value="${fileInfoForm.file_path}">
		<input type="text" name="INPUT_USERNAME" value="${fileInfoForm.INPUT_USERNAME}">
		<input type="text" name="beginTime" value="${fileInfoForm.beginTime}">
		<input type="text" name="endTime" value="${fileInfoForm.endTime}">
		<input type="text" name="file_module_code" value="${file_module_code}">
		<input type="text" name="fk_id" value="${fk_id}">
		<input type="text" name="importNo" value="${fileInfoForm.importNo}">
		<input type="text" name="url" value="${url}"/>
		<input type="text" name="rurl" value="${rurl}">
	</form>
	<form id="hiddenForm" action="${ctx}/fileInfo/edit.do" hidden="true" method="post">
		<input type="text" name="file_module_code" value="${file_module_code }">
		<input type="text" name="fk_id" value="${fk_id}">
		<input type="text" name="rurl" value="${rurl}">
		<input type="text" name="importNo" value="${fileInfoForm.importNo}">
	</form>
	<form id="hiddenFormDel" action="${ctx}/fileInfo/del.do" hidden="true" method="post">
		<input type="text" name="file_module_code" value="${file_module_code }">
		<input type="text" id="file_id" name="file_id" value="">
		<input type="text" name="rurl" value="${rurl}">
		<input type="text" name="url" value="${url}" />
		<input type="text" name="fk_id" value="${fk_id}">
		<input type="text" name="importNo" value="${fileInfoForm.importNo}">
	</form>
	<script type="text/javascript">
	if('${fileInfoForm.file_type_code}' != ''){
		$("#file_type_code option:contains('${fileInfoForm.file_type_code}')").attr("selected",true);
	}
		$(function(){
			$(".fileTr").each(function(){
				var filePath = $(this).find("input[name='filePath']:hidden").val();
				var name = filePath.substring(0,filePath.lastIndexOf("."));
				$(this).children().eq(0).html(name);
				var type = filePath.substring(filePath.lastIndexOf(".") + 1);
				$(this).children().eq(2).html(type);
			});
		});
		function upload(){
			$("#hiddenForm").submit();
		}
		function Back(url){
			if($("#hiddenForm input[name='importNo']").val() == ""){
				$("#hiddenForm input[name='importNo']").remove();
			}
			$("#hiddenForm").attr("action",url);
			$("#hiddenForm").submit();
		}
		function del(fileId){
			$("#file_id").val(fileId);
			$("#hiddenFormDel").submit();
		}
	</script>
</body>
</html>