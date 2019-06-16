<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/web-html" prefix="html"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>字典列表页</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<div id="context">
  <div class="container">
    <div class="row">
      <div class="span12" >
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"> <a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"><span class="label label-primary">查询字典</span></a> </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
              <div class="panel-body">
                <form action="${ctx}/sysdictionary/query.do" method="post">
                  <table id="queryTable" class="table table-condensed ">
                    <tr>
                      <th>字典名称</th>
                      <td><input type="text" id="dicName" name="dicName" value="${dicName}" class="form-control input-sm" />
                       <input type="hidden" name="dicId" value="${dicId}"></td>
                      <th></th>
                      <td></td>
                    </tr>
                    <tr>
                      <td colspan="4" id="tools">
                      	<input type="submit" value="查询" class="btn btn-primary btn-xs"/>
                        <input type="reset" value="重置" class="btn btn-primary btn-xs" /></td>
                    </tr>
                  </table>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="span12" style="margin-top: 10px;">
        <div class="panel-group" id="accordion2" >
          <div class="panel panel-default">
            <div class="panel-heading"> <a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > <span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a>
              <security:authorize ifAllGranted="ROLE_SYS_SYSDIC_ADD">
              <button class="btn btn-primary btn-xs" 
               onclick="modal(900,550,'${ctx}/sysdictionary/dictionaryInfo.do?flag=save&parentId=${dicId}');">新建字典</button>
               </security:authorize>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="height:330px;overflow-y: auto">
                <table class="table table-striped table-condensed table-hover">
                  <tr>
                    <th>字典编码</th>
                    <th>字典中文名称</th>
                    <th>字典英文名称</th>
                    <th>排序</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${dictionaryList}" var="dic">
                    <tr>
                      <td>${dic.dicCode }</td>
                      <td>${dic.dicName }</td>
                      <td>${dic.dicEnglishName }</td>
                      <td>${dic.dicOrder}</td>
                      <td>
                      <security:authorize ifAllGranted="ROLE_SYS_SYSDIC_MOD">
                      <button class="btn btn-primary btn-xs"
                       onclick="modal(900,550,'${ctx}/sysdictionary/dictionaryInfo.do?flag=update&id=${dic.dicId}');">
                       <span class="glyphicon glyphicon-pencil"></span> 修改</button>
                       </security:authorize>
                       <security:authorize ifAllGranted="ROLE_SYS_SYSDIC_DEL">
                        <button class="btn btn-primary btn-xs" onclick="deleteDic('${dic.dicId}','${dicId}')"><span class="glyphicon glyphicon-trash"></span>  删除</button>
                       </security:authorize>
                       </td>
                    </tr>
                  </c:forEach>
                </table>
              </div>
              <table class="table table-condensed" id="pageTools">
                <tr>
                  <td><jsp:include page="../../common/page.jsp">
                    <jsp:param name="url" value="${pageUrl}" />
                    </jsp:include></td>
                </tr>
              </table>
              <form id="condition" name="condition"  hidden="true" method="post">
                <input type="text" name="dicId" value="${dicId}">
                <input type="text" name="dicName" value="${dicName}">
              </form>
              <script src="${ctx}/js/common.js" type="text/javascript" ></script>
              <c:if test="${message!=null }"> 
				 <script type="text/javascript">
				// alert('${message}');	
				 window.top.document.getElementById('mainFrame').src='${ctx}/sysdictionary/dictionary.do?dicId='+"${dicId}";
				
                   // window.parent.frames["treeFrame"].location.reload(true);
                </script> 
              </c:if>
            </div>
          </div>
        </div>
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
		function deleteDic(dicId,parentId){
			if(confirm("确定删除吗?")){
				window.location.href='${ctx}/sysdictionary/delete.do?dicId='+dicId+'&parentId='+parentId;
			}
			
		}
	</script>
</body>
</html>
