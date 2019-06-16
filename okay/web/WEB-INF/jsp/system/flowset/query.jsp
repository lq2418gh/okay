<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>列表页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

</head>

<body>
<span id="realName" style="display:none"><security:authentication property='principal.UserInfo.realName'/></span>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> <span class="icon"><span class="glyphicon glyphicon-file"></span></span></a>
								<button class="btn btn-primary btn-xs" id="new" onclick="modal(780,600,'${ctx}/flowset/flowsetEdit.do');">新建审批类型</button>
								<button class="btn btn-primary btn-xs" id="edit" onclick="modal(780,600,'${ctx}/flowset/flowsetEdit.do?record_id=${record_id }');">编辑审批类型</button>
								<c:if test="${fn:length(flowsetDetails)==0}"><a href="${ctx}/flowset/deleteFlowset.do?record_id=${record_id }" class="btn btn-primary btn-xs" onclick="return confirms();">删除审批类型</a></c:if>
								<button class="btn btn-primary btn-xs" onclick="modal(780,600,'${ctx}/flowset/flowsetDetailEdit.do?fk_record_id=${record_id }');">新建审批流程</button>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body" style="height: 350px;">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th>序号</th>
											<th>审批流名称</th>
											<th>审批角色</th>
											<th>是否签名</th>
											<th>备注</th>
											<th colspan="2">操作</th>
										</tr>
										<c:forEach items="${flowsetDetails}" var="fd">
										<tr>
											<td>${fd.order_no }</td>
											<td>${fd.flow_name }</td>
											<td>${fd.role_name }</td>
											<c:if test="${fd.flow_sign==true }"><td>是</td></c:if>
											<c:if test="${fd.flow_sign==false }"><td>否</td></c:if>
											<td>${fd.memo }</td>							
											<td>
												<button class="btn btn-primary btn-xs" onclick="modal(780,600,'${ctx}/flowset/flowsetDetailEdit.do?record_id=${fd.record_id }&fk_record_id=${record_id }');"><span class="glyphicon glyphicon-pencil"></span></button>
												<a class="btn btn-primary btn-xs" href="${ctx}/flowset/deleteFlowsetDetail.do?record_id=${fd.record_id }&fk_record_id=${record_id }" onclick="return confirms();"><span class="glyphicon glyphicon-trash"></span></a>
											</td>
										</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 测试ajax -->
	<%-- <button type="button" class="btn btn-primary btn-sm" onClick="checkState();" >审核（验证角色）</button>
	<button type="button" class="btn btn-primary btn-sm" onClick="modal(600,300,'${ctx}/flowset/record.do?work_no=1234567');" >审核记录</button>
	<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button> --%>
	<!-- Modal -->
	<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="modal-dialog" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display: none">关闭</button>
				</div>
				<div class="modal-body" id="modal-body">
					<iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
				</div>
			</div>
		</div>
	</div> -->
	<!-- Modal -->
	
	
	<c:if test="${not empty message }">
		<script type="text/javascript">	
			alert("${message}");
	 		window.top.document.getElementById('mainFrame').src='${ctx}/flowset/flowset.do?recordId=${recordId}';
      	</script> 
    </c:if>
	<script type="text/javascript">
	$(function(){
		var realName=$("#realName").html();
		if(realName == "系统管理员"){
			$("#new").show();
			$("#edit").show();
		}else{
			$("#new").hide();
			$("#edit").hide();
		}
	});
		function modal(width,height,url){
			window.top.document.getElementById("modal-dialog").style.width=width+"px";
			window.top.document.getElementById("modal-body").style.height=height+"px";
			window.top.document.getElementById("a").src=url;
			window.top.document.getElementById("modal").click();
		}
		function confirms(){
			return window.confirm("确定删除吗?");
		}
	</script>
</body>
</html>