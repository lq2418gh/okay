<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户角色页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
			$(document).ready(function(){
				$('input').iCheck({
					checkboxClass: 'icheckbox_square-blue',
					radioClass: 'iradio_square-blue'
				});
				//复选框样式生成
				$('#quanxuan').on('ifChecked', function(event){
					$('input').iCheck('check');
				});
				$('#quanxuan').on('ifUnchecked', function(event){
					$('input').iCheck('uncheck');
				});
			});
			</script>
	</head>
  
	<body><div style="height: 470px;overflow: auto">
			<table class="table table-striped table-condensed table-hover">
			<tr>
				<th><input type="checkbox" name="checkAll"  id="quanxuan" /></th>
				<th>角色名称</th>
			</tr>
			<c:forEach items="${userRoleList}" var="role">
			<tr>
				<td><input type="checkbox" value="${role.roleId }" name="ids" <c:if test="${role.ifUser }">checked="checked"</c:if> /></td>
				<td>${role.roleName }</td>
			</tr>
			
			
			</c:forEach>
		</table></div>
		<table>
		<tr>
				<td colspan="2" id="tools">					
					<security:authorize ifAllGranted="ROLE_SYS_USER_ROLE_ADD">
						<input type="button" id="submit" name="submit" class="btn btn-primary btn-xs" value="保存" onClick="checkBox('${ctx}/user/editUserRole.do?userId=${userId}&','是否确认保存？');"/>
					</security:authorize>
					<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
				</td>
			</tr></table>
	</body>
</html>
