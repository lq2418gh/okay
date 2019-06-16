<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>上传报价表</title>
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
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">招标管理>>协议招标>>招标报价表上传</span></a>
									</h4>
							  </div>
								<div id="collapseOne" class="panel-collapse collapse in" >
									<div class="panel-body">
										<form:form id="formValidate" commandName="excleFileForm" action="${ctx }/tender/saveImpTenderFrameOffer.do" method="post" enctype="multipart/form-data"  >
										<table id="queryTable" class="table table-condensed">
											<form:hidden path="parentId"/>
											<form:hidden path="validateStr"/>
											<tr>
											  <th>报价表</th>
												<td><form:input type="file" id="excle" path="excle"  cssStyle="float:left"/></td>
												<th>&nbsp;</th>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td colspan="4" id="tools">
													<security:authorize ifAllGranted="ROLE_MATERIALSTYPE_IMP">
														<input type="button" value="上传" class="btn btn-primary btn-xs" onClick="formSubmit()"/> 
													</security:authorize>
														<input type="button" value="关闭"  class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
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
					required: "请上传报价EXCEL文件"
				}
			}
		});
		</script>
	</body>
</html>
