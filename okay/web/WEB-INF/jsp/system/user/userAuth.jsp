<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>用户权限页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	<script type="text/javascript">
	 		var treeObj;
			var tree = {
				setting:{
					isSimpleData: true,
					treeNodeKey: "id",
					treeNodeParentKey: "parentId",
					showLine: true,
					checkable: true,
					root:{ 
						isRoot:true,
						nodes:[]
					}		
				},
				loadTree:function(url){
					$.post(url,null,function(data){
						var json = eval("("+data+")");
						for(var o in json){  
							json[o].open=true;
						}  
						treeObj = $("#tree").zTree(tree.setting,json);
						$(".switch_roots_open").attr("class","switch_center_open");
					});
				}
			};
			$().ready(function(){
				tree.loadTree("${ctx}/user/authTree.do?userInfoId=${userInfoId}");	
			});
			function GetCheckedAll(url) {
				var nodes = treeObj.getCheckedNodes(true);
				var userId = $('#userId').val();
				var companyId = $('#companyId').val();
				var idValues = '';
				var codeValues = '';
				if(nodes.length==0){
					alert("没有可配置的权限！");
					return false;
				}
				for (var i = 0; i < nodes.length; i++) {
					idValues += nodes[i].id + ",";
					codeValues += nodes[i].value + ",";
				}
				var v = window.confirm("确定配置以下权限吗？");
				if(v){
					$.post("${ctx}/user/editUseAuth.do",{"ids":idValues,"codes":codeValues,"userId":userId,"companyId":companyId},function(data){
						if(data == "ok"){
							alert("编辑数据成功");
						}else{
							alert("编辑数据失败");
						}
					});
					window.top.document.getElementById('butclose').click();
				}
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

<body>
<div style="height: 470px;overflow: auto">
	<table class="table table-condensed " >
		<tr style="background-color: #208ade;">
			<td><ul id="tree" class="tree"></ul></td>
		</tr>
	</table>
</div>
<table>
	<tr>
		<td id="tools">
			<input type="hidden" id="companyId" name="companyId" class="btn btn-primary btn-xs" value="${companyId }" readonly="readonly" />
			<input type="hidden" id="userId" name="userId" class="btn btn-primary btn-xs" value="${userId }" readonly="readonly" />								
			<security:authorize ifAllGranted="ROLE_SYS_USER_AUTH_ADD">
				<input type="button" id="submit" name="submit" class="btn btn-primary btn-xs" value="确定" onclick="GetCheckedAll('${ctx}/user/editUseAuth.do?');"/>
			</security:authorize>
			<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
		</td>
	</tr>
</table>
</body>
</html>