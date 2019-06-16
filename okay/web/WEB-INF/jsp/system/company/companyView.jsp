<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>查看部门信息</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
<body>
	<form:form id="companyForm" commandName="companyForm" name="companyForm" action="${ctx}/company/editCompany.do" method="post">
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>部门编码</th>
			<td>
			<form:hidden path="companyId"/>
			<form:input type="text" id="companyCode" path="companyCode" cssClass="form-control input-sm" readonly="true"/>
			</td>
		</tr>
		<tr>
			<th>部门名称</th>
			<td><form:input path="companyName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>上级部门</th>
			<td><form:hidden path="parentId"/>
			<form:input path="parentName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>部门状态</th>
			<td>
				<form:input path="companyType" cssClass="form-control input-sm" readonly="true"/>
			</td>
		</tr>
		<tr>
			<th>部门所属区域</th>
			<td><form:input path="companyDistrict" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>部门地址</th>
			<td><form:input path="companyAddress" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>部门联系人</th>
			<td><form:input path="companyContact" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>部门电话</th>
			<td><form:input path="companyTel" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>备注</th>
			<td><form:textarea type="text" id="remark" path="remark" cssClass="form-control input-sm" cssStyle="resize:none;width:320px" cols="150" rows="3" readonly="true"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
	</form:form>
<script src="${ctx}js/common.js" type="text/javascript"></script>
</body>
</html>

