<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>仓库储位管理</title>
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
					togglerTip_closed : "点击打开",
				});
			});
		});
	</script>
</head>

<body>
	<div id="west" class="ui-layout-west" style=" float:left; width:20%; height:auto">		
		<iframe id="treeFrame" name="treeFrame" src="${ctx }/warehouse/publicTree.do" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>
	</div>	
	<div id="zhong" class="ui-layout-center" style="float:right; width:80%; height:auto">
		<iframe id="tabFrame" name="tabFrame" src="${ctx}/warehouse/publicQuery.do?warehouseId=${warehouseId}" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
	</div>
</body>
</html>
<script>
total = window.screen.availHeight;
document.getElementById("west").style.height=total+"px";
document.getElementById("zhong").style.height=total+"px";
</script>