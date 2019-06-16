<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>字典首页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
			$().ready(function(){
				$(function(){ 
					var myLayout =$("body").layout({     
					    applyDefaultStyles: false,//应用默认样式  
					    west__size:250,
					    west__resizable:false,
					    spacing_open:3,
					    spacing_closed:3,
					    togglerTip_open:"关闭部门树",
					    togglerTip_closed:"打开部门树",
				    });
				});
			});	
		</script>
	</head>
  
	<body>
		<div class="ui-layout-west" style="padding: 0px;">
			<iframe id="treeFrame" name="treeFrame" src="${ctx}/sysdictionary/tree.do" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>
		</div>
		<div class="ui-layout-center" style="padding: 0px;">
			<iframe id="tabFrame" name="tabFrame" src="${ctx}/sysdictionary/selectDictionaryByParentId.do?dicId=${dicId}" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
		</div>
	</body>
	
</html>
