<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		<c:if test="${ not empty message}"> 
				alert('${message}');
				window.top.frames["mainFrame"].frames["tabFrame"].location.href='${ctx}/${url}';
		</c:if>
	</script> 
</body>
</html>