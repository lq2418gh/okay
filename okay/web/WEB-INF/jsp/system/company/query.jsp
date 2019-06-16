<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>部门信息查询</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> <span class="icon"><span class="glyphicon glyphicon-file"></span></span></a>
								<c:if test="${0 == companyForm.levels or 1 == companyForm.levels}">
								<security:authorize ifAllGranted="ROLE_SYS_DEP_ADD">
								<button class="btn btn-primary btn-xs" onClick="modal(900,450,'${ctx}/company/companyInfo.do?flag=new&parentId=${parentId}');">新建部门</button>
								</security:authorize>
								</c:if>
								</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 610px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>部门编码</th>
											<th>部门名称</th>
											<th>上一级名称</th>
											<th>部门状态</th>
											<th>操作</th>
										</tr>
										<c:forEach items="${companyForm.companyList}" var="company">
										<tr>
											<td><a  onClick="modal(900,450,'${ctx}/company/companyView.do?companyId=${company.companyId}');">${company.companyCode }</a></td>
											<td>${company.companyName }</td>
											<td>${company.parentName }</td>
											<td>${company.companyType }</td>											
											<td>
											<security:authorize ifAllGranted="ROLE_SYS_DEP_MOD">
											<button class="btn btn-primary btn-xs" onclick="modal(900,450,'${ctx}/company/companyInfo.do?flag=update&companyId=${company.companyId}');"><span class="glyphicon glyphicon-pencil"></span>编辑</button>
                        					</security:authorize>
                        					<security:authorize ifAllGranted="ROLE_SYS_DEP_DEL">
                        					<button class="btn btn-primary btn-xs" onclick="deleteCompany('${company.companyId}','${company.parentId}')"><span class="glyphicon glyphicon-trash"></span>删除</button>
                        					</security:authorize>
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
	<script type="text/javascript">
		function modal(width,height,url){
			//window.top.document.getElementById("modal-dialog").style.marginTop=margin;
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function deleteCompany(companyId,parentId){
			var repeatUserCompanyId = "${ctx}/company/repeatUserCompanyId.do?companyId="+companyId;
			if(confirm("确定删除吗?")){	
				$.ajax({
				    type: "GET",
			        url: repeatUserCompanyId,
			        success: function(data) {
			    		if(data == 'true'){
			    			alert("删除部门前，请将部门下用户删除！");
			    		}else{
			    			window.location.href='${ctx}/company/deleteCompany.do?companyId='+companyId+'&parentId='+parentId;
			      		}
			        }
			    });	
			}
			
		}
	</script>
	<c:if test="${ not empty companyForm.message}"> 
		<script type="text/javascript">
			//alert('${companyForm.message}');
			window.top.document.getElementById('mainFrame').src='${ctx}/company/company.do?parentId=${companyForm.parentId}';
			alert("${companyForm.message}");
		</script> 
	</c:if>
</body>
</html>