<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>查看物资类别</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<body>
<span id="realName" style="display:none"><security:authentication property='principal.UserInfo.realName'/></span>
<form:form id="formValidate" commandName="materialType" name="materialType">
	<table id="queryTable" class="table table-condensed">
		<c:if test="${materialType.parent ne '0'}">
		<tr>
			<th>父类别编码</th>
			<td><form:input path="ParentCode" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th>父类别名称</th>
				<td><form:input path="ParentName" cssClass="form-control input-sm" readonly="true" /></td>
			</tr>
		</c:if>	
		<c:if test="${materialType.parent eq '0'}">
		<form:hidden path="ParentCode" />
		<form:hidden path="ParentName" />
		</c:if>	
		<tr>
			<th>物料类别编码</th>
			<td><form:input path="code" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>	
			<th>物料类别名称</th>
			<td><form:input path="name" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>计量单位</th>
			<td><form:input path="unit"  cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>备注</th>
			<td><form:textarea path="remark" rows="2" cols="100" cssClass="form-control input-sm" cssStyle="resize: none;" readonly="true" /></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<input type="button" value="关闭"  class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>