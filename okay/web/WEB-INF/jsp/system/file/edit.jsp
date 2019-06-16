<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<%response.setHeader("cache-control","private"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>文件上传页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
		<script src="${ctx}/js/ajaxfileupload.js" type="text/javascript" ></script>
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
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">文件上传</span></a>
									</h4>
							  </div>
								<div id="collapseOne" class="panel-collapse collapse in" >
									<div class="panel-body">
										<form:form id="formValidate" commandName="fileInfoForm" action="${ctx }/fileInfo/save.do" method="post" enctype="multipart/form-data"><!--   onsubmit="limitFile()" -->
										<input type="hidden" name="url" value="${url}"/>
										<input type="hidden" name="rurl" value="${rurl}"/>
										<table id="queryTable" class="table table-condensed">
											<tr>
											  	<th>文件类别</th>
												<td>
												<html:select id="file_type_code" name="file_type_code" classes="form-control input-sm" hideName="file_type_name">     
										            <html:sysOptions condition="${file_module_id}"></html:sysOptions>  
										        </html:select>
										        <form:hidden id="file_type_name" path="file_type_name"/>
												</td>
											</tr>
											<tr>
											  	<th>文件模块</th>
												<td><form:input type="text" id="file_module_code" path="file_module_code" cssClass="form-control input-sm" readonly="true"/></td>
											</tr>
											<tr>
											  	<th>文件模块名称</th>
												<td><form:input type="text" id="file_module_name" path="file_module_name" cssClass="form-control input-sm" readonly="true"/></td>
											</tr>
											<tr>
											  	<th>备注</th>
												<td><form:input type="text" id="des" path="des" cssClass="form-control input-sm" /></td>
											</tr>
											<tr>
											  	<th>单据</th>
												<td>
													<form:hidden id="fk_id" path="fk_id"/>
													<form:input type="text" id="importNo" path="importNo" cssClass="form-control input-sm" readonly="true"/>
												</td>
											</tr>
											<tr>
											  <th>上传文件</th>
												<td><form:input type="file" id="file" path="files"  multiple="multiple" cssStyle="float:left" onchange="fileChange(this);"/></td>
											</tr>
											<tr>
												<td colspan="4" id="tools">
													<input type="submit" value="保存"  class="btn btn-primary btn-xs"/>
													<a class="btn btn-primary btn-xs" href="javascript:Back()">返回</a>
												</td>
											</tr>
										</table>
										</form:form>
									</div>
								</div>
							</div>					
						</div> 
					</div>	
				</div>
			</div>
		</div>
		<form id="hiddenForm" action="${url}" hidden="true" method="post">
			<input type="text" name="file_module_code" value="${fileInfoForm.file_module_code }">
			<input type="text" name="fk_id" value="${fileInfoForm.fk_id}">
			<input type="text" name="importNo" value="${fileInfoForm.importNo}">
			<input type="text" name="rurl" value="${rurl}">
		</form>
		<script type="text/javascript">
		$("#formValidate").validate({	
			rules: {
				files: {
					required: true
				}
			},
			messages: {
				files: {
					required: "请上传文件"
				}
			}
		});
		function Back(){
			$("#hiddenForm").submit();
		}
		  
		
			  var isIE = /msie/i.test(navigator.userAgent) && !window.opera; 
			  
			  function fileChange(target) {     
	
			    var fileSize = 0;          
			    if (isIE && !target.files) {      
			      var filePath = target.value;      
			      var fileSystem = new ActiveXObject("Scripting.FileSystemObject");         
			      var file = fileSystem.GetFile (filePath);      
			      fileSize = file.Size;     
			    } else {     
			     fileSize = target.files[0].size;      
			     }    
			     var size = fileSize / 1024;     
			     if(size>30000){   
			      alert("附件不能大于30M"); 
			      target.value="";
			     } 
		  }
		</script>
	</body>
</html>
