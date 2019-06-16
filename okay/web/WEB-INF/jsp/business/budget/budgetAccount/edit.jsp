<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑预算科目信息</title>
</head>


<body>
<form:form id="formValidate" commandName="budgetAccount" name="budgetAccount" action="${ctx}/budgetAccount/save.do" method="post">
<form:hidden path="budgetAccountId"/>
	<table id="queryTable" class="table table-condensed">
	    <tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>预算科目编码</th>
			<td><form:input path="budgetAccountCode"  cssClass="form-control input-sm" /></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>预算科目</th>
			<td><form:input path="name"  cssClass="form-control input-sm" /></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>预警比例（%）</th>
			<td><form:input path="warningRatio" cssClass="form-control input-sm"/>%</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>状态</th>
			<td>
			<c:if test="${empty budgetAccount.isValidate}">
			     <html:select id="isValidate" name="isValidate"  classes="form-control input-sm">     
				 <html:sysOptions condition="state" checkValue="使用" ></html:sysOptions>      
				</html:select>
			</c:if>
			<c:if test="${not empty budgetAccount.isValidate}">
			     <html:select id="isValidate" name="isValidate"  classes="form-control input-sm">     
				 <html:sysOptions condition="state" checkValue="${budgetAccount.isValidate}" ></html:sysOptions>      
				</html:select>
			</c:if>	
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>预算说明</th>
			<td>
			<form:textarea path="explain" rows="2" cols="100" cssStyle="resize: none;" cssClass="form-control input-sm"  />
			</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
			<security:authorize ifAnyGranted="ROLE_BUDGETACCOUNT_ADD,ROLE_BUDGETACCOUNT_MOD">
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
	var obj = $("#formValidate").validate({	
		rules: {
			budgetAccountCode: {
				required: true,
				number:true,
			},
			name:{
				required: true,
				maxlength:50,
				remote:{
 					type:"POST",
 					url:"${ctx}/budgetAccount/repeatname.do", 
 					data:{
 						name:function(){
 							return $("#name").val();
 						}
	 				}
				}
			},
			warningRatio: {
				required: true,
				number:true,
				maxlength:3,
				min:0
			},
			explain: {
				maxlength:1000
			}
		},
		messages: {
			budgetAccountCode: {
				required: "请输入预算科目编码",
				number:"请输入正确的数字"
			},
			name: {
				required: "请输入预算科目",
				maxlength:"预算科目长度不能大于50个字符",
				remote:"预算科目已存在"
			},
			warningRatio: {
				required: "请输入预警比例",
				number:"请正确填写预警比例信息",
				maxlength:"预警比例长度不能超过3个数字",
				min:"预警比例不能为负数"
			},
			remark: {
				explain:"预算说明长度不能大于1000个字符"
			}
		}
	});	
</script>
</body>
</html>
