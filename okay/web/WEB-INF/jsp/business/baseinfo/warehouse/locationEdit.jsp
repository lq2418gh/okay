<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑储位信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>
<script>
$(document).ready(function(){ 
$('#locationType').change(function(){ 
if($(this).children('option:selected').val()=="立体"){
	$('#locationCode1').val('');
	$('#locationCode1').attr("readonly",true);
	$('#jia_no').attr("readonly",false);
	$('#ceng_no').attr("readonly",false);
	$('#wei_no').attr("readonly",false);
}else{
	$('#locationCode1').attr("readonly",false);
	$('#jia_no').val('');
	$('#ceng_no').val('');
	$('#wei_no').val('');
	$('#jia_no').attr("readonly",true);
	$('#ceng_no').attr("readonly",true);
	$('#wei_no').attr("readonly",true);
	}
}) 
}) 

</script>
<body>
<form:form id="formValidate" commandName="locationForm" name="locationForm" action="${ctx}/warehouse/saveLocation.do" method="post">
<form:hidden path="regionId"/>
<form:hidden path="warehouseId"/>
<form:hidden path="locationId"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>库区编码</th>
			<td><form:input path="regionCode" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>库区名称</th>
			<td><form:input path="regionName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>储位类型</th>
			<td>
             <c:if test="${locationForm.locationId ne null}">
             <form:input path="locationType" cssClass="form-control input-sm" readonly="true" />
             </c:if>
             <c:if test="${locationForm.locationId eq null}">
            <form:select path="locationType" cssClass="form-control input-sm" >
					<form:option value="平面">平面</form:option>
					<form:option value="立体">立体</form:option>
			</form:select>
             </c:if>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>储位编码</th>
			<td>
			<c:if test="${empty locationForm.locationId}">
            <form:input path="locationCode" id="locationCode1" cssClass="form-control input-sm"  maxlength="2"/>
			</c:if>
			<c:if test="${not empty locationForm.locationId}">
            <form:input path="locationCode"  cssClass="form-control input-sm" readonly="true" />
            </c:if>
            </td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>架号/层号/位号</th>
			<td>
			<c:if test="${empty locationForm.locationId}">
            <div class="input-group"  style="width:60px">
            <form:input path="jia_no"  cssClass="form-control input-sm" style="width:50px;" readonly="true" maxlength="2"/>
             </div>
            <div class="input-group"  style="width:60px" >
            <form:input path="ceng_no"  cssClass="form-control input-sm" style="width:50px" readonly="true" maxlength="2"/>
            </div>
            <div class="input-group" style="width:60px" >
            <form:input path="wei_no"  cssClass="form-control input-sm" style="width:50px" readonly="true" maxlength="2"/>
            </div> 
			</c:if>
			<c:if test="${not empty locationForm.locationId}">
            <div class="input-group" style="width:60px">
            <input name="jia_no1"  class="form-control input-sm" style="width:50px;" readonly="readonly" value="${locationForm.jia_no }"/>
            </div>
            <div class="input-group"  style="width:60px">
            <input name="ceng_no1"  class="form-control input-sm" style="width:50px" readonly="readonly" value="${locationForm.ceng_no }"/>
            </div>
            <div class="input-group" style="width:60px" >
            <input name="wei_no1"  class="form-control input-sm" style="width:50px" readonly="readonly" value="${locationForm.wei_no }"/>
            </div>
            </c:if>
            </td>
		</tr>
		<tr>	
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>储位名称</th>
			<td><form:input path="locationName" cssClass="form-control input-sm"/></td>
		</tr>		
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>状态</th>
			<td><form:select path="state" cssClass="form-control input-sm" >
					<form:option value="使用">使用</form:option>
					<form:option value="停用">停用</form:option>
				</form:select>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>长度</th>
			<td><form:input path="length" cssClass="form-control input-sm" />米</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>宽度</th>
			<td><form:input path="width" cssClass="form-control input-sm"/>米</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>高度</th>
			<td><form:input path="height" cssClass="form-control input-sm" />米</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>体积限额</th>
			<td><form:input path="volumnLimit" cssClass="form-control input-sm" />立方米</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>承重限额</th>
			<td><form:input path="weightLimit" cssClass="form-control input-sm" />吨</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
			<security:authorize ifAnyGranted="ROLE_LOCATION_ADD,ROLE_LOCATION_MOD">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/>
			</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
	</form:form>
<script type="text/javascript">
	function formSubmit(){
		if(obj.form()){
			document.getElementById("formValidate").submit();
			window.top.document.getElementById('butclose').click();
		}
	}
	// 数字验证       
	jQuery.validator.addMethod("checkpositive", function(value, element) {       
			var length = value.length;   
			var mobile = /^[1-9][0-9]{0,14}$|^(?:[1-9][0-9]{0,14}\.[0-9]{1,4}|0\.(?!0+$)[0-9]{1,4})$/;   
			return this.optional(element) || (mobile.test(value));       
		},
			"请正确填写，您填写的格式有误"
	);
	// 储位编码验证大写字母或数字       
	jQuery.validator.addMethod("checkCode", function(value, element) {   
		 var locationType = $("select[name='locationType']").val(); 
		if(locationType=="平面"){
			var length = value.length;  
			var code = /^[A-Z0-9]+$/;   
			return this.optional(element) || (code.test(value));    
		}else{
			return true;
			}
		},
			"请输入大写字母或数字"
	);
	jQuery.validator.addMethod("checkNo", function(value, element) { 
		var rule = /^[A-Z0-9]+$/;   
		var locationType = $("select[name='locationType']").val(); 
		if(locationType=="平面"){
			return true;
		}else{
			var jia_no = $("input[name='jia_no']").val(); 
			var ceng_no = $("input[name='ceng_no']").val(); 
			var wei_no = $("input[name='wei_no']").val(); 
			if(jia_no!=''&&ceng_no!=''&&wei_no!=''){
				if(rule.test(jia_no)&&rule.test(ceng_no)&&rule.test(wei_no)){
					$("input[name='locationCode']").val(jia_no+"_"+ceng_no+"_"+wei_no); 
					return true;
				}
				return false;
			}
			return false;
		}
	},
		"*"
	);
	var obj = $("#formValidate").validate({	
		rules: {
			locationCode:{
				required: true,
				checkCode:true,
				maxlength:10,
				remote:{
 					type:"POST",
 					url:"${ctx}/warehouse/repeatLocationCode.do?regionCode="+$("#regionCode").val(), 
 					data:{
 						locationCode:function(){
 							return $("#locationCode1").val();
 						}
	 				}
				}
			},
			locationName: {
				required: true,		
				maxlength:30
			},
			oldLocationCode: {	
				maxlength:30
			},
			length: {
				number:true,
				maxlength:20,
				checkpositive:true
			},
			width: {
				number:true,
				maxlength:20,
				checkpositive:true
			},
			height: {
				number:true,
				maxlength:20,
				checkpositive:true
			},
			volumnLimit: {
				number:true,
				maxlength:20,
				checkpositive:true
			},
			weightLimit: {
				number:true,
				maxlength:20,
				checkpositive:true
			},
			jia_no: {
				checkNo: true
			},
			ceng_no: {
				checkNo: true
			},
			wei_no: {
				checkNo: true
			}
		},
		messages: {
			locationCode: {
				required: "请输入储位编码",
				maxlength:"储位编码长度不能大于10个字符",
				remote:"储位编码已存在",
				checkCode:"请输入大写字母或数字"
			},
			locationName: {
				required: "请输入储位名称",		
				maxlength: "储位名称长度不能大于30个字符"
			},
			oldLocationCode: {	
				maxlength:"原储位编码长度不能大于30个字符"
			},
			length: {
				number:"请正确填写储位长度信息",
				maxlength:"储位长度不能大于20个数字",
				checkpositive:"只可输入小数点后4位"
			},
			width: {
				number:"请正确填写储位宽度信息",
				maxlength:"储位宽度不能大于20个数字",
				checkpositive:"只可输入小数点后4位"
			},
			height: {
				number:"请正确填写储位高度信息",
				maxlength:"储位高度不能大于20个数字",
				checkpositive:"只可输入小数点后4位"
			},
			volumnLimit: {
				number:"请正确填写储位体积限额",
				maxlength:"储位体积不能大于20个数字",
				checkpositive:"只可输入小数点后4位"
			},
			weightLimit: {
				number:"请正确填写储位承重限额",
				maxlength:"储位承重不能大于20个数字",
				checkpositive:"只可输入小数点后4位"
			},
			jia_no: {
				checkNo: "*"
			},
			ceng_no: {
				checkNo: "*"
			},
			wei_no: {
				checkNo: "请输入大写字母或数字"
			}
		}
	});	
	
	</script>
</body>
</html>
