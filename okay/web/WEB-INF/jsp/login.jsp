<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	   	<title>系统首页</title>
	   	<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0"> 
		<link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${ctx}/css/skins/square/blue.css" >
		<script src="${ctx}/js/jquery-1.10.1.js" type="text/javascript" ></script> 	
		<script src="${ctx}/js/bootstrap.min.js" type="text/javascript" ></script>
		<script src="${ctx}/js/icheck.js" type="text/javascript" ></script>
		<script src="${ctx}/js/jquery.base64.js" type="text/javascript" ></script>	
		<style type="text/css">
			body {
				width:100%;
				height:400px;
				margin: 0px;
				padding: 0px;
			}
			a{
				font-size: 12px;
				color: #ffffff;
				text-decoration: none;	
			}
		</style>
		<script>
		$(window).resize(function(){
		  	window.location.href=window.location.href;
		});
		$(window).load(function() {
			  //获取分辨率的高度
			var height = $(document.body).outerHeight(true);
	        //div填充高度
	        $("body").css("height",height+"px");
		});
		//hours为空字符串时,cookie的生存期至浏览器会话结束。hours为数字0时,建立的是一个失效的cookie,这个cookie会覆盖已经建立过的同名、同path的cookie（如果这个cookie存在）。
		function setCookie(name,value){
		  var name = name;
		  var value = value;
		  var expires = new Date();
		  expires.setFullYear(expires.getFullYear() + 1);
		  _expires = ";expires=" + expires.toUTCString() + ";path=/;";
		  document.cookie = name + "=" + value + _expires;
		}
		//获取cookie值
		function getCookieValue(name){
		  var name = name;
		  //读cookie属性，这将返回文档的所有cookie
		  var allcookies = document.cookie;    
		  //查找名为name的cookie的开始位置
		   name += "=";
		  var pos = allcookies.indexOf(name);  
		  //如果找到了具有该名字的cookie，那么提取并使用它的值
		  if (pos != -1){                       //如果pos值为-1则说明搜索"version="失败
		    var start = pos + name.length;         //cookie值开始的位置
		    var end = allcookies.indexOf(";",start);    //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置
		    if (end == -1) end = allcookies.length;    //如果end值为-1说明cookie列表里只有一个cookie
		    var value = allcookies.substring(start,end); //提取cookie的值
		    return (value);              //对它解码   
		  }else{
			  return "";                //搜索失败，返回空字符串
		  }
		}
		function deleteCookie(name){
			var name = escape(name);
			var expires = new Date(0);
			document.cookie = name + "="+ ";expires=" + expires.toUTCString() + ";path=/";
		}

		window.onload = function(){
			//分析cookie值，显示上次的登陆信息
			var userNameValue = getCookieValue("userName");
			$("#username").val(userNameValue);
			var passwordValue = getCookieValue("password");
			if(passwordValue){
				$("#password").val(atob(passwordValue));				
			}
		}
		</script>
	</head>
  
	<body onload="checkParent();" style="background: #369;">		
		<img alt="" src="${ctx}/images/loginbg.png" style="position: absolute;top: 0;width:100%;height:100%;z-index: -1">
		<table width="100%" height="300" style="background-position;margin-top:100px;" class="table table-condensed">
			<tr>
				<td align="center" style="border-top-width: 0px;">
					<!--  <img src="${ctx}/images/logoBorder.png" style="width:330px;height:56px;margin-bottom:40px;margin-top:90px"/>
					<img src="${ctx}/images/name.png" style="margin-bottom:50px;margin-top:100px" />-->
					<form id="login" method="post" action="${ctx }/<c:url value='j_spring_security_check'/>">
					<table height="280" class="table table-condensed" style="width: 30%;background: url('${ctx}/images/namebg.png') repeat">
						<tr>
							<td align="right" style="vertical-align:top; border-top-width: 0px;">
							</td>
						</tr>
		       			<tr>
		          			<td align="center" style="border-top-width: 0px;"><input id="username" name="username" placeholder="用户名" class="form-control input-sm" style="width: 200px;" tabindex="1" accesskey="n" type="text" value='' size="15" autocomplete="false"/></td>
		        		</tr>
		        		<tr>
		          			<td align="center" style="border-top-width: 0px;"><input id="password" name="password" placeholder="密码" class="form-control input-sm" style="width: 200px;" tabindex="2" accesskey="p" type="password" value="" size="15" autocomplete="off" /></td>
		    			</tr>
		          		<tr>
		          			<td align="center" style="border-top-width: 0px;">
		          				<input type='text' id="j_captcha" name='j_captcha' placeholder="验证码" class="form-control input-sm" style="width:60px;float:left;margin-left: 110px;" size='5'  tabindex="3" /> 
            					<img id="captchaImg" src="<c:url value="/jcaptcha.jpg"/>"  width="80px" height="30px" onclick="refreshCaptcha();" style="float:left;margin-left: 20px;" class="img-rounded"/>
		          			</td>
		    			</tr>
		    			<tr>
		    	  			<td align="center" style="border-top-width: 0px;">
		    	    			<input name="submit" id="lo" value="登录"  tabindex="4" type="submit" class="btn btn-primary btn-sm" style="width: 100px;" onclick="return check();"/>
		    					<input name="reset" value="重置" tabindex="5" type="reset" class="btn btn-primary btn-sm" style="width: 100px;"/>
		    	  			</td>
		        		</tr>
		      		</table>
		      		</form>
		    	</td>
		  	</tr>
		  	<tr>
		  		<td align="center" style="border-top-width: 0px;">
					<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
						<div class="alert alert-danger alert-dismissible" role="alert" style="width: 400px;">
						  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						  <span style="color:red">
						  	<c:choose> 
							  <c:when test="${SPRING_SECURITY_LAST_EXCEPTION.message eq '坏的凭证'}">   
							    密码错误
							  </c:when> 
							  <c:otherwise>   
							    ${SPRING_SECURITY_LAST_EXCEPTION.message}
							  </c:otherwise> 
							</c:choose> 
						  </span>
						</div>
					</c:if>
		  		</td>
		  	</tr>
		</table>
		<script src="${ctx}/js/jquery-1.10.1.js" type="text/javascript" ></script> 	
		<script type="text/javascript"> 
			function refreshCaptcha() {  
			    $('#captchaImg').hide().attr('src','<c:url value="/jcaptcha.jpg"/>' + '?' + Math.floor(Math.random() * 100)).fadeIn();  
			}  
			function checkParent(){

			    if(window.parent.length>0){ 
			        window.parent.location="${ctx}/jsp/login.do?locale=zh_CN"; 
			    }
			}
			function check(){
				if($("#username").val()==""||$("#password").val()==""||$("#j_captcha").val()==""){
					alert("登录信息填写不完整");
					return false;
				}
				deleteCookie("userName");
				deleteCookie("password");
				return true;
			}
		</script>
	</body>
</html>