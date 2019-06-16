<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑物料信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<form:form id="formValidate" commandName="material" name="material" action="${ctx}/material/saveCommodity.do" method="post">
<form:hidden path="id"/>
<form:hidden path="material_type"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>物料类别编码</th>
			<td><form:input path="ParentCode" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>物料类别名称</th>
			<td><form:input path="ParentName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th>
				<c:if test="${empty material.id}">
					<span class="glyphicon glyphicon-asterisk" style="color: red"></span>
				</c:if>
				<c:if test="${not empty material.id }">
					<span class="glyphicon glyphicon-asterisk" style="color: white"></span>
				</c:if>
				物料编码
			</th>
			<td>
				<c:if test="${not empty material.id}">
					<form:input path="code" id="code" cssClass="form-control input-sm" readonly="true"/>
				</c:if>
				<c:if test="${empty material.id}">
					<form:input path="code" id="code" cssClass="form-control input-sm" />
				</c:if>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>物料名称</th>
			<td>
				<form:input path="name" cssClass="form-control input-sm"/>
			</td>
		</tr>
		<tr>
			<th>
				<span class="glyphicon glyphicon-asterisk"style="color: red"></span>
			计量单位1</th>
			<td>
				<html:select id="unit" name="unit" classes="form-control input-sm" hideName="unitHelpName">     
					<html:sysOptions condition="unit" checkValue="${material.unit }"></html:sysOptions>    
				</html:select>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>计量单位2</th>
			<td>
					<html:select id="unit_help" name="unit_help" classes="form-control input-sm" hideName="unitName">     
						<html:sysOptions condition="unit" checkValue="${material.unit_help }"></html:sysOptions>    
					</html:select>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>计量换算</th>
			<td><form:input path="conversion" id="conversion" cssClass="form-control input-sm"/><div style="color: red;"><b>（例：1根等于10吨，只需要输入10）</b></div></td>
		</tr>
		<tr>
			<th>
				<span class="glyphicon glyphicon-asterisk"style="color: red"></span>
				状态</th>
			<td>
					<html:select id="state" name="state" classes="form-control input-sm" hideName="unitName">     
						<html:sysOptions condition="state" checkValue="使用"></html:sysOptions>    
					</html:select>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>规格型号</th>
			<td>
				<form:input path="spec" cssClass="form-control input-sm" />
			</td>
		</tr>	
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>说明</th>
			<td >
			<form:textarea path="explain" rows="3" cols="60" cssStyle="resize: none;" cssClass="form-control input-sm"  />
			</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
			<security:authorize ifAnyGranted="ROLE_MATERIALTYPE_ADD,ROLE_MATERIALTYPE_MOD">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/>
			</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" />
			</td>
		</tr>
	</table>
	</form:form>
<script type="text/javascript">
//验证计量单位和辅助计量单位不相同       
jQuery.validator.addMethod("unitHelpRepeat", function(value, element) {       
		var length = value.length;
		var unit = $("select[name='unit']").val();
		if(null != unit && '' != unit){
			return unit != value;
		}else
			return true;
	},
		"辅助计量单位不能与计量单位相同"
);
//验证物资编码最后两位必须是0
jQuery.validator.addMethod("checkCode", function(value, element) {
		if($("#id").val()==""){
		var code = $("input[name='code']").val();
		if(code.length==6 && code.substring(4,6)=='00' && code!='000000'){
			return true;
		}
			return false;
		}else{
			return true;
		}
},
	"物资编码最后两位必须是0且不能全为0且长度为6位"
);
//验证输入换算值，必须有辅助剂计量单位       
jQuery.validator.addMethod("conversionRequired", function(value, element) { 
		var unitHelp = $("select[name='unit_help']").val();
		var conversion = $("input[name='conversion']").val();
		if(unitHelp!= null && unitHelp!=''){
			if(conversion == null || conversion == ''){
				return false;
			}
			return true;
		}else{
			if(conversion == null || conversion == ''){
				return true;
			}
			return false;
		}
	},
		"请选择辅助计量单位或输入计量换算"
);
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
			checkCode:true,
			remote:{
					type:"POST",
					url:"${ctx}/material/repeatCommodityCode.do?id="+$("#id").val(), 
					data:{
						code:function(){
							return $("#ParentCode").val()+$("#code").val();
						}
 				}
			} 
		},
		name: {
			required: true,		
			rangelength:[0,100]
		},
		unit:{
			required: true
		},
		unit_help:{
			unitHelpRepeat: true
		},
		conversion: {
			conversionRequired:true,
			number:true,
			maxlength:20
		},
		state: {
			required: true
		}
	},
	messages: {
		code: {
			required: "请输入物料编码",
			digits:"物料编码只能输入数字",
			remote:"物料编码已存在" 
		},
		name: {
			required: "请输入物料名称",		
			rangelength: "物料名称长度必须介于0和100个字符之间"
		},
		unit: {
			required: "请选择计量单位",
			maxlength: "物料英文名称长度不能大于100个字符"
		},
		unit_help:{
			unitHelpRepeat: "辅助计量单位不能与计量单位相同"
		},
		conversion: {
			conversionRequired:"请选择辅助计量单位或输入计量换算",
			number:"计量换算只能输入数字",
			maxlength:"计量换算长度不能大于20个数字"
		},
		state: {
			required: "请选择状态"
		}
	}
});	
</script>
</body>
</html>
