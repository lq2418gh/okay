<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>角色信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
			<script type="text/javascript">
			var treeObj;
			var tree = {
					setting:{
						isSimpleData: true,
						treeNodeKey: "id",
						treeNodeParentKey: "parentId",
						showLine: true,
						checkable:true,
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
							treeObj = $("#tree").zTree(tree.setting,authJson);
						});
					
						
					}
				};
				$().ready(function(){
					tree.loadTree("${ctx}/role/authTreeByUser.do?roleId=${roleForm.roleId}&type=edit");	//通用
				});
				
			function GetCheckedAll(url) {
				var nodes = treeObj.getCheckedNodes(true);
				var idValues = '';
				var codeValues = '';
				if(nodes.length==0){
					alert("没有可配置的权限！");
					return false;
				}
				for (var i = 0; i < nodes.length; i++) {
					if(i==nodes.length-1){
						idValues += nodes[i].id;
						codeValues += nodes[i].value;
					}else{
						if(nodes[i].id =='0'){
							continue;
						}
						else{
							idValues += nodes[i].id + ",";
							codeValues += nodes[i].value+",";
						}
					}
				}
// 				var v = window.confirm("确定配置以下权限吗？"+codeValues);
				var v = window.confirm("确定配置以下权限吗？");
				if(v){
					document.getElementById("ids").value = idValues;
					document.getElementById("codes").value = codeValues;
					document.getElementById("formValidate").submit();
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
				background-color: #FFFFFF;
				border: none;
			}
		</style>
	</head>
  	<body>
  	
<form:form id="formValidate" name="roleForm" commandName="roleForm" action="${ctx}/role/saveRoleAuthTree.do" method="post">
<div style="height: 515px;overflow: auto">
	  		<table class="table table-condensed " >
				<tr style="background-color: #208ade;">
					<td><ul id="tree" class="tree"></ul></td>
				</tr>
			</table>
			</div>
	<table>
		<tr>
			<td id="tools">
				<form:hidden path="ids"/>
				<form:hidden path="codes"/>
				<form:hidden path="roleId"/>
				<security:authorize ifAllGranted="ROLE_SYS_ROLE_AUTH_ADD">					
					<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="GetCheckedAll()"/>
				</security:authorize>
					<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
				</td>
			</tr>
	</table>
	</form:form>
  	</body>
</html>  	