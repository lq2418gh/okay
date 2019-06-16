<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>编辑物资类别</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<body>
<form:form id="formValidate" commandName="materialType" name="materialType" action="${ctx}/material/saveMaterialsType.do" method="post">
	<table id="queryTable" class="table table-condensed">
		<form:hidden path="parent"/>
		<form:hidden path="levels"/>
		<form:hidden path="id"/>
		<c:if test="${materialType.parent ne '0'}">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>父类别编码</th>
			<td><form:input path="ParentCode" cssClass="form-control input-sm" readonly="true" /></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>父类别名称</th>
				<td><form:input path="ParentName" cssClass="form-control input-sm" readonly="true" /></td>
			</tr>
		</c:if>	
		<c:if test="${materialType.parent eq '0'}">
		<form:hidden path="ParentCode" />
		<form:hidden path="ParentName" />
		</c:if>	
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>物料类别编码</th>
			<c:if test="${empty materialType.id}">
			<td><form:input path="code" id="code" cssClass="form-control input-sm"/></td>
			</c:if>
			<c:if test="${not empty materialType.id}">
			<td><form:input path="code" id="code" cssClass="form-control input-sm" readonly="true"/></td>
			</c:if>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>物料类别名称</th>
			<td><form:input path="name" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>
				<span class="glyphicon glyphicon-asterisk"style="color: white"></span>
				计量单位</th>
			<td>
			<c:if test="${empty materialType.id}">
				<html:select id="unitName" name="unit" classes="form-control input-sm"  hideName="unitName">    
					<html:sysOptions condition="unit" checkValue=""></html:sysOptions>    
				</html:select> 
			</c:if>
			<c:if test="${not empty materialType.id}">
				<html:select id="unitName" name="unit" classes="form-control input-sm"  hideName="unitName">    
					<html:sysOptions condition="unit" checkValue="${materialType.unit }"></html:sysOptions>    
				</html:select> 
			</c:if>
			</td>
		</tr>	
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
			<td ><form:textarea path="remark" rows="2" cols="100" cssClass="form-control input-sm" cssStyle="resize: none;" /></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">			
			<security:authorize ifAnyGranted="ROLE_MATERIAL_ADD,ROLE_MATERIAL_MOD">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/> 
			</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
</form:form>
<script type="text/javascript">
	jQuery.validator.addMethod("codeRule", function(value, element) {
		if($("#id").val()==""){	
			if($("#levels").val()==1){
				if($("#code").val()=='0' || $("#code").val().length!=1){
					return false;
				}
			}
			if($("#levels").val()==2){
				if($("#code").val()=='00' || $("#code").val().length!=2){
					return false;
				}
			}
			if($("#levels").val()==3){
				if($("#code").val()=='000' || $("#code").val().length!=3){
					return false;
				}
			}
			return true;
		 }else{
			return true;
		} 
	}, "请参考默认编码格式且不能全为0");
	function formSubmit(){
		if(obj.form()){
				document.getElementById("formValidate").submit();
				window.top.document.getElementById('butclose').click();
		}
	}
	var obj = $("#formValidate").validate({
		rules: {
			code:{
				required: true,
				digits:true,
				codeRule:true,
				remote:{
						type:"POST",
						url:"${ctx}/material/repeatMaterialsTypeCode.do?id="+$("#id").val(), 
						data:{
							code:function(){
								return $("#ParentCode").val()+$("#code").val();
							}
	 					}
					}
			},
			name: {
				required: true,		
				rangelength:[1,20]
			},
			remark: {
				maxlength:1000
			}
		},
		messages: {
			code: {
				required: "请输入物料类别编码",
				digits: "物料编码编码只能输入数字",
				remote: "物料类别编码已存在"
			},
			name: {
				required: "请输入物料类别名称",		
				rangelength: "物料类别名称长度必须介于1和20个字符之间"
			},
			remark: {
				maxlength:"备注长度不能大于400个字符"
			}
		}
	});
	</script>
</body>
</html>

