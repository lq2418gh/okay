<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>审批页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>

<body>
<form method="post" id="form" action="${ctx}/flowset/change.do?type=${type}&work_no=${work_no}">
<input type="hidden" name="flag" id="flag"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>审批意见</th>
			<td><input type="text" id="CHECK_SUGGESTION" name="CHECK_SUGGESTION" class="form-control input-sm"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<input type="button" class="btn btn-primary btn-xs" value="同意" onclick="change(1);">
				<input type="button" class="btn btn-primary btn-xs" value="拒绝" onclick="change(0);">
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="modalClose()" /> 
			</td>
		</tr>
	</table>
	</form>
	<script type="text/javascript">
		<c:if test="${not empty message }">
			alert("${message}");
			window.top.mainFrame.src=window.top.mainFrame.src;
		</c:if>
		function change(flag){
			$.ajax({
				type:"POST",
				url:"${ctx}/flowset/checkRole.do",
				data:{
					work_no:'${work_no}'
				},
				success:function(data){
					if(data=='true'){
						$("#flag").val(flag);
						$("#form").submit();
						modalClose();
					}else {
						alert("无法审核");
					}
				}
			});
		}
	</script>
</body>
</html>