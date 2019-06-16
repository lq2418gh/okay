<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>批量编辑储位信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<script>
$(document).ready(function(){ 
	$('#locationType').change(function(){ 
		if($(this).children('option:selected').val()=="立体"){
			$('#locationCode').val('');
			$('#locationCode').attr("readonly",true);
			$('#jia_no').attr("readonly",false);
			$('#ceng_no').attr("readonly",false);
			$('#wei_no').attr("readonly",false);
		}else{
			$('#locationCode').attr("readonly",false);
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
</head>

<body>
<form:form id="formValidate" commandName="locationForm" name="locationForm" action="${ctx}/warehouse/saveListLocation.do" method="post">
<form:hidden path="regionId"/>
<form:hidden path="warehouseId"/>
<form:hidden path="locationId"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>库区编码</th>
			<td><form:input path="regionCode" cssClass="form-control input-sm" readonly="true"/></td>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>库区名称</th>
			<td><form:input path="regionName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
		<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>储位类型</th>
			<td colspan="3"><form:select path="locationType" cssClass="form-control input-sm" >
					<form:option value="平面">平面</form:option>
					<form:option value="立体">立体</form:option>
			</form:select>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>储位编码</th>
			<td ><form:textarea path="locationCode" id="locationCode" cssClass="form-control input-sm" style="resize:none" cols="40" rows="10"  /></td>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>架/层/位</th>
			<td >
	            <div class="input-group"  style="width:60px"><!-- style="width:45px;resize:none;overflow:hidden" -->
	            	<form:textarea path="jia_no" id="jia_no" cssClass="form-control" style="resize:none" cols="40" rows="10"  readonly="true"/> 
	            </div>
	            <div class="input-group" style="width:60px" >
	            	<form:textarea path="ceng_no" id="ceng_no" cssClass="form-control" style="resize:none" cols="40" rows="10" readonly="true" /> 
	            </div>
	            <div class="input-group"  style="width:60px">
	            	<form:textarea path="wei_no" id="wei_no" cssClass="form-control" style="resize:none" cols="40" rows="10"  readonly="true"/> 
	            </div> 
			</td>
		</tr>

		<tr>	
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>储位名称</th>
			<td colspan="3"><form:textarea path="locationName" id="locationName" cssClass="form-control input-sm" style="resize:none" cols="40" rows="10"  /></td>
		</tr>		
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>状态</th>
			<td ><form:select path="state" cssClass="form-control input-sm" >
					<form:option value="使用">使用</form:option>
					<form:option value="停用">停用</form:option>
				</form:select>
			</td>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>长度</th>
			<td ><form:input path="length" cssClass="form-control input-sm" />米</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>宽度</th>
			<td ><form:input path="width" cssClass="form-control input-sm" />米</td>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>高度</th>
			<td ><form:input path="height" cssClass="form-control input-sm" />米</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>体积限额</th>
			<td ><form:input path="volumnLimit" cssClass="form-control input-sm" />立方米</td>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>承重限额</th>
			<td ><form:input path="weightLimit" cssClass="form-control input-sm" />吨</td>
		</tr>
		<tr>
			<td colspan="4" id="tools">
			<security:authorize ifAllGranted="ROLE_LOCATION_IMP">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/>
			</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
	</form:form>
<script type="text/javascript">
/*$("#locationCode").keydown(function(){
	var text = $("#locationCode").val();
	var newText = text.substring(text.lastIndexOf("\n") + 1);
	if(newText.length != 0 && newText.length % 2 == 0){
		$("#locationCode").val(text + "\n")
	}
});*/
	function formSubmit(){
		if(obj.form()){
			
			document.getElementById("formValidate").submit();
			window.top.document.getElementById('butclose').click();
		}
	}
	// 数字验证       
	jQuery.validator.addMethod("checkpositive", function(value, element) {       
			var length = value.length;   
			var mobile = /^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,4}|0\.(?!0+$)[0-9]{1,4})$/;   
			return this.optional(element) || (length == 11 && mobile.test(value));       
		},
			"请正确填写，您填写的格式有误"
	);
		// 储位编码验证大写字母或数字       
	jQuery.validator.addMethod("checkCode", function(value, element) {  
		 var locationType = $("select[name='locationType']").val(); 
		if(locationType=="平面"){
			
			var location = value.split("\n");
			var length = value.length;  
			var code = /^[A-Z0-9]+$/;  
			for(var item in location ){
				if(!(this.optional(element) || (code.test(location[item]))) ){
					return false;
					} 
			}
			 return true;
			 
		}else{
			return true;
			}
		},
			"请输入大写字母或数字"
	);

	
	// 验证储位编码长度       
	jQuery.validator.addMethod("locationCodeLength", function(value, element) {     
			var location = value.split("\n");
			//var name = $("#locationName").val().split("\n");
			//if(location.length!=name.length){
			//	return false;
			//}
			for(var item in location ){
				if(location[item].length > 10){
					return false;
				}
			}
			return true;     
		},
			"请正确填写，您填写的格式有误"
	);
	jQuery.validator.addMethod("locationNameNum", function(value, element) {     
		var name = value.split("\n");
		var location = $("#locationCode").val().split("\n");
		if(location.length!=name.length){
			return false;
		}
		return true;     
	},
		"储位名称数量小于储位编码数量"
);
	jQuery.validator.addMethod("locationNameLength", function(value, element) {     
		var name = value.split("\n");
		var location = $("#locationCode").val().split("\n");
		
		for(var item in name ){
			if(name[item].length > 10){
				return false;
			}
		}
		return true;     
	},
		"请正确填写，您填写的格式有误"
);
	// 验证储位编码是否重复       
	jQuery.validator.addMethod("locationCodeRepeat", function(value, element) {     
			var location = value.split("\n");
			for(i=0;i<$(location).length;i++){
				for(j=i+1;j<$(location).length;j++){
					if(location[j]===location[i]) {  
						return false;  				
					}
				}
			}
			return true;  	
		},
			"请正确填写，您填写的格式有误"
	);
	jQuery.validator.addMethod("checkNo", function(value, element) {
		var rule = /^[A-Z0-9]+$/;   
		var locationType = $("select[name='locationType']").val(); 
		if(locationType=="平面"){
			return true;
		}else{
			$("textarea[name='locationCode']").val("");
			var jia_no = $("textarea[name='jia_no']").val().split("\n"); 
			var ceng_no = $("textarea[name='ceng_no']").val().split("\n"); 
			var wei_no = $("textarea[name='wei_no']").val().split("\n");
			if(jia_no.length!=ceng_no.length||ceng_no.length!=wei_no.length||jia_no.length!=wei_no.length){
				return false;
			}
			for(var item in jia_no ){
				if(jia_no[item].length > 10||ceng_no[item].length > 10||wei_no[item].length > 10){
					return false;
				}
				if(jia_no[item]!=''&&ceng_no[item]!=''&&wei_no[item]!=''){
					if(rule.test(jia_no[item])&&rule.test(ceng_no[item])&&rule.test(wei_no[item])){
						var v = $("textarea[name='locationCode']").val();
						if(v==""){
							$("textarea[name='locationCode']").val(jia_no[item] +"_"+ ceng_no[item] +"_"+ wei_no[item]); 	
						}else{
							$("textarea[name='locationCode']").val(v+"\n"+jia_no[item] +"_"+ ceng_no[item] +"_"+ wei_no[item]); 
						}
					}else{
						return false;
					}
				}else{
					return false;
				}
			} 
			return true;
		}
	},
		"*"
	);
	
	var obj = $("#formValidate").validate({	
		rules: {
			locationCode:{
				required: true,
				checkCode:true,
				locationCodeLength:true,
				locationCodeRepeat:true,
				remote:{
 					type:"POST",
 					url:"${ctx}/warehouse/repeatLocationCodeList.do?regionCode="+$("#regionCode").val(), 
 					data:{
 						locationCode:function(){
 							return $("#locationCode").val();
 						}
	 				}
				}
			},
			locationName: {
				locationNameLength:true,
				locationNameNum:true,
				required: true
			},
			oldLocationCode: {	
				maxlength:30
			},
			length: {
				number:true,
				maxlength:20
			},
			width: {
				number:true,
				maxlength:20
			},
			height: {
				number:true,
				maxlength:20
			},
			volumnLimit: {
				number:true,
				maxlength:20
			},
			weightLimit: {
				number:true,
				maxlength:20
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
				checkCode:"请输入大写字母或数字",
				locationCodeLength:"请正确填写，您填写的格式有误",
				locationCodeRepeat:"储位编码有重复请重新填写",
				remote:"储位编码已存在"
			},
			locationName: {
				required: "请输入储位名称"
			},
			oldLocationCode: {	
				maxlength:"原储位编码长度不能大于30个字符"
			},
			length: {
				number:"请正确填写储位长度信息",
				maxlength:"储位长度不能大于20个数字"
			},
			width: {
				number:"请正确填写储位宽度信息",
				maxlength:"储位宽度不能大于20个数字"
			},
			height: {
				number:"请正确填写储位高度信息",
				maxlength:"储位高度不能大于20个数字"
			},
			volumnLimit: {
				number:"请正确填写储位体积限额",
				maxlength:"储位体积不能大于20个数字"
			},
			weightLimit: {
				number:"请正确填写储位承重限额",
				maxlength:"储位承重不能大于20个数字"
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
