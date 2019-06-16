<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>用户页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	<script type="text/javascript">
		$().ready(function() {
			$(function() {
				var myLayout = $("body").layout({
					applyDefaultStyles : false,//应用默认样式  
					west__size : 210,
					west__resizable : false,//可以被改变大小
					spacing_open : 5,//边框的间隙  
					spacing_closed : 8,//关闭时边框的间隙  
					togglerLength_open : 100,//pane打开时，边框按钮的长度  
					togglerLength_closed : 200,//pane关闭时，边框按钮的长度  
					togglerTip_open : "点击关闭",
					togglerTip_closed : "点击打开"
				});
			});
		});
	</script>
</head>

<body>
	<div class="ui-layout-west">		
		<iframe id="treeFrame" name="treeFrame" src="${ctx }/user/tree.do" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>
	</div>	
	<div class="ui-layout-center">
		<iframe id="queryFrame" name="queryFrame" src="${ctx}/user/selectUserInfoByCompanyId.do?pageNow=1&companyId=${companyId}&workNo=${workNo}&realName=${realName}&position=${position}&roleName=${roleName}" width="100%" height="99.5%" frameborder="0" scrolling="no" ></iframe>
	</div>
</body>
</html>