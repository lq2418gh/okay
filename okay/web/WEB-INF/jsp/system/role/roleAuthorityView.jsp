<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>角色信息页</title>
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
						var authJson = eval("("+data+")");
						authJson.push({"id":0, "parentId":-1, "name":"全部权限","isParent":1,
							"icon":"${ctx}/css/zTreeStyle/img/sim/commodity.png"});
							//,"url":"javascript:nav('0','公司组织机构')"});
						$("#tree").zTree(tree.setting,authJson);
					});
				
					
				}
			};
			$().ready(function(){
				tree.loadTree("${ctx}/role/authTreeByUser.do?roleId=${roleForm.roleId}&type=view");	//通用
			});
			
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
				background-color: #FFFFFF;
				border: none;
			}
		</style>
	</head>
  	<body>
  		<div style="height: 445px;overflow: auto">
  		<table class="table table-condensed " >
		<tr style="background-color: #208ade;">
			<td><ul id="tree" class="tree"></ul></td>
		</tr>
	</table>
	</div>
	<table>
		<tr>
			<td id="tools">
				<input type="button" value=" 关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
  	</body>
</html>  	