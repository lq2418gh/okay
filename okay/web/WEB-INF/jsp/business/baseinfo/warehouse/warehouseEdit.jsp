<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑仓库信息</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<form:form id="formValidate" commandName="warehouse" name="warehouse" action="${ctx}/warehouse/saveWarehouse.do" method="post">
<form:hidden path="warehouseId"/>
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>仓库编码</th>
			<c:if test="${empty warehouse.warehouseId}">
			<td><form:input path="warehouseCode" id="warehouseCode1" cssClass="form-control input-sm" /></td>
			</c:if>
			<c:if test="${not empty warehouse.warehouseId}">
			<td><form:input path="warehouseCode" cssClass="form-control input-sm" readonly="true"/></td>
			</c:if>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>仓库名称</th>
			<td><form:input path="warehouseName" cssClass="form-control input-sm"/></td>
		</tr>
		
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>省份</th>
			<td>
				<html:select id="province" name="province" classes="form-control input-sm" >     
					<html:sysOptions condition="province" checkValue="${warehouse.province}"></html:sysOptions>    
				</html:select>
			</td>
		</tr>
		
		<tr>	
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>详细地址</th>
			<td><form:input path="place" id="place" cssClass="form-control input-sm" /></td>
		</tr>
		
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>业主</th>
			<td><form:input path="warehouseOwner" id="warehouseOwner" cssClass="form-control input-sm" /></td>
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
			<td><form:input path="area" id="area" cssClass="form-control input-sm" /></td>
		</tr>
		<tr>	
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>联系人</th>
			<td><form:input path="contacts" id="contacts" cssClass="form-control input-sm" /></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>联系电话</th>
			<td><form:input path="contactNumber" id="contactNumber" cssClass="form-control input-sm" /></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
			<td>
			<form:textarea path="remark" rows="2" cols="100" cssStyle="resize: none;" cssClass="form-control input-sm"  />
			</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
			<security:authorize ifAnyGranted="ROLE_WAREHOUSE_ADD,ROLE_WAREHOUSE_MOD">
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
	// 座机验证       
	jQuery.validator.addMethod("isTel", function(value, element) { 
			var length = value.length;   
			//var mobile = /^(\d{2,5}-\d{7,8})$/;  
			var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/; 
			//var mobile = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;   
			return this.optional(element) || (length == 11 && mobile.test(value));       
		},
			"请正确填写手机号码"
	);
	// 传真验证       
	/* jQuery.validator.addMethod("isFaxNo", function(value, element) {     
			var length = value.length;   
			var mobile = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;   
			return this.optional(element) || (length <= 12 && mobile.test(value));       
		},
			"请正确填写传真号码,如022xxxxxxxx"
	); */
	// 数字验证       
	jQuery.validator.addMethod("checkpositive", function(value, element) {       
			var length = value.length;   
			var mobile = /^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,4}|0\.(?!0+$)[0-9]{1,4})$/;   
			return this.optional(element) || (length == 11 && mobile.test(value));       
		},
			"请正确填写面积"
	);
	// 编码大写数字       
	jQuery.validator.addMethod("checkCode", function(value, element) {       
			var rule = /^[A-Z0-9]+$/;   
			return this.optional(element) || rule.test(value);       
		},
			"编码必须为大写字母或数字"
	);
	var obj = $("#formValidate").validate({	
		rules: {
			warehouseCode:{
				required: true,
				maxlength:10,
				remote:{
 					type:"POST",
 					url:"${ctx}/warehouse/repeatWarehouseCode.do", 
 					data:{
 						warehouseCode:function(){
 							return $("#warehouseCode1").val();
 						}
	 				}
				}
			},
			warehouseName: {
				required: true,		
				maxlength:30,
				remote:{
 					type:"POST",
 					url:"${ctx}/warehouse/repeatWarehouseName.do?warehouseId="+$("#warehouseId").val(), 
 					data:{
 						warehouseName:function(){
 							return $("#warehouseName").val();
 						}
	 				}
				}
			},
			province:{
				required: true,		
			},

			warehouseOwner: {
				maxlength:100
			},

			area: {
				number:true,
				maxlength:20,
				min:0
			},
			contacts: {
				maxlength:20
			},
			contactNumber: {
				isTel:true
			},
			/* faxNo: {
				isFaxNo:true
			}, */
			remark: {
				maxlength:400
			}
		},
		messages: {
			warehouseCode: {
				required: "请输入仓库编码",
				maxlength:"仓库编码长度不能大于10个字符",
				remote:"仓库编码已存在"
			},
			warehouseName: {
				required: "请输入仓库名称",		
				rangelength: "仓库名称长度不能大于30个字符",
				remote:"仓库名称已存在"
			},
			province:{
				required: "请输入省份"		
			},

			warehouseOwner: {
				maxlength:"仓库业主长度不能大于100个字符"
			},

			area: {
				number:"请正确填写面积信息",
				maxlength:"面积不能大于20个数字",
				min:"面积不能为负数"
			},
			contacts: {
				maxlength:"仓库联系人长度不能大于20个字符"
			},
			contactNumber: {
				isTel:"请正确填写手机号码"
			},
			remark: {
				maxlength:"备注长度不能大于400个字符"
			}
		}
	});	
</script>
</body>
</html>
