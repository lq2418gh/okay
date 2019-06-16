<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" 
"http://www.w3.org/TR/html4/frameset.dtd">
<html>
	<head>
		<title>Header</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
		<style>
			.nav>li>a:hover, .nav>li>a:focus{
				text-decoration: none;
				background-color: transparent;
			}
		</style>
	</head>
	<body style="background: #369 url('${ctx}/images/loginbg.png') center top repeat-x">
		<div id="header">
			<div class="container">
				<div class="row">
					<div class="span12">
						<!-- <img src="${ctx}/images/logoBorder.png" style="float:left;width:150px;height:25px;margin-top:15px" />
						<img class="img-rounded" src="${ctx}/images/name.png" style="float:left;width:300px;height:41px;margin-top:10px" /> -->
						<ul class="nav navbar-nav navbar-right" style="float:right">
							<li style="float:left;margin-left:10px;">
								<a href="javascript:void(0)" >
									<security:authentication property="principal.UserInfo.realName"/>欢迎您登陆奥凯航空有限公司
								</a>
							</li>
							<li style="float:left;margin-left:10px;">
								<a href="javascript:void(0)" onClick="top.mainFrame.location='${ctx}/sys/task/welcome.do'"><span class="glyphicon glyphicon-bell"> </span> 任务提醒</a>
							</li>
							<li style="float:left;margin-left:10px;">
								<a href="javascript:void(0)" onClick="modal(850,650,'${ctx}/user/editUserInfo.do?userId=<security:authentication property="principal.userId"/>&userInfoId=<security:authentication property="principal.userInfo.userInfoId"/>');"><span class="glyphicon glyphicon-lock"> </span> 修改个人信息</a>
							</li> 
							<li style="float:left;margin-left:10px;">
							<a href="javascript:void(0)" onClick="top.location.replace('${ctx}/j_spring_security_logout')" target="_self">
							<span class="glyphicon glyphicon-remove-circle"> </span> 退出系统</a></li>			
						</ul>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function modal(width,height,url){
				//window.top.document.getElementById("modal-dialog").style.marginTop=margin;
				window.top.document.getElementById("modal-dialog").style.width=width+"px";
				window.top.document.getElementById("modal-body").style.height=height+"px";
				window.top.document.getElementById("a").src=url;
				window.top.document.getElementById("modal").click();
			}
		</script>
	</body>
</html>