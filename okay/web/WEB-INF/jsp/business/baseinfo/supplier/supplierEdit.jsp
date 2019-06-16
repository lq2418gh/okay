<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>物资采购计划表</title>
</head>
<body>


<div id="context">
  <div class="container">
   <form:form id="formValidate" name="supplier" commandName="supplier" action="${ctx}/supplier/saveSupplier.do">
    <div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">基础信息管理>>供应商管理>>编辑</span></a></h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
             <div class="panel-body">
             	<form:hidden path="state"/>
               <table id="queryTable" class="table table-condensed">
				<tr>
					<form:hidden path="id" id="id"/>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>供应商编码</th>
					<td>
						<form:input path="supplier_no" id = "supplier_no" cssClass="form-control input-sm" readonly="true" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>供应商名称</th>
					<td>
						<form:input path="supplier_name" id="supplier_name" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>法人</th>
					<td>
						<form:input path="legal_person" id="legal_person" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>省份</th>
					<td>
						<html:select id="province" name="province" classes="form-control input-sm" style="width:165px;">     
							<html:sysOptions condition="province" checkValue="${supplier.province}"></html:sysOptions>    
						</html:select>
					</td>
				</tr>
				<!-- 第2行 -->
				<tr>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>地址</th>
					<td colspan="3">
						<form:input path="address" id="address" cssClass="form-control input-sm"  style="width:440px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>传真</th>
					<td>
						<form:input path="fax" id="fax" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>邮箱</th>
					<td>
						<form:input path="email" id="email" cssClass="form-control input-sm" style="width:165px;" />
					</td>
				</tr>
				<!-- 第3行 -->
				<tr>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>联系人</th>
					<td>
						<form:input path="linkman" id="linkman" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>职务</th>
					<td>
						<form:input path="post" id="post" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>联系电话</th>
					<td>
						<form:input path="tel" id="tel" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>财务联系人</th>
					<td>
						<form:input path="financial_contact" id="financial_contact" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
				</tr>
				<!-- 第4行 -->
				<tr>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>财务联系电话</th>
					<td>
						<form:input path="financial_tel" id="financial_tel" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>财务邮箱</th>
					<td>
						<form:input path="financial_email" id="financial_email" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>开户行</th>
					<td colspan="3">
						<form:input path="opening_bank" id="opening_bank" cssClass="form-control input-sm" style="width:440px;"/>
					</td>
				</tr>
				<!-- 第5行 -->
			    <tr>
			   		<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>开户行账号</th>
					<td>
						<form:input path="bank_account_number" id="bank_account_number" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>社会信用代码</th>
					<td>
						<form:input path="social_credit_code" id="social_credit_code" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>食品流通许可证</th>
					<td>
						<form:input path="food_circulation_license" id="food_circulation_license" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>卫生许可证</th>
					<td >
						<form:input path="hygiene_license" id="hygiene_license" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
				</tr>
				<tr>
					<th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>供应商类型</th>
					<td>
						<html:select id="supplier_type" name="supplier_type" classes="form-control input-sm" style="width:165px;">     
							<html:sysOptions condition="supplier_type" checkValue="${supplier.supplier_type}"></html:sysOptions>    
						</html:select>
					</td>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>质量体系</th>
					<td>
						<form:input path="quality_system" id="quality_system" cssClass="form-control input-sm" style="width:165px;"/>
					</td>
					<th colspan="4"></th>
				</tr>
				<tr>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>企业简介</th>
					<td colspan="7">
						<form:textarea path="brief_introduction" id="brief_introduction" cssClass="form-control input-sm" 
							style="width:990px;resize: none;"/>
					</td>
				</tr>
				<tr>
					<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
					<td colspan="7">
						<form:textarea path="remark" id="remark" cssClass="form-control input-sm" style="width:990px;resize: none;"/>
					</td>
				</tr>
				<tr>
					<td colspan="8" id="tools">
						<c:if test="${not empty supplier.id && supplier.state == '可使用'}">
							<input type="button" value="提交" class="btn btn-primary btn-xs" onClick="formSubmitTj()"/>
						</c:if>
						<c:if test="${empty supplier.id || (not empty supplier.id && supplier.state != '可使用')}">
							<input type="button" value="保存" class="btn btn-primary btn-xs" onClick="formSubmit()"/> 
						</c:if>
						<c:if test="${not empty supplier.id}">
							<a href='${ctx}/supplier/viewSupplier.do?supplierNo=${supplier.supplier_no}' class="btn btn-primary btn-xs">返回</a> 
						</c:if>
						<c:if test="${empty supplier.id}">
							<a href='${ctx}/supplier/supplierQuery.do' class="btn btn-primary btn-xs">返回</a> 
						</c:if>
					</td>
				</tr>
			</table>	
             </div>
			</div>
		  </div>
		</div>
	  </div>
	<%-- <c:if test="${not empty supplier.id && supplier.state != '新建'}"> --%>
       <div class="span12" style="margin-top: 10px;">
		  <div class="panel-group" id="accordion2">
		    <div class="panel panel-default">
		      <div class="panel-heading">
		      	<span>年审情况</span>
			  </div>
			  <div id="collapseTwo" class="panel-collapse collapse in">
			    <div class="panel-body" style="max-height: 380px;">
			      <table class="table table-striped table-condensed table-hover" id="mxtable">
			        <tr>
						<th>年份</th>
						<th>供应商等级</th>
					</tr>
					<c:forEach items="${supplier.supplierScoreList}" var="supplier_score">
						<tr>
							<td style="width:300px;">
								<input id="year" name="year" value="${supplier_score.year}" readonly="readonly" classes="form-control input-sm" style="border-style:none"/>
							</td>
							<td>
								<c:if test="${supplier_score.flag!='1'}">
									<html:select id="score" name="score" classes="form-control input-sm" disabled="true">     
										<html:sysOptions condition="supplier_rank" checkValue="${supplier_score.score}"></html:sysOptions>    
									</html:select>
								</c:if>
								<c:if test="${supplier_score.flag=='1'}">
									<html:select id="score" name="score" classes="form-control input-sm">     
										<html:sysOptions condition="supplier_rank" checkValue="${supplier_score.score}"></html:sysOptions>    
									</html:select>
								</c:if>
							</td> 
						</tr>
					</c:forEach>
			      </table>
			    </div>
			  </div>
		    </div>
		  </div>
		</div>
	<%-- </c:if> --%>
</div>
</form:form>
</div>
</div>

</body>
<script type="text/javascript">
function uploadFile(){
	var value = $("#fileL").val();  
    if(value==""){  
       alert("<spring:message code='请选择文件！' />");  
       return;  
        }  
    $.ajaxFileUpload({  
        url:"${ctx }/fileInfo/saveReceiveL.do?tempId=${tempId}",            //需要链接到服务器地址  
        secureuri:false,  
        fileElementId:'fileL',                     //文件选择框的id属性  
        dataType: 'text/html',                     //服务器返回的格式  
        success: function (data){  
           var datas = data.split("%*%");
           var tr = addTr('#fileTable');
           tr.children("td:eq(0)").html(datas[0]);
           tr.children("td:eq(1)").html(datas[1]);
           tr.children("td:eq(2)").find("a").attr("href","javascript:del('" + datas[2] + "')").attr("name",datas[2]);
        },  
        error: function (){           //相当于java中catch语句块的用法  
            alert("<spring:message code='警告，上传失败！' />");  
         }  
    });  
}

function formSubmit(){
	if(obj.form()){
		changeDetails("mxtable","supplierScoreList",0)
		console.log("123",$("#mxtable").find("tr:gt(1)"));
		if(checkState()){
			document.getElementById("formValidate").submit();
			window.top.document.getElementById('butclose').click();
		}
	}
}
function formSubmitTj(){
	if(obj.form()){
		changeDetails("mxtable","supplierScoreList",0)
		if(checkState()){
			document.supplier.action="${ctx}/supplier/saveSupplierTj.do";
			document.getElementById("formValidate").submit();
			window.top.document.getElementById('butclose').click();
		}
	}
}
function checkState(){
	$("#mxtable").find("tr:gt(1)").each(function(index){
		$(this).find("select").each(function(){
			if($(this).val()=="" || null == $(this).val()){
				alert("请输入供应商等级");
				return false;
			}
		});
	});
	return true;
}


//传真验证       
jQuery.validator.addMethod("isFaxNo", function(value, element) {     
		var length = value.length;   
		var mobile = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;   
		return this.optional(element) || (length <= 20 && mobile.test(value));       
	},
		"请正确填写传真号码,如022xxxxxxxx"
);
//电话号码验证
jQuery.validator.addMethod("isTel", function(value, element) {     
	var length = value.length;   
	var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0,5-9]{1}))+\d{8})$/; 
	var tel = /^\d{3,4}-?\d{7,8}$/;    //电话号码格式010-12345678 
	if(value.substring(0,1)==1){
		return this.optional(element) || (length == 11 && mobile.test(value)); 
	}else{
		return this.optional(element) || (tel.test(value));
	}
},
	"请正确填写电话号码"
);
var obj = $("#formValidate").validate({	
	rules: {
		supplier_name:{
			required: true,
			maxlength:100,
			remote:{
					type:"POST",
					url:"${ctx}/supplier/findSupplierByName.do", 
					data:{
						warehouseCode:function(){
							return $("#supplier_name").val();
						},id:function(){
							return $("#id").val();
						}
 				}
			}
		},
		province:{
			required:true
		},
		address:{
			required:true,
			maxlength:100
		},
		email:{
			required:true,
			email:true,
			maxlength:200
		},
		linkman:{
			required:true,
			maxlength:200
		},
		post:{
			required:true,
			maxlength:200
		},
		tel:{
			required:true,
			maxlength:20,
			isTel:true
		},
		opening_bank:{
			required:true,
			maxlength:1000
		},
		social_credit_code:{
			required:true,
			maxlength:18
		},
		supplier_type:{
			required:true
		},
		bank_account_number:{
			required:true
		},
	},
	messages:{
		supplier_name:{
			required: "请输入供应商名称",
			maxlength:"供应商名称不能大于100个字符",
			remote:"供应商名称已存在"
		},
		province:{
			required: "请选择 省份"
		},
		address:{
			required: "请输入地址",
			maxlength: "地址不能大于100个字符"
		},
		email:{
			required:"请输入邮箱",
			email:"邮箱格式不正确",
			maxlength:"邮箱不能大于200个字符"
		},
		linkman:{
			required:"请输入联系人",
			maxlength:"联系人不能大于200个 字符"
		},
		post:{
			required:"请输入职务",
			maxlength:"职务不能大于200个 字符"
		},
		tel:{
			required:"联系电话不能为空",
			maxlength:"电话长度不能大于20个字符",
			isTel:"请输入正确的电话号码"
		},
		opening_bank:{
			required:"开户行不能为空",
			maxlength:"开户行长度不能大于1000个字符"
		},
		social_credit_code:{
			required:"社会信用代码不能为空",
			maxlength:"社会信用代码不能大于18个字符"
		},
		supplier_type:{
			required:"供应商类型不能为空"
		},
		bank_account_number:{
			required:"开户行账号不能为空",
			maxlength:"开户行账号不能大于100个字符"
		}
	}
});	
</script>
</html>