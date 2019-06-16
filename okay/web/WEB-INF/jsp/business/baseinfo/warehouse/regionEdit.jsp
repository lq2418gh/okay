<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑库区信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<form:form id="formValidate" commandName="region" name="region" action="${ctx}/warehouse/saveRegion.do" method="post">
<form:hidden path="warehouseId"/>
<form:hidden path="regionId"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>仓库编码</th>
			<td><form:input path="warehouseCode" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>仓库名称</th>
			<td><form:input path="warehouseName" cssClass="form-control input-sm" readonly="true"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>库区编码</th>
			<c:if test="${empty region.regionCode}">
			<td><form:input path="regionCode" id="regionCode1" cssClass="form-control input-sm" /></td>
			</c:if>
			<c:if test="${not empty region.regionCode}">
			<td><form:input path="regionCode" cssClass="form-control input-sm" readonly="true"/></td>
			</c:if>
		</tr>
		<tr>	
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>库区名称</th>
			<td><form:input path="regionName" cssClass="form-control input-sm"/></td>
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
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>面积（平方米）</th>
			<td><form:input path="area" cssClass="form-control input-sm" /></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
			<td>
			<form:textarea path="remark" rows="2" cols="100" cssStyle="resize: none;" cssClass="form-control input-sm"  />
			</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">				
			<security:authorize ifAnyGranted="ROLE_REGION_ADD,ROLE_REGION_MOD">
				<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/>
			</security:authorize>
				<input type="button" value="取消" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
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
			var mobile = /^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,4}|0\.(?!0+$)[0-9]{1,4})$/;   
			return this.optional(element) || (length == 11 && mobile.test(value));       
		},
			"请正确填写面积"
	);
	// 编码大写   
	jQuery.validator.addMethod("checkCode", function(value, element) {       
			var rule = /^[A-Z]+$/;   
			return this.optional(element) || rule.test(value);       
		},
			"编码必须为大写字母"
	);
	var obj = $("#formValidate").validate({	
		rules: {
			regionCode:{
				required: true,
				maxlength:10,
				remote:{
 					type:"POST",
 					url:"${ctx}/warehouse/repeatRegionCode.do?warehouseCode="+$("#warehouseCode").val(), 
 					data:{
 						regionCode:function(){
 							return $("#regionCode1").val();
 						}
	 				}
				}
			},
			regionName: {
				required: true,		
				maxlength:30,
				remote:{
 					type:"POST",
 					url:"${ctx}/warehouse/repeatRegionName.do?warehouseId="+$("#warehouseId").val()+'&regionId='+$("#regionId").val(), 
 					data:{
 						regionName:function(){
 							return $("#regionName").val();
 						}
	 				}
				}
			},
			area: {
				number:true,
				maxlength:20
			},
			remark: {
				maxlength:400
			}
		},
		messages: {
			regionCode: {
				required: "请输入库区编码",
				maxlength:"库区编码长度不能大于10个字符",
				remote:"库区编码已存在"
			},
			regionName: {
				required: "请输入库区名称",		
				rangelength: "库区名称长度不能大于30个字符",
				remote:"库区名称已存在"
			},
			area: {
				number:"请正确填写面积信息",
				maxlength:"面积不能大于20个数字"
			},
			remark: {
				maxlength:"备注长度不能大于400个字符"
			}
		}
	});	
	</script>
</body>
</html>
