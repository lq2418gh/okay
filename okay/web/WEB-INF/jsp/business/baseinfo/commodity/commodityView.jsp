<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>查看物料信息</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<style type="text/css">
#queryTable tr{height: 35px};
</style>
</head>

<body>
<form:form id="formValidate" commandName="material" name="material" method="post">
<div style="max-height:430px;overflow: auto">
	<table id="queryTable" class="table table-condensed">
		 <tr>
			<th>物料类别编码</th>
			<td><form:input path="ParentCode" cssClass="form-control input-sm" readonly="true" /></td>
		</tr> 
		 <tr>
			<th>物料类别名称</th>
			<td><form:input path="ParentName" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>物料编码</th>
			<td><form:input path="code" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>物料名称</th>
			<td><form:input path="name" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>计量单位1</th>
			<td><form:input path="unit" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>计量单位2</th>
			<td><form:input path="unit_help" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>计量换算</th>
			<td><form:input path="conversion" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>状态</th>
			<td><form:input path="state" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>规格型号</th>
			<td><form:input path="spec" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>说明</th>
			<td><form:input path="explain" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<td colspan="4" id="tools">
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
	</div>
	</form:form>
</body>
</html>