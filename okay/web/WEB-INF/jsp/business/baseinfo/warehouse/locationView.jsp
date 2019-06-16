<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>查看储位信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<form:form id="formValidate" commandName="locationForm" name="locationForm"  method="post">
<form:hidden path="regionId"/>
<form:hidden path="locationId"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>库区编码</th>
			<td><form:input path="regionCode" cssClass="form-control input-sm" readonly="true" cssStyle="width:190px"/></td>
			<th>库区名称</th>
			<td><form:input path="regionName" cssClass="form-control input-sm" readonly="true" cssStyle="width:190px"/></td>
		</tr>
		<tr>
			<th>储位编码</th>
			<td><form:input path="locationCode" cssClass="form-control input-sm" readonly="true" cssStyle="width:190px"/></td>
			
			<th>架号/层号/位号</th>
			<td><div class="input-group" style="width:70px"><form:input path="jia_no" cssClass="form-control input-sm" readonly="true" cssStyle="width:50px"/></div>
			<div class="input-group" style="width:70px"><form:input path="wei_no" cssClass="form-control input-sm" readonly="true" cssStyle="width:50px"/></div>
			<div class="input-group" style="width:70px"><form:input path="ceng_no" cssClass="form-control input-sm" readonly="true" cssStyle="width:50px"/></div>
			</td>
			
		</tr>		
		<tr>
			<th>储位名称</th>
			<td><form:input path="locationName" cssClass="form-control input-sm" readonly="true" cssStyle="width:190px"/></td>
			<th>储位类型</th>
			<td><form:input path="locationType" cssClass="form-control input-sm" readonly="true" cssStyle="width:190px"/></td>
			
		</tr>		
		<tr>
			<th>长度</th>
			<td><div class="form-group">
    				<div class="input-group">
						<form:input path="length" cssClass="form-control input-sm" readonly="true" cssStyle="width:150px"/>
						<div class="input-group-addon"><b>米</b></div>
					</div>
				</div>
			</td>
			<th>宽度</th>
			<td><div class="form-group">
    				<div class="input-group">
						<form:input path="width" cssClass="form-control input-sm" readonly="true" cssStyle="width:150px"/>
						<div class="input-group-addon"><b>米</b></div>
					</div>
				</div></td>
		</tr>
		<tr>
			<th>高度</th>
			<td><div class="form-group">
    				<div class="input-group">
						<form:input path="height" cssClass="form-control input-sm" readonly="true" cssStyle="width:150px"/>
						<div class="input-group-addon"><b>米</b></div>
					</div>
				</div></td>
			<th>体积限额</th>
			<td><div class="form-group">
    				<div class="input-group">
						<form:input path="height" cssClass="form-control input-sm" readonly="true" cssStyle="width:120px"/>
						<div class="input-group-addon"><b>立方米</b></div>
					</div>
				</div></td>
		</tr>
		<tr>
			<th>承重限额</th>
			<td><div class="form-group">
    				<div class="input-group">
						<form:input path="weightLimit" cssClass="form-control input-sm" readonly="true" cssStyle="width:150px"/>
						<div class="input-group-addon"><b>吨</b></div>
					</div>
				</div></td>
			<th>状态</th>			
			<td><form:input path="state" cssClass="form-control input-sm" readonly="true" cssStyle="width:190px"/></td>
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