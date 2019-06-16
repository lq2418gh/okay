<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>计划预算编辑</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
 	<div id="modal-dialog" class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display:none">关闭</button>
      </div>
      <div class="modal-body" id="modal-body">
       <iframe id="a" name="a" src="" width="100%" height="100%" frameborder="0" scrolling="no" ></iframe>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->

<div id="context">
  <div class="container">
   <form:form id="formValidate" name="budgetPlan"  action="${ctx}/budgetPlan/save.do" commandName="budgetPlan">
    <div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
          <div class="panel panel-primary">
         
            <div class="panel-heading">
              <h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
              <span class="label label-primary">物资计划管理>>计划预算>>编辑</span></a></h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
            
                     <div class="panel-body">
              		
                <table id="queryTable" class="table table-condensed">
                  <tr>
                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>预算编码</th>
                    <td>
                    <input type="hidden" name="id" id="id" value="${budgetPlan.id}"/>
                    <input type="hidden" name="state" id="state" />
                    <input type="text" name="budgetNo" id="budgetNo" value="${budgetPlan.budgetNo}" class="form-control input-sm" readonly="readonly"/>
                    </td>
                   <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>预算部门</th>
                    <td>
                    <input type="text" name="companyName" id="companyName" value="${companyName}" class="form-control input-sm" readonly="readonly"/>
                    <input type="hidden" name="company" id="company" value="${budgetPlan.company}"/>
                    </td>
                   <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>年份</th>
                    <td><input type="text"  name="year" id="year" value="${budgetPlan.year}"  class="form-control input-sm " readonly="readonly" /></td>
                  </tr>
				  <tr>
					<td colspan="6" id="tools">
						<c:if test="${budgetPlan.state!='审批通过'}">
							<security:authorize ifAllGranted="ROLE_BUDGETPLAN_SAVE">
							<input type="button" value="保存 " onClick="save(actable,1)" class="btn btn-primary btn-xs" />
							</security:authorize> 
						</c:if>
						<security:authorize ifAllGranted="ROLE_BUDGETPLAN_SUBMIT">
						<input type="button" value="提交 " onClick="save(actable,2)" class="btn btn-primary btn-xs" />
						</security:authorize>
						<c:if test="${not empty budgetPlan.id}">
							<a class="btn btn-primary btn-xs" href="${ctx }/budgetPlan/view.do?id=${budgetPlan.id }">返回</a>
						</c:if>
						<c:if test="${empty budgetPlan.id}">
							<a class="btn btn-primary btn-xs" href="${ctx }/budgetPlan/query.do">返回</a>
						</c:if>
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
            <div class="panel-heading"> 
            	<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" > 
            		<span class="icon"><span class="glyphicon glyphicon-file" ></span></span> </a> 
            		<a class="btn btn-primary btn-xs" onClick="addAC()"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细</a> 
					<a class="btn btn-primary btn-xs" onClick="delTr1('#actable')"><span class="glyphicon glyphicon-minus-sign" ></span>&nbsp;删除明细</a>
            		<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
            		</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:600px" > 
               <table id="actable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
                    <th>预算科目</th>
                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span> 预算金额</th>
                    <th>预算剩余金额</th>
                    <th>备注</th>
                    <th>预警比例%</th>
                  </tr>
                  <tbody id="acTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids" /></td>
						<td style="width:20%">
							<div class="input-group" style="width:100%">
								<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
								<span class="input-group-btn">
								<input type="hidden" name="id1" id="id1"/>
								<input type="hidden" name="account" id="account"/>
								<input type="hidden" name="budgetAmount2" id="budgetAmount2"/>
								<input type="hidden" name="residualAmountStorage" id="residualAmountStorage"/>
									<button type="button"   class="btn btn-primary btn-sm" onClick="checkAcorder(this);">查询</button>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
							</div>
						</td>
						<td style="width:20%"><input type="text" name="budgetAmount" id="budgetAmount" style="width:100%" class="form-control input-sm" maxlength="10" onChange="return changeBudgetAmount(this)"/></td>
						<td style="width:20%"><input type="text" name="residualAmount" id="residualAmount" style="width:100%"  class="form-control input-sm " maxlength="10" onChange="return changeResidualAmount(this)" readonly="readonly"/></td>
						<td style="width:20%"><input type="text" name="remark" id="remark" style="width:100%" class="form-control input-sm" maxlength="220" /></td>
						<td style="width:20%"><input type="text" name="warningRatio" id="warningRatio" style="width:100%" class="form-control input-sm " maxlength="4000" readonly="readonly"/></td>
					</tr>
					<c:if test="${not empty budgetPlan.id }">
						<c:forEach items="${budgetPlan.planDetailList}" var="list">
						<tr>
							<c:if test="${list.status=='没超过预警比例' }">
								<td>
								 <c:if test="${list.budgetAmount==list.residualAmount }">
								 <input type="checkbox" name="ids" />
								 </c:if>
								</td>
								<td style="width:20%">
									<div class="input-group" style="width:100%">
										<input type="text" name="name" value="${list.accountName}"  class="form-control input-sm" readonly="readonly" />
										<span class="input-group-btn">
										<input type="hidden" name="id2" id="id2" value="${list.id}" />
										<input type="hidden" name="account" id="account" value="${list.account }" />
										<input type="hidden" name="budgetAmount2" id="budgetAmount2" value="${list.budgetAmount }" />
										<input type="hidden" name="residualAmountStorage" id="residualAmountStorage" value="${list.residualAmountStorage }"/>
											<button type="button" class="btn btn-primary btn-sm" onClick="checkAcorder(this);">查询</button>
											<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
										</span>
									</div>
								</td>
								<td style="width:20%"><input type="text" name="budgetAmount" id="budgetAmount" style="width:100%" value="${list.budgetAmount }" class="form-control input-sm" maxlength="10" onChange="return changeBudgetAmount(this)" number/></td>
								<td style="width:20%"><input type="text" name="residualAmount" id="residualAmount" style="width:100%" value="${list.residualAmount }" class="form-control input-sm" maxlength="10" onChange="return changeResidualAmount(this)" number readonly="readonly"/></td>
								<td style="width:20%"><input type="text" name="remark" id="remark" value="${list.remark }"  style="width:100%" class="form-control input-sm" maxlength="220" /></td>
								<td style="width:20%"><input type="text" name="warningRatio" id="warningRatio" style="width:100%" value="${list.warningRatio }" class="form-control input-sm" maxlength="1000" readonly="readonly" int/></td>
							</c:if>
							<c:if test="${list.status=='超过预警比例' }">
								<td>
								 <c:if test="${list.budgetAmount==list.residualAmount}">
								 <input type="checkbox" name="ids" />
								 </c:if>
								</td>
								<td style="background-color:red;width:20%;">
									<div class="input-group" style="width:100%">
										<input type="text" name="name" value="${list.accountName}"  class="form-control input-sm" style="width:100%" readonly="readonly" />
										<span class="input-group-btn">
										<input type="hidden" name="id2" id="id2" value="${list.id}" />
										<input type="hidden" name="account" id="account" value="${list.account }" />
										<input type="hidden" name="budgetAmount2" id="budgetAmount2" value="${list.budgetAmount }" />
										<input type="hidden" name="residualAmountStorage" id="residualAmountStorage" value="${list.residualAmountStorage }"/>
											<button type="button" class="btn btn-primary btn-sm " onClick="checkAcorder(this);">查询</button>
											<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
										</span>
									</div>
								</td>
								<td style="background-color:red;width:20%;"><input type="text" name="budgetAmount" id="budgetAmount"  value="${list.budgetAmount }" class="form-control input-sm " style="width:100%" maxlength="10" onChange="return changeBudgetAmount(this)" number/></td>
								<td style="background-color:red;width:20%;"><input type="text" name="residualAmount" id="residualAmount" value="${list.residualAmount }" class="form-control input-sm " style="width:100%" maxlength="10" onChange="return changeResidualAmount(this)" number readonly="readonly"/></td>
								<td style="background-color:red;width:20%;"><input type="text" name="remark" id="remark" value="${list.remark }" class="form-control input-sm " style="width:100%" maxlength="200" /></td>
								<td style="background-color:red;width:20%;"><input type="text" name="warningRatio" id="warningRatio"  value="${list.warningRatio }" class="form-control input-sm " style="width:100%" maxlength="1000" readonly="readonly" int/></td>
							</c:if>
						</tr>
						</c:forEach>
					</c:if>
				</tbody>	
                <tfoot>
	                <tr>
	                    <td ></td>
						<td style="width:20%;text-align: right">合计：</td>
						<td style="width:20%"><input type="text" name="annualBudget" id="annualBudget" value="${budgetPlan.annualBudget} " class="form-control input-sm" style="width:100%" readonly="readonly"/></td>
						<td style="width:20%"><input type="text" name="residualBudget" id="residualBudget" value="${residualBudget }" class="form-control input-sm" style="width:100%" readonly="readonly"/></td>
						<td style="width:20%"></td>
						<td style="width:20%"></td>
					</tr>
				</tfoot>
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
var object;
function checkAcorder(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(800,850,'${ctx}/budgetAccount/publicAccount.do');
}
function handleBudgetAccount(budgetAccount){
	object.find("input[name='account']").val(budgetAccount.id);
	object.find("input[name='name']").val(budgetAccount.name);
	object.find("input[name='warningRatio']").val(budgetAccount.warningRatio);
	object.find("input[name='explain']").val(budgetAccount.explain);
}
//总计事件
var count=0;
var total=0;
var a=0;
function changeBudgetAmount(o){
	a=0;
    var budgetAmount=document.getElementsByName('budgetAmount');
	var residualAmount=document.getElementsByName('residualAmount');
	var warningRatio=document.getElementsByName('warningRatio');
	var trList=$("#actable").find("tr");
	for (var i=1;i<trList.length-2;i++) {
		console.log(budgetAmount[i].value.split(".")[0].length);
		 $tr = $(trList[i+1]);
		 if(budgetAmount[i].value !=""&&residualAmount[i].value !=""&&warningRatio[i].value !=""){
			a=(parseFloat(budgetAmount[i].value)-parseFloat(residualAmount[i].value))*100/parseFloat(budgetAmount[i].value);
			if(parseInt(a)>parseInt(warningRatio[i].value)){
				$tr.find("td").css("background-color","red");
			}else{
				$tr.find("td").css("background-color","");
			}
		}  
	} 
	count=0;
	$("#actable input[name='budgetAmount']").each(function(i){
		if($(this).val()!=""){
		count=parseFloat(count)+parseFloat($(this).val());
		}
	});
	$("#annualBudget").val(count);

}
function changeResidualAmount(o){
	total=0;
	$("#actable input[name='residualAmount']").each(function(i){
		if($(this).val()!=""){
		total=parseFloat(total)+parseFloat($(this).val());
		}
	});
	$("#residualBudget").val(total);
	a=0;
    var budgetAmount=document.getElementsByName('budgetAmount');
	var residualAmount=document.getElementsByName('residualAmount');
	var warningRatio=document.getElementsByName('warningRatio');
	var trList=$("#actable").find("tr");
	for (var i=1;i<trList.length-2;i++) {
		 $tr = $(trList[i+1]);
		 if(budgetAmount[i].value !=""&&residualAmount[i].value !=""&&warningRatio[i].value !=""){
			a=(parseFloat(budgetAmount[i].value)-parseFloat(residualAmount[i].value))*100/parseFloat(budgetAmount[i].value);
			if(parseInt(a)>parseInt(warningRatio[i].value)){
				 $tr.find("td").css("background-color","red");
			}else{
				$tr.find("td").css("background-color","");
			}
		}  
	} 
}
//增加明细
function addAC() {
	addTr('#acTbody',0);
	$('#quanxuan').on('ifChecked', function(event){
		$('input[name="ids"]').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event){
		$('input[name="ids"]').iCheck('uncheck');
	});
}
//删除明细
function delTr1(table){
	var vTb= $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if(vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
	changeBudgetAmount();
	changeResidualAmount();
}
//保存校验
var rule = {
			rules: {
				year: {
					required: true
				}		
			},
			messages: {
				year: {
					required: "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择年份"
				}
			}
		}
var obj = $("#formValidate").validate(rule);
function save(oTb,param) {
	var trCount = $("#actable").find("tr").length;
	console.log(trCount);
	if(param=='1'){
		$("#state").val("新建");
	}
	if(param=='2' && ${budgetPlan.state!='审批通过'}){
		$("#state").val("待审批");
	}
	if(param=='2' && ${budgetPlan.state=='审批通过'}){
		$("#state").val("审批通过");
	}
	console.log($("#state").val())
	if(obj.form()) {
		if(oTb.rows.length ==3){
			alert("请添加明细!");
			return;
		}
		var name=document.getElementsByName('name');
		var budgetAmount=document.getElementsByName('budgetAmount');
		var residualAmount=document.getElementsByName('residualAmount');
		var remark=document.getElementsByName('remark');
		var budgetAmount2=document.getElementsByName('budgetAmount2'); 

	    for(i=1;i<trCount-2;i++){
	    	for(j=1;j<trCount-2;j++){
	    		if(i!=j){
		    		if(name[i].value==name[j].value){
		    			alert("所选的预算科目不可以重复");
		    			return;
		    		}
	    		}
	    	}
	    }				
		for(i=1;i<trCount-2;i++){
			if(null == budgetAmount[i].value || "" == budgetAmount[i].value){
				alert("请填写预算金额！");
				budgetAmount[i].focus();
				return;
			}
			if(budgetAmount[i].value.split(".")[0].length >8){
				alert("预算金额整数位不允许超过8位！");
				budgetAmount[i].focus();
				return;
			}
		    if(residualAmount[i].value!=null || residualAmount[i].value!=""){
				 if(parseFloat(budgetAmount[i].value)<(parseFloat(budgetAmount2[i].value)-parseFloat(residualAmount[i].value))){
				     alert("第"+i+"行预算金额修改后的值小于已经用去的金额");
				     budgetAmount[i].focus();
				     return;
				 }
			}	
			if(remark[i].length>200){
				alert("备注长度不能超过200！");
				return;
			}	
		} 
		changeDetails("acTbody","planDetailList","0");
		document.budgetPlan.submit();
	}	
} 
</script>
</html>