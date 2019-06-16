<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" 
"http://www.w3.org/TR/html4/frameset.dtd">
<html>
	<head>
		<title>Menu</title>
		<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
	</head>
  <script type="text/javascript">
	$(document).ready(function(){
		$('#zd li.collapse').on('show.bs.collapse', function(){
			 $(this).siblings("li.in").collapse('hide');
		});
		$('#zd li.collapse').on('shown.bs.collapse', function(){
			 $(this).siblings("li.in").collapse('hide');
		});
		$(".pull-right").each(function(){
			$(this).html($(this).parent().parent().next("li").children("ul").children("li").length);
		});
	});
	</script>
	<body style="background: #369 url('${ctx}/images/loginbg.png') center top repeat-x;padding: 0px;">
		<ul class="nav nav-pills nav-stacked">
			<li class="active">
				<a ><span class="badge">系统菜单</span></a>
			</li>
		</ul>
		<div class="sidebar" id="sidebar" style="background-color: #FFF">
			<ul class="col-nav span3" id="zd">
				<c:forEach items="${sysMenuList}" var="sysMenuList">
					<li style="width: 100%">
						<a data-parent="#zd" data-toggle="collapse" class="accordion-toggle" href="#${sysMenuList.authority}">
							<span class="${sysMenuList.icon }"></span>&nbsp;&nbsp;
							${sysMenuList.cname }
							<span class="label label-primary pull-right">${fn:length(sysMenuList.items)}</span>
						</a>
					</li>
					<li id="${sysMenuList.authority}" class="collapse" style="width: 100%">
						<ul>
							<c:forEach items="${sysMenuList.items}" var="menu">
								<security:authorize ifAllGranted="${menu.authority }">
									<li style="width: 100%"><a href="${ctx }${menu.url }" target="mainFrame" ><span class="glyphicon glyphicon-chevron-right" ></span>&nbsp;${menu.cname }</a></li>
								</security:authorize>
							</c:forEach>
						</ul>
					</li>
				</c:forEach>
			</ul>
		</div>
	</body>
</html>