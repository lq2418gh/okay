<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>科目预算导入页</title>
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
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
										<span class="label label-primary">基础信息管理>>预算科目管理>>导入</span></a>
									</h4>
							  </div>
								<div id="collapseOne" class="panel-collapse collapse in" >
									<div class="panel-body">
										<form:form id="formValidate" commandName="excleFileForm" action="${ctx }/budgetAccount/saveImp.do" method="post" enctype="multipart/form-data"  >
										<table id="queryTable" class="table table-condensed">
											<tr>
											  <th>预算科目信息</th>
												<td><form:input type="file" id="excle" path="excle"  cssStyle="float:left"/></td>
												<th>&nbsp;</th>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td colspan="4" id="tools">
												<%-- <security:authorize ifAnyGranted="ROLE_PURCHASE_PREARRIVAL_ADD"> --%>
													<input type="button"  id="impButton" value="上传"  class="btn btn-primary btn-xs" onClick="formSubmit()"/>
												<%-- </security:authorize> --%>
													<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
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
		<script type="text/javascript">
		function formSubmit(){
			if(obj.form()){
				document.getElementById("formValidate").submit();
				window.top.document.getElementById('butclose').click();
			}
		}
		var obj = $("#formValidate").validate({	
			rules: {
				excle: {
					required: true
				}
			},
			messages: {
				excle: {
					required: "请上传物料EXCEL文件"
				}
			}
		});
		</script>
	</body>
</html>
