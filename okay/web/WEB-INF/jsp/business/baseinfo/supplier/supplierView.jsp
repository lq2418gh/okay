<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
	<title>查看供应商</title>
	<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
</head>

<body>
<div id="context">
  <div class="container">
    <form:form id="formValidate" commandName="supplier" name="supplier" action="${ctx}/supplier/saveSupplier.do" method="post">
    <div class="row">
		<div class="span12">
		  <div class="panel-group" id="accordion">
		  <div class="panel panel-primary">
			  <div class="panel-heading">
				<h4 class="panel-title">
	               	<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
	               	<span class="label label-primary">基础信息管理>>供应商管理>>查看</span></a>
				</h4>
			  </div>
			 <div id="collapseOne" class="panel-collapse collapse in" >
				<div class="panel-body">
		    <table id="queryTable" class="table table-condensed">
			<tr>
				<th>供应商编码</th>
				<td>${supplier.supplier_no}</td>
				<th>供应商名称</th>
				<td>${supplier.supplier_name}</td>
				<th>法人</th>
				<td>${supplier.legal_person }</td>
				<th>省份</th>
				<td>${supplier.province}</td>
			</tr>
			<!-- 第2行 -->
			<tr>
				<th>地址</th>
				<td colspan="3">${supplier.address }</td>
				<th>传真</th>
				<td>${supplier.fax }</td>
				<th>邮箱</th>
				<td>${supplier.email }</td>
			</tr>
			<!-- 第3行 -->
			<tr>
				<th>联系人</th>
				<td>${supplier.linkman }</td>
				<th>职务</th>
				<td>${supplier.post }</td>
				<th>联系电话</th>
				<td>${supplier.tel}</td>
				<th>财务联系人</th>
				<td>${supplier.financial_contact }</td>
			</tr>
			<!-- 第4行 -->
			<tr>
				<th>财务联系电话</th>
				<td>${supplier.financial_tel }</td>
				<th>财务邮箱</th>
				<td>${supplier.financial_email }</td>
				<th>开户行</th>
				<td colspan="3">${supplier.opening_bank }</td>
			</tr>
			<!-- 第5行 -->
		    <tr>
		    	<th>开户行账号</th>
				<td>${supplier.bank_account_number}</td>
				<th>社会信用代码</th>
				<td>${supplier.social_credit_code }</td>
				<th>食品流通许可证</th>
				<td>${supplier.food_circulation_license}</td>
				<th>卫生许可证</th>
				<td >${supplier.hygiene_license }</td>
			</tr>
			<tr>
				<th>供应商类型</th>
				<td>${supplier.supplier_type }</td>
				<th>质量体系</th>
				<td>${supplier.quality_system }</td>
				<th>供应商状态</th>
				<td>${supplier.state}</td>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th>企业简介</th>
				<td colspan="7">${supplier.brief_introduction }</td>
			</tr>
			<tr>
				<th>备注</th>
				<td colspan="7">${supplier.remark }</td>
			</tr>
			<tr>
				<td colspan="8" id="tools">
					 <c:if test="${supplier.state!='待审批'}">
                   		<a class="btn btn-primary btn-xs" href='${ctx}/supplier/editSupplier.do?supplierId=${supplier.id}'>
                   			<span class="glyphicon glyphicon-pencil"></span>编辑</a>
                     </c:if>
					<c:if test="${supplier.state == '待审批'}">
						<input type="button" value="审批" class="btn btn-primary btn-xs" onClick="checkRole()"/>
					</c:if>
				    <a href="${ctx}/supplier/supplierQuery.do" class="btn btn-primary btn-xs">返回</a>
				    <c:if test="${supplier.state == '新建'}">
				   		<a href="${ctx}/supplier/supplierTj.do?id=${supplier.id}" class="btn btn-primary btn-xs">提交</a>
				    </c:if>
				    <a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_purchasePlan&fk_id=${supplier.id }&importNo=${supplier.supplier_no }" >文件管理</a>
				    <a class="btn btn-primary btn-xs" onClick="Record();">审核记录</a>
				</td>
			</tr>
		</table>
		</div>
	  </div>
	 </div>
  </div>
</div>
	<div class="span12" style="margin-top: 10px;">
		  <div class="panel-group" id="accordion2">
		    <div class="panel panel-default">
		      <div class="panel-heading"><span>年审情况</span>
			  </div>
			  <div id="collapseTwo" class="panel-collapse collapse in">
			    <div class="panel-body" style="max-height: 380px;">
			      <table class="table table-striped table-condensed table-hover" id="mxtable">
			        <tr>
						<th>年份</th>
						<th>供应商等级</th>
					</tr>
					<tr style="display: none">
						<td><input type="text" name="year" class="form-control input-sm" maxlength="10" /></td>
						<td><input type="text" name="score"class="form-control input-sm" maxlength="10" /></td>
					</tr>
					<c:forEach items="${supplier.supplierScoreList}" var="supplier_score">
						<tr>
							<td>${supplier_score.year}</td>
							<td>${supplier_score.score}
							</td>
						</tr>
					</c:forEach>
			      </table>
			    </div>
			  </div>
		    </div>
		  </div>
		</div>
	</div>
</form:form>	
    </div>
  </div>
</body>
<script type="text/javascript">
//审核记录
function Record(){
	 modal(1000,550,'${ctx}/flowset/record.do?work_no=${supplier.supplier_no}');
}
//检查用户 角色是否有审批权限
function checkRole(){
	$.ajax({
		type:"POST",
		url:"${ctx}/flowset/checkRole.do",
		data:{
			work_no:'${supplier.supplier_no}'
		},
		success:function(data){
			if(data=='true'){
				alert("可以审核");
				modal(600,300,'${ctx}/flowset/check.do?work_no=${supplier.supplier_no}');
			}else{
				alert("无法审核");
			}
		}
	});
}
</script>
</html>