<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>

<body>
	<form:form id="formValidate" commandName="userForm" action="${ctx}/user/editUser.do?companyId=${companyId }" method="post" enctype="multipart/form-data"  >
	<table id="queryTable" class="table table-condensed">
		<c:if test="${userForm.userInfoId!=null }">
		<tr>
			<th>用户名</th>
			<td>
				<form:hidden path="userInfoId"/>
				<form:input type="text" id="user.userName" path="user.userName" cssClass="form-control input-sm" readonly="true"/>
			</td>
		</tr>
		</c:if>
		<c:if test="${userForm.userInfoId==null }">
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 用户名</th>
			<td>
				<form:input type="text" id="userName" path="userName" cssClass="form-control input-sm" maxlength="20"/>
			</td>
		</tr>
		</c:if>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 姓名</th>
			<td><form:input type="text" id="realName" path="realName" cssClass="form-control input-sm" maxlength="10"/></td>
		</tr>
		<tr>
			<th>性别</th>
			<td>
            	<form:select path="sex" cssClass="form-control input-sm" >
					<form:option value="1">男</form:option>
					<form:option value="0">女</form:option>
				</form:select>
			</td>
		</tr>
		<tr>
			<th>工号</th>
			<td><form:input type="text" id="workNo" path="workNo" cssClass="form-control input-sm" maxlength="20"/></td>
		</tr>
		<tr>
			<th>专业</th>
			<td><form:input type="text" id="specialty" path="specialty" cssClass="form-control input-sm" maxlength="20"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>职位</th>
			<td>
			 	<html:select id="position" name="position" classes="form-control input-sm">     
		     		<html:sysOptions condition="position" checkValue="${userForm.position}" ></html:sysOptions>      
		     		<!--  a85e6085a37449aabffd1655de2fca96 -->
		    	</html:select>
			</td>
		</tr>
		<tr>
			<th>私人邮箱</th>
			<td><form:input type="text" id="email" path="email" cssClass="form-control input-sm" maxlength="30"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>工作邮箱</th>
			<td><form:input type="text" id="workEmail" path="workEmail" cssClass="form-control input-sm" maxlength="30"/></td>
		</tr>
		<tr>
			<th>私人电话</th>
			<td><form:input type="text" id="phone" path="phone" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>工作电话</th>
			<td><form:input type="text" id="workPhone" path="workPhone" cssClass="form-control input-sm" maxlength="20"/></td>
		</tr>
		<tr>
			<th>座机/传真</th>
			<td><form:input type="text" id="tel" path="tel" cssClass="form-control input-sm" maxlength="20"/></td>
		</tr>
		<tr>
			<th> 地址</th>
			<td><form:input type="text" id="address" path="address" cssClass="form-control input-sm" maxlength="30"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<security:authorize ifAnyGranted="ROLE_SYS_USER_ADD,ROLE_SYS_USER_MOD">
				<input type="button" class="btn btn-primary btn-xs" value="保存" onClick="formSubmit();">
				<input type="reset" class="btn btn-primary btn-xs" value="重置" >
				</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
			</td>
		</tr>
	</table>
	</form:form>
	<c:if test="${empty userForm.userInfoId}" var="ID">
		<script type="text/javascript">
		//表单验证
		var obj = $("#formValidate").validate({	
			rules: {
				userName:{
					required: true,
					rangelength:[4,20],
					remote:{
	 					type:"POST",
	 					url:"${ctx}/user/checkName.do", 
	 					data:{
	 						userName:function(){
	 							return $("#userName").val();
	 						}
		 				}
					}
				},
				realName: {
					required: true,		
					rangelength:[2,10],
					remote:{
	 					type:"POST",
	 					url:"${ctx}/user/checkRealName.do", 
	 					data:{
	 						userName:function(){
	 							return $("#realName").val();
	 						}
		 				}
					}
				},
				workEmail: {
					required: true,
					rangelength:[6,40], 
					email:true
				},workPhone: {
					required: true,
					isMobile:true 
				},
				/* sign_password:{
					required: true,
					rangelength:[1,10]
				}, */
				position:{
					required: true
				}
				/* pic:{
					required: true
				} */
			},
			messages: {
				userName: {
					required: "请输入用户名",
					rangelength: "长度必须介于4和20之间",
					remote:"用户名已存在"
				},
				realName: {
					required: "请输入姓名",		
					rangelength: "姓名长度不正确",
					remote:"姓名已存在"
				},
				workEmail: {
					required: "请输入电子邮箱",	
					rangelength: "长度必须介于6和40之间",
					email: "请输入正确格式的电子邮箱"
				},workPhone: {
					required: "请输入手机号码",
					isMobile: "请正确填写您的手机号码"
				},
				/* sign_password: {
					required: "请输入签名密码",
					rangelength: "长度必须介于1和10之间"
				}, */
				position:{
					required: "请输入职位"
				},
				/* pic:{
					required: "请上传签名"
				} */
			}
		});
		</script>
	</c:if>
	<c:if test="${!ID}">
	<script type="text/javascript">
	var obj=$("#formValidate").validate({	
		rules: {
			userName:{
				required: true,
				rangelength:[4,20],
				remote:{
 					type:"POST",
 					url:"${ctx}/user/checkName.do", 
 					data:{
 						userName:function(){
 							return $("#userName").val();
 						}
	 				}
				}
			},
			realName: {
				required: true,		
				rangelength:[2,10] 
			},
			workEmail: {
				required: true,
				rangelength:[6,40], 
				email:true
			},workPhone: {
				required: true,
				isMobile:true 
			},
			sign_password:{
				required: true,
				rangelength:[1,10]
			},
			position:{
				required: true
			}
		},
		messages: {
			userName: {
				required: "请输入用户名",
				rangelength: "长度必须介于4和20之间",
				remote:"用户名已存在"
			},
			realName: {
				required: "请输入姓名",		
				rangelength: "姓名长度不正确"
			},
			workEmail: {
				required: "请输入电子邮箱",	
				rangelength: "长度必须介于6和40之间",
				email: "请输入正确格式的电子邮箱"
			},workPhone: {
				required: "请输入手机号码",
				isMobile: "请正确填写您的手机号码"
			},
			sign_password: {
				required: "请输入签名密码",
				rangelength: "长度必须介于1和10之间"
			},
			position:{
				required: "请输入职位"
			}
		}
	});
	</script>
	</c:if>
	<script type="text/javascript">
			//点击保存按钮，提交表单，然后关闭遮罩
			function formSubmit(){
				if(obj.form()){
					/* var haiyang = $("#HaiyangUserCode").val();
					var gufen = $("#GufenUserCode").val(); */
					/* if((haiyang == null || haiyang == "") && (gufen == null || gufen == "")){
						alert(" 请至少填写一个K3用户编码！");
					}else{ */
						document.getElementById("formValidate").submit();
						window.top.document.getElementById('butclose').click();						
					/* } */
				}
			}
			// 手机号码验证       
			jQuery.validator.addMethod("isMobile", function(value, element) {       
					var length = value.length;   
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;   
					return this.optional(element) || (length == 11 && mobile.test(value));       
				},
					"请正确填写您的手机号码"
			);
	</script>
</body>
</html>