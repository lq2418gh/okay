<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>部门权限信息页</title>
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
						treeObj = $("#tree").zTree(tree.setting,json);
					});
				}	
			};
			$().ready(function(){
				tree.loadTree("${ctx}/department/authTree.do?departmentId=${departmentId}&parentId=${parentId}");	
			});	
			function GetCheckedAll(url) {
				var nodes = treeObj.getCheckedNodes(true);
				var departmentId = $('#departmentId').val();
				var parentId = $('#parentId').val();
				var idValues = '';
				var codeValues = '';
				if(nodes.length==0){
					alert("没有可配置的权限！");
					return false;
				}
				for (var i = 0; i < nodes.length; i++) {
					idValues += nodes[i].id + ",";
					codeValues += nodes[i].name + ",";
				}
				var v = window.confirm("确定配置以下权限吗？"+codeValues);
				if(v){
					window.location.href = url+'ids='+ idValues+'&codes='+codeValues+'&departmentId='+departmentId+'&parentId='+parentId;
				}
			}   
		</script>
	</head>
  
	<body>
		<div class="row" style="margin-left: 10px;">
			<input type="text" id="departmentId" name="departmentId" value="${departmentId}" readonly="readonly" style="display:none;"/>
			<input type="text" id="parentId" name="parentId" value="${parentId}" readonly="readonly" style="display:none;"/>
		</div>	
		<div>
			<ul id="tree" class="tree"></ul>
		</div>
		<div class="row" style="margin-left: 10px;">
			<input type="button" id="submit" name="submit" class="btn btn-primary btn-xs" value="确定" onclick="GetCheckedAll('${ctx}/department/departmentAuth.do?');"/>
		</div>	
	</body>
	
</html>
