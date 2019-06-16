<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>仓库信息导入页</title>
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
										<span class="label label-primary">基础信息管理>>仓库储位管理>>导入</span></a>
									</h4>
							  </div>
								<div id="collapseOne" class="panel-collapse collapse in" >
									<div class="panel-body">
										<form:form id="formValidate" commandName="excleFileForm" action="${ctx }/warehouse/poi.do" method="post" enctype="multipart/form-data"  >
										<table id="queryTable" class="table table-condensed">
											<tr>
											  <th>仓库明细单</th>
												<td><form:input type="file" id="excle" path="excle"  cssStyle="float:left"/></td>
												<th>&nbsp;</th>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td colspan="4" id="tools">
												<security:authorize ifAnyGranted="ROLE_PURCHASE_PREARRIVAL_ADD">
													<input type="submit" value="保存" class="btn btn-primary btn-xs"/>
												</security:authorize>
													<a class="btn btn-primary btn-xs" href="${ctx}/warehouse/warehouseQuery.do">返回</a>
												</td>
											</tr>
										</table>
										</form:form>
										<img id="loading " src="${ctx}/images/photo.jpg" style="display:none;">
									</div>
								</div>
							</div>					
						</div> 
					</div>	
				</div>
			</div>
		</div>
		<script type="text/javascript">
		$("#formValidate").validate({	
			rules: {
				excle: {
					required: true
				}
			},
			messages: {
				excle: {
					required: "请上传预到货单EXCEL文件"
				}
			}
		});
		</script>
	</body>
</html>
