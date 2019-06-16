<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>部门信息</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
<body>
<form:form id="formValidate" commandName="companyForm" name="companyForm" action="${ctx}/company/editCompany.do" method="post">
	<table id="queryTable" class="table table-condensed">
	<form:hidden path="companyId"/>
	<form:hidden path="levels"/>
	<c:if test="${not empty companyForm.companyId}">
		<tr>
			<th>部门编码</th>
			<td><form:input type="text" id="companyCode" path="companyCode" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
	</c:if>
	<c:if test="${empty companyForm.companyId}">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>部门编码</th>
			<td><form:input type="text" id="companyCode1" path="companyCode" cssClass="form-control input-sm" /></td>
		</tr>
	</c:if>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>部门名称</th>
			<td><form:input id="companyName" path="companyName" cssClass="form-control input-sm" maxlength="10" /></td>
		</tr>
		<tr>
			<th>上级部门</th>
			<td><form:hidden path="parentId"/>
			<form:input path="parentName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>部门状态</th>
			<td>
				<form:select  id="companyType" path="companyType" cssClass="form-control input-sm">
					<form:option value="可用" >可用</form:option>
					<form:option value="不可用">不可用</form:option>
				</form:select>
			</td>
		</tr>
		<tr>
			<th>部门所属区域</th>
			<td><form:input path="companyDistrict" cssClass="form-control input-sm" maxlength="30"/></td>
		</tr>
		<tr>
			<th>部门地址</th>
			<td><form:input path="companyAddress" cssClass="form-control input-sm" maxlength="30" /></td>
		</tr>
		<tr>
			<th>部门联系人</th>
			<td><form:input path="companyContact" cssClass="form-control input-sm" maxlength="30"/></td>
		</tr>
		<tr>
			<th>部门电话</th>
			<td><form:input path="companyTel" cssClass="form-control input-sm" maxlength="30" /></td>
		</tr>
		<tr>
			<th>备注</th>
			<td><form:textarea type="text" id="remark" path="remark" cssClass="form-control input-sm" cssStyle="resize:none;width:320px" cols="150" rows="3"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
			<security:authorize ifAnyGranted="ROLE_SYS_DEP_ADD,ROLE_SYS_DEP_MOD">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/>
			</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
</form:form>
	<script src="${ctx}/js/common.js" type="text/javascript"></script>
	<script type="text/javascript">
	function formSubmit(){
		if(obj.form()){
			document.getElementById("formValidate").submit();
			window.top.document.getElementById('butclose').click();
		}
	}
	
	//只能输入字母和数字
	jQuery.validator.addMethod("chrnum", function(value, element) {
		return this.optional(element) || /^[a-zA-Z0-9]+$/.test(value);
		}, "只能包括英文字母和数字");
	
	
	
	var obj = $("#formValidate").validate({	
		rules: {
			companyCode:{
				required: true,
				chrnum:true,
				rangelength:[0,10],
				remote:{
 					type:"POST",
 					url:"${ctx}/company/repeatCompanyCode.do?levels="+$("#levels").val(), 
 					data:{
 						companyCode:function(){
 							return $("#companyCode1").val();
 						}
	 				}
				}
			},
			companyName: {
				required: true,		
				rangelength:[0,10],
				remote:{
 					type:"POST",
 					url:"${ctx}/company/repeatCompanyName.do?levels="+$("#levels").val(),
 					data:{
 						companyCode:function(){
 							return $("#companyName").val();
 						}
	 				}
				} 
			},
			remark:{
				rangelength:[0,500]
			}
		},
		messages: {
			companyCode: {
				required: "请输入部门编码",
				chrnum:"只能输入字母和数字",
				rangelength: "长度必须介于0和10之间",
				remote:"部门编码已存在"
			},
			companyName: {
				required: "请输入部门名称",		
				rangelength: "长度必须介于0和10之间",
				remote:"部门名称已存在"
			},
			remark:{
				rangelength:"长度不能超过500"
			}
		}
	});	
	</script>
</body>
</html>

