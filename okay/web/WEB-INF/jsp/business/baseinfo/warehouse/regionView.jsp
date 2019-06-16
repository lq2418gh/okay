<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>查看库区信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<form:form id="formValidate" commandName="region" name="region"  method="post">
<form:hidden path="warehouseId"/>
<form:hidden path="regionId"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>仓库编码</th>
			<td><form:input path="warehouseCode" cssClass="form-control input-sm" readonly="true"/></td>
			<th>仓库名称</th>
			<td><form:input path="warehouseName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>库区编码</th>
			<td><form:input path="regionCode" cssClass="form-control input-sm" readonly="true"/></td>
			<th>库区名称</th>
			<td><form:input path="regionName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>状态</th>
			<td><form:input path="state" cssClass="form-control input-sm" readonly="true"/></td>
			<th>面积（平方米）</th>
			<td><form:input path="area" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>备注</th>
			<td colspan="3"  >
			<form:textarea path="remark" rows="2" cols="100" cssStyle="resize: none;" cssClass="form-control input-sm" readonly="true" />
			</td>
		</tr>
		<tr>
			<td colspan="4" id="tools">
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>