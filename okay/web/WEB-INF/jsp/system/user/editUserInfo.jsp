<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户信息页</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>

<body>
	<form:form id="formValidate" commandName="userForm" action="${ctx}/user/editInfo.do" method="post" enctype="multipart/form-data"  >
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>用户名</th>
			<td>
				<form:hidden path="userInfoId"/>
				<form:hidden path="user.userId"/>
				<form:input type="text" id="user.userName" path="user.userName" cssClass="form-control input-sm" readonly="true"/>
			</td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span> 姓名</th>
			<td><form:input type="text" id="realName" path="realName" cssClass="form-control input-sm"/></td>
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
			<td><form:input type="text" id="workNo" path="workNo" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>专业</th>
			<td><form:input type="text" id="specialty" path="specialty" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>私人邮箱</th>
			<td><form:input type="text" id="email" path="email" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>工作邮箱</th>
			<td><form:input type="text" id="workEmail" path="workEmail" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>私人电话</th>
			<td><form:input type="text" id="phone" path="phone" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>工作电话</th>
			<td><form:input type="text" id="workPhone" path="workPhone" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th>座机/传真</th>
			<td><form:input type="text" id="tel" path="tel" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<th> 地址</th>
			<td><form:input type="text" id="address" path="address" cssClass="form-control input-sm"/></td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<security:authorize ifAnyGranted="ROLE_SYS_USER_ADD,ROLE_SYS_USER_MOD,ROLE_USER">
				<input type="button" class="btn btn-primary btn-xs" value="保存" onclick="formSubmit();">
				<input type="button" class="btn btn-primary btn-xs" value="修改密码" onclick="editPassword();">
				<input type="reset" class="btn btn-primary btn-xs" value="重置"  onclick="resetControl()" >
				</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.top.document.getElementById('butclose').click()" /> 
				<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none"></button>
			</td>
		</tr>
	</table>
	</form:form>
	<script type="text/javascript">
			//点击保存按钮，提交表单，然后关闭遮罩
			function formSubmit(){
				if(obj.form()){
					document.getElementById("formValidate").submit();
					window.top.document.getElementById('butclose').click();
				}
			}
			function editPassword(){
				modal(900,500,'${ctx}/user/editPassword.do?userId=${userForm.user.userId}');	
			}
			
			function modal(width,height,url){
				window.document.getElementById("a").src=url;
				window.document.getElementById("modal-dialog").style.width=width+"px";
				window.document.getElementById("modal-body").style.height=height+"px";
				window.document.getElementById("modal").click();
			}

			// 手机号码验证       
			jQuery.validator.addMethod("isMobile", function(value, element) {       
					var length = value.length;   
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;   
					return this.optional(element) || (length == 11 && mobile.test(value));       
				},
					"请正确填写您的手机号码"
			);
			//表单验证
			var obj = $("#formValidate").validate({	
				rules: {
					userName:{
						required: true,
						rangelength:[6,10],
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
						rangelength:[6,20], 
						email:true
					},
					workPhone: {
						required: true,
						isMobile:true 
					}
				},
				messages: {
					userName: {
						required: "请输入用户名",
						rangelength: "长度必须介于6和10之间",
						remote:"用户名已存在"
					},
					realName: {
						required: "请输入姓名",		
						rangelength: "姓名长度不正确"
					},
					workEmail: {
						required: "请输入电子邮箱",	
						rangelength: "长度必须介于6和20之间",
						email: "请输入正确格式的电子邮箱"
					},
					workPhone: {
						required: "请输入手机号码",
						isMobile: "请正确填写您的手机号码"
					}
				}
			});
	</script>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div id="modal-dialog" class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display:none">关闭</button>
      </div>
      <div class="modal-body" id="modal-body">
       <iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
</body>
</html>
