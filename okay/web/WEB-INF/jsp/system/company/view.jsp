<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>组织结构查看</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>部门编码</th>
			<td>部门名称</td>
			<td>上级部门</td>
			<td>部门状态</td>
			<td>备注</td>			
		</tr>
		<c:forEach items="${companyList}" var="company">
		<tr>
				<td>${company.companyCode }</a></td>
				<td>${company.companyName }</td>
				<td>${company.parentId }</td>
				<td>${company.companyType }</td>
				<td>${company.remark}</td>					 			
		</tr>		
		</c:forEach>
		<tr>
			<td colspan="2" id="tools">
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
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
		<input id="companyId" name="companyId" value="${companyId }"/>
	</form>
	<script type="text/javascript">
		function modal(width,height,url){
			//window.top.document.getElementById("modal-dialog").style.marginTop=margin;
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
	</script>
</body>
</html>