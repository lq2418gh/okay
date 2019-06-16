<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
		<title>奥凯采办系统</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
			$().ready(function(){
				$(function(){ 
					var myLayout =$("body").layout({     
					    applyDefaultStyles: false,//应用默认样式  
					   	north__size:50,
					   	north__closable:false,//可以被关闭 
					    west__size:200,
					    west__resizable:false,//可以被改变大小
					    spacing_open:5,//边框的间隙  
					    spacing_closed:8,//关闭时边框的间隙  
					    togglerLength_open:100,//pane打开时，边框按钮的长度  
					    togglerLength_closed:200,//pane关闭时，边框按钮的长度  
					    togglerTip_open:"点击关闭",
					    togglerTip_closed:"点击打开",    
				    });
				});
			});		
		</script>
	</head>
  
	<body>
		<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"  data-backdrop="static"></button>
		<div class="ui-layout-north">
			<iframe id="headerFrame" name="headerFrame" src="${ctx}/jsp/header.do" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
		</div>
		<div class="ui-layout-west">		
			<iframe id="menuFrame" name="menuFrame" src="${ctx}/jsp/menu.do" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>
		</div>	
		<div class="ui-layout-center">
			<iframe id="mainFrame" name="mainFrame" src="${ctx}/sys/task/welcome.do" width="100%" height="99%" frameborder="0" scrolling="auto" ></iframe>	
		</div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
			<div class="modal-dialog" id="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
						<button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display:none">关闭</button>	
					</div>
   					<div class="modal-body" id="modal-body">
      					<iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
   					</div>
 				</div>
			</div>
		</div>
	</body>
</html>