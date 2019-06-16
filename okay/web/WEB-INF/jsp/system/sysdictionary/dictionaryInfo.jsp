<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>字典信息页</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<form:form id="formValidate" commandName="dictionaryForm" name="dictionaryForm" action="${ctx}/sysdictionary/editDictionary.do" method="post" >
  <table class="table table-bordered table-condensed">
    <form:hidden path="parentId"/>
    <tr>
      <th>父级编码</th>
      <td><form:input type="text" path="parentCode" style="width:500px" cssClass="form-control input-sm" readonly="true"/></td>
    </tr>
    <tr>
      <th>父级名称</th>
      <td><form:input type="text" path="parentName" style="width:500px" cssClass="form-control input-sm" readonly="true"/></td>
    </tr>
    <c:if test="${dictionaryForm.dicId ne null}">
      <tr>
        <th>字典编码</th>
        <td><form:hidden path="dicId"/>
          <form:input type="text" id="dicCode" style="width:500px" path="dicCode" cssClass="form-control input-sm" readonly="true"/></td>
      </tr>
    </c:if>
    <c:if test="${dictionaryForm.dicId eq null}">
      <tr>
        <th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>字典编码</th>
        <td><form:input type="text" id="dicCode" path="dicCode" style="width:500px" cssClass="form-control input-sm" maxlength="30"/></td>
      </tr>
    </c:if>
    <tr>
      <th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>字典中文名称</th>
      <td><form:input type="text" id="dicName" path="dicName" style="width:500px" cssClass="form-control input-sm"/></td>
    </tr>
    <tr>
      <th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>字典英文名称</th>
      <td><form:input type="text" id="dicEnglishName" path="dicEnglishName" style="width:500px" cssClass="form-control input-sm"/></td>
    </tr>
    <tr>
      <th>排序</th>
      <td><form:input type="text" id="dicOrder" path="dicOrder" style="width:500px" cssClass="form-control input-sm" maxlength="2"/></td>
    </tr>
    <tr>
      <th>操作</th>
      <td>
      	<security:authorize ifAnyGranted="ROLE_SYS_SYSDIC_ADD,ROLE_SYS_SYSDIC_MOD">
      	<input type="button" class="btn btn-primary btn-xs" value="保存" onClick="save();">
        <input type="reset" class="btn btn-primary btn-xs" value="重置"  onclick="resetControl()" >
        </security:authorize>
        <input type="button" class="btn btn-primary btn-xs" value="关闭"  onclick="window.top.document.getElementById('butclose').click()"></td>
    </tr>
  </table>
</form:form>
<script src="${ctx}/js/common.js" type="text/javascript" ></script> 
<script type="text/javascript">
		var xxx ={	
					rules: {
						dicCode: {
							required: true,		
							rangelength:[1,60] 
						},
						dicName: {
							required: true,
							rangelength:[1,500] 
						},
						dicOrder: {
							required: true,
							number:true,
							digits:true,
							rangelength:[1,60] 
						}
					},
					messages: {
						dicCode: {
							required: "请输入编码",		
							rangelength: "长度必须介于1和60之间"
						},
						dicName: {
							required: "请输入名称",
							rangelength: "长度必须介于1和500之间"
						},
						dicOrder: {
							 number: "请输入数字",
							 digits: "请输入整数",
							required: "请输入排序号",
							rangelength: "长度必须介于1和60之间"
						}
					}
				}
	function save(){
		var obj = $("#formValidate").validate(xxx);
		document.dictionaryForm.action='${ctx}/sysdictionary/editDictionary.do';
		if(obj.form()){
			document.dictionaryForm.submit();
			window.top.document.getElementById('butclose').click();
		}

		}
				
		</script>
</body>
</html>
