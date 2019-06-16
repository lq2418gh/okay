<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String url = request.getParameter("url");
%>
<!-- 分页开始 -->
<!--<c:if test="${page != null}">-->
<!-- 	<ul class="pagination pagination-sm" > -->
	<div class="btn-group">
	<!--	<button type="button" class="btn btn-primary btn-xs" > 第${page.startPos}-${page.pageSize + page.startPos - 1 }条  共 ${page.totalCount} 条 </button>-->
		<button type="button" class="btn btn-primary btn-xs" onclick="showPage('<%=path %><%=url%>?pageNow=1');">首页</button>
		<c:choose>
			<c:when test="${page.pageNow - 1 > 0}">
				<button type="button" class="btn btn-primary btn-xs" onclick="showPage('<%=path %><%=url%>?pageNow=${page.pageNow - 1}');">上一页</button>
			</c:when>
			<c:when test="${page.pageNow - 1 <= 0}">
				<button type="button" class="btn btn-primary btn-xs" onclick="showPage('<%=path %><%=url%>?pageNow=1');">上一页</button>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${page.pageNow + 1 < page.totalPageCount}">
				<button type="button" class="btn btn-primary btn-xs" onclick="showPage('<%=path %><%=url%>?pageNow=${page.pageNow + 1}');">下一页</button>
			</c:when>
			<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
				<button type="button" class="btn btn-primary btn-xs" onclick="showPage('<%=path %><%=url%>?pageNow=${page.totalPageCount}');">下一页</button>
			</c:when>
		</c:choose>
		<button type="button" class="btn btn-primary btn-xs" onclick="showPage('<%=path %><%=url%>?pageNow=${page.totalPageCount}');">尾页</button>										
		<button type="button" class="btn btn-primary btn-xs" >第 ${page.pageNow} 页   共   ${page.totalPageCount} 页  &nbsp;&nbsp;&nbsp;共${page.totalCount} 条记录</button>
	</div>													
<!--</c:if>-->
<!-- 分页结束 -->
	<script type="text/javascript" >
		function showPage(url){
			if(document.condition!=null){
				document.condition.action = url;
				document.condition.submit();
			}else{
				window.location.href=url;
			}
		}
	</script>
