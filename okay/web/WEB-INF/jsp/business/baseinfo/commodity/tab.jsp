<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>物资编码标签页</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
	<div id="context" >
		<div class="container">
			<div class="row">
				<div class="span12">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#materialsType" data-toggle="tab" onclick="materialsTypeQuery.window.location='${ctx}/material/materialsTypeQuery.do?parentId=${parentId }'"><span class="glyphicon glyphicon-shopping-cart"></span> 物资类别</a></li>
						<li><a href="#commodity" data-toggle="tab" onclick="commodityQuery.window.location='${ctx}/material/commodityQuery.do?parentId=${parentId }'"><span class="glyphicon glyphicon-th-list"></span> 物资信息</a></li>
					</ul>
					<div class="tab-content" >
						<div class="tab-pane active" id="materialsType" style="height: 600px">
							<iframe id="materialsTypeQuery" name="materialsTypeQuery" src="${ctx}/material/materialsTypeQuery.do?parentId=${parentId }" width="100%" height="150%" frameborder="0" scrolling="no" ></iframe>
						</div>
						<div class="tab-pane" id="commodity" style="height: 600px">
							<iframe id="commodityQuery" name="commodityQuery" src="${ctx}/material/commodityQuery.do?parentId=${parentId }" width="100%" height="150%" frameborder="0" scrolling="no" ></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>