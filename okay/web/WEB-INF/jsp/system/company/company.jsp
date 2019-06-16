<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>部门信息首页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
			$().ready(function(){
				$(function(){ 
					var myLayout =$("body").layout({     
					    applyDefaultStyles: false,//应用默认样式  
					    west__size:210,
					    west__resizable:false,
					    spacing_open:5,
					    spacing_closed:8,
					    togglerLength_open : 100,
						togglerLength_closed : 200,
					    togglerTip_open:"关闭部门树",
					    togglerTip_closed:"打开部门树",
				    });
				});
			});	
		</script>
	</head>
  
	<body>
		<div class="ui-layout-west" >
			<iframe id="treeFrame" name="treeFrame" src="${ctx }/company/tree.do" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
		</div>
		<div class="ui-layout-center" >
			<iframe id="mainFrame" name="mainFrame" src="${ctx }/company/query.do?parentId=${parentId}" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
		</div>
	</body>
	
</html>
