<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户树</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<script type="text/javascript">
            var tree = {
    				setting:{
    					isSimpleData: true,
    					treeNodeKey: "id",
    					treeNodeParentKey: "parentId",
    					showLine: true,
    					root:{ 
    						isRoot:true,
    						nodes:[]
    					}		
    				},
    				loadTree:function(url){
    					$.post(url,null,function(data){
    						var json = eval("("+data+")");
    						$("#tree").zTree(tree.setting,json);
    					});
    				}	
    			};
			$().ready(function(){
				tree.loadTree("${ctx}/company/companyTree.do");	
			});	
			function nav(id,name) {
				 window.parent.frames["queryFrame"].location.href="${ctx}/user/selectUserInfoByCompanyId.do?companyId="+id;  
			}
		</script>
		<style type="text/css">
			span {
				font-size:12px;
				color: #fff;
				margin-left: 5px;
				-webkit-box-shadow: 0 2px 2px rgba(0,0,0,0.075);
			}
			.tree li button {
				width: 23px;
				height: 23px;
			}
			.tree li {
				margin: 3px;
			}
			
			.tree li button.switch_root_close ,
			.tree li button.switch_center_close,
			.tree li button.switch_bottom_close,
			.tree li button.switch_root_open,
			.tree li button.switch_center_open,
			.tree li button.switch_bottom_open{
				background-repeat: no-repeat;
			}
			.tree li a.curSelectedNode {
				background-color: #208ade;
				border: none;
			}
		</style>
	</head>
  
	<body style="background-color: #208ade;padding: 0px;">
		<ul class="nav nav-pills nav-stacked">
			<li class="active"><a ><span class="badge">组织机构</span></a></li>
		</ul>
		<ul id="tree" class="tree"></ul>
	</body>
</html>
