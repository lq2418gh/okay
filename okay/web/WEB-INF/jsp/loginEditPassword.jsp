<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户修改密码</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>

<body  onload="init()">
	<div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">修改密码</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form:form id="formValidate" commandName="userForm" action="${ctx}/user/savePassword.do" method="post" enctype="multipart/form-data"  >
	<table id="queryTable" class="table table-condensed">
		<tr>
			<th>输入旧密码</th>
			<td>
				<input type="hidden" id="userId" name="userId" value="${userId}"/>
				<input type="password" id="passWord" name="passWord" class="form-control input-sm" />
			</td>
		</tr>
		<tr>
			<th>输入新密码</th>
			<td>
				<input type="password" id="newPassWord" name="newPassWord" class="form-control input-sm" />
				密码规则：密码中必须包含大小写字母和数字,并且密码长度要在6-20位之间
			</td>
		</tr>
		<tr>
			<th>确认新密码</th>
			<td>
				<input type="password" id="confirmPassWord" name="confirmPassWord" class="form-control input-sm" />
			</td>
		</tr>
		<tr>
			<td colspan="2" id="tools">
				<security:authorize ifAnyGranted="ROLE_USER">
				<input type="button" class="btn btn-primary btn-xs" value="保存" onclick="formSubmit();">
				<input type="reset" class="btn btn-primary btn-xs" value="重置"  onclick="resetControl()" >
				</security:authorize>
				<input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="top.location.replace('${ctx}/j_spring_security_logout')" /> 
			</td>
		</tr>
	</table>
	</form:form>
              </div>
            </div>
          </div>
        </div>
      </div>

	
	<script type="text/javascript">
			//点击保存按钮，提交表单，然后关闭遮罩
		function formSubmit(){
			if (obj.form()) {
				$.ajax({
					type:"POST",
					url:"${ctx}/user/checkPassWord.do",
					data:{
						userId:$("#userId").val(),
						passWord:$("#passWord").val()
					},
					success:function(data){
						if(data=='true'){
							if($("#newPassWord").val()==$("#confirmPassWord").val()){
								document.getElementById("formValidate").submit();
	//							alert("请使用新密码重新登录！");
	//							top.location.replace('${ctx}/j_spring_security_logout');
	//							window.top.document.getElementById('butclose').click();
							}else{
								alert("两次新密码输入不一致，请重输！");
							}
						}else{
							alert("密码输入错误，请重输！");
						}
					}
				});
			}
		}
			
			var obj = $("#formValidate").validate({	
				rules: {
					passWord:{
						required: true
					},
					newPassWord: {
						required: true,
						rangelength:[6,20],
						validatePassWord:true
					},
					confirmPassWord: {
						required: true,
						equalTo: '#newPassWord'
					}
				},
				messages: {
					passWord: {
						required: "请输入旧密码"
						
					},
					newPassWord: {
						required: "请输入新密码",
						rangelength:"新密码长度必须在6-20位之间",
						validatePassWord:"新密码格式错误"
					},
					confirmPassWord: {
						required: "请输入确认新密码",
						equalTo: "请再次输入新密码"
					}
				}
			});
			$.validator.addMethod("validatePassWord",function(value,element){
				 var count = 0; 
				 if(/[`~!@#$^&*()_+=|\\\[\]\{\}:;'\,.<>/?]/.test(value)){
						return false;
					}
				 if(/[0-9]/.test(value)){
					count++;
					}					
				if(/[a-z]/.test(value)){
					count++;
				}
				if(/[A-Z]/.test(value)){
					count++;
				}
				
				
				 if(count >= 3){
					 return true;
				 } 					 
				 else{
					 return false;
				 }
					 
		        }, "新密码格式错误，密码中必须包含大小写字母和数字,并且密码长度要在6-20位之间！");     
				
			function init(){
				alert("您的密码为初始密码，请修改密码后，重新登录！");
			}
 	</script>
</body>
</html>
