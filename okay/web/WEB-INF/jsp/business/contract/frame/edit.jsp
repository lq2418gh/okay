<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<title>框架协议编辑</title>
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
	<form:form id="formValidate" name="frameHead"  action="${ctx}/frame/save.do" commandName="frameHead">
	<div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
			<div class="panel panel-primary">
	            <div class="panel-heading">
					<h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
					<span class="label label-primary">协议/合同管理>>协议管理>>编辑</span></a></h4>
	            </div>
	            <div id="collapseOne" class="panel-collapse collapse in" >
					<div class="panel-body">
	                	<table id="queryTable" class="table table-condensed">
							<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>协议编码</th>
			                    <td>
				                    <input type="hidden" name="id" id="id" value="${frameHead.id}"/>
				                    <input type="hidden" name="tenderFrame" id="tenderFrame" value="${frameHead.tenderFrame}"/>
				                    <input type="text" name="frameNo" id="frameNo" value="${frameHead.frameNo}" class="form-control input-sm" readonly/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>品种</th>
			                    <td>
			                    	<input type="text" name="varieties" id="varieties" value="${frameHead.varieties}" class="form-control input-sm" />
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>签署日期</th>
			                    <td>
			                    	<input type="text"  name="signDate" id="signDate" value="<fmt:formatDate value="${frameHead.signDate}" pattern="yyyy-MM-dd"/>"  class="form-control input-sm form_datetime" readonly />
			                    </td>
							</tr>
							<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>合同状态</th>
			                    <td>
			                    	<input type="text" name="state" id="state" value="${frameHead.state}" class="form-control input-sm" readonly="readonly" />
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>生效日期</th>
			                    <td>
			                    	<input type="text"  name="effectDate" id="effectDate" value="<fmt:formatDate value="${frameHead.effectDate}" pattern="yyyy-MM-dd"/>"  class="form-control input-sm form_datetime" readonly/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>到期日期</th>
			                    <td>
			                    	<input type="text"  name="expireDate" id="expireDate" value="<fmt:formatDate value="${frameHead.expireDate}" pattern="yyyy-MM-dd"/>"  class="form-control input-sm form_datetime" readonly/>
								</td>
		                  	</tr>
		                  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>顺延年限</th>
			                    <td>
				                    <form:select path="extendedYear" value="${frameHead.extendedYear}" cssClass="form-control input-sm" >
					                    <form:option value="1">1年</form:option>
					                    <form:option value="2">2年</form:option>
					                    <form:option value="3">3年</form:option>
					                    <form:option value="0">无</form:option>
					                </form:select>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>供应商</th>
				                <td>
									<input type="hidden" name="supplier" id="supplier" value="${frameHead.supplier}"/>
									<c:if test="${empty frameHead.tenderFrame}">
										<input type="text" name="supplierName" id="supplierName" style="width:80%" value="${frameHead.supplierName}" class="form-control input-sm" />
										<span class="input-group-btn">
											<button type="button" class="btn btn-primary btn-sm" style="height:130%" onClick="checkAcorder1(this);">查询</button>
										</span>
									</c:if>
									<c:if test="${not empty frameHead.tenderFrame}">
										<input type="text" name="supplierName" id="supplierName" style="width:80%" value="${frameHead.supplierName}" class="form-control input-sm" readonly/>
									</c:if>
								</td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>开户单位</th>
			                    <td>
			                    	<input type="text"  name="supplierName" id="supplierName" value="${frameHead.supplierName}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
		                  	</tr>
						  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>开户银行</th>
			                    <td>
			                    	<input type="text"  name="opening_bank" id="opening_bank" value="${frameHead.opening_bank}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>银行账号</th>
			                    <td>
			                    	<input type="text"  name="bank_account_number" id="bank_account_number" value="${frameHead.bank_account_number}"  class="form-control input-sm" readonly/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>乙方法人</th>
			                    <td>
			                    	<input type="text"  name="legal_person" id="legal_person" value="${frameHead.legal_person}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
		                  	</tr>
		                  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>联系电话</th>
			                    <td>
			                    	<input type="text"  name="tel" id="tel" value="${frameHead.tel}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>电子邮箱</th>
			                    <td>
			                    	<input type="text"  name="email" id="email" value="${frameHead.email}"  class="form-control input-sm" readonly="readonly"/>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>乙方负责部门</th>
			                    <td>
			                    	<input type="text"  name="bResponsibleDepartment" id="bResponsibleDepartment" value="${frameHead.bResponsibleDepartment}"  class="form-control input-sm" />
			                    </td>
		                  	</tr>
		                  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>乙方负责人</th>
			                    <td>
			                    	<input type="text"  name="linkman" id="linkman" value="${frameHead.linkman}"  class="form-control input-sm" />
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>甲方名称</th>
			                    <td>
				                    <form:select path="partyAName"  value="${frameHead.partyAName}"  class="form-control input-sm" >
				                        <form:option value="奥凯航空有限公司天津分公司">奥凯航空有限公司天津分公司</form:option>
					                    <form:option value="奥凯航空有限公司湖南分公司">奥凯航空有限公司湖南分公司</form:option>
					                    <form:option value="奥凯航空有限公司">奥凯航空有限公司</form:option>
				                   	</form:select>
			                    </td>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>甲方负责人</th>
			                    <td>
			                    	<input type="text"  name="partyAChargeperson" id="partyAChargeperson" value="${frameHead.partyAChargeperson}"  class="form-control input-sm" />
			                    </td>
		                  	</tr>
		                  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>甲方负责部门</th>
				                <td>
				                	<input type="text"  name="aResponsibleDepartment" id="aResponsibleDepartment" value="${frameHead.aResponsibleDepartment}"  class="form-control input-sm" />
				                </td>
				                <td colspan="4"></td>
			                </tr>
		                  	<tr>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>备注</th>
			                    <td colspan="5">
			                    	<textarea  name="remark" id="remark" style="width:100%"  class="form-control input-sm" >${frameHead.remark}</textarea>
			                    </td>
		                  	</tr>
						  	<tr>
								<td colspan="6" id="tools">
									<security:authorize ifAllGranted="ROLE_FRAME_SAVE">
										<input type="button" value="保存 " onClick="save(jhtable,fdtable,1)" class="btn btn-primary btn-xs" />
									</security:authorize> 
									<security:authorize ifAllGranted="ROLE_FRAME_SUBMIT">
										<input type="button" value="提交 " onClick="save(jhtable,fdtable,2)" class="btn btn-primary btn-xs" />
									</security:authorize>
									<c:if test="${empty frameHead.id}">
										<a class="btn btn-primary btn-xs" href="${ctx }/frame/query.do">返回</a>
									</c:if>
									<c:if test="${not empty frameHead.id}">
										<a class="btn btn-primary btn-xs" href="${ctx }/frame/view.do?id=${frameHead.id }">返回</a>
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
	            	<a class="btn btn-primary btn-xs" onClick="addJH()"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加交货地址</a> 
					<a class="btn btn-primary btn-xs" onClick="delTr1('#jhtable')"><span class="glyphicon glyphicon-minus-sign" ></span>&nbsp;删除交货地址</a>
	            	<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
	            </div>
	            <div id="collapseTwo" class="panel-collapse collapse in" >
					<div class="panel-body" style="max-height:200px" > 
						<table id="jhtable" class="table table-striped table-condensed table-hover">
							<tr id="title">
			                    <th><input type="checkbox" name="checkAll11" id="quanxuan1"></th>
			                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>交货地址</th>
		                  	</tr>
		                  	<tbody id="jhTbody">
								<tr style="display: none;"  class="text-error">
									<td><input type="checkbox" name="ids1" /></td>
									<td style="width:100%">
										<input type="text" name="deliveryAddress" id="deliveryAddress" style="width:100%" class="form-control input-sm" maxlength="500" />	
										<input type="hidden" name="id1" id="id1" />
									</td>
								</tr>
								<c:if test="${not empty frameHead.id}">
									<c:forEach items="${frameHead.frameAddressList}" var="list">
										<tr>
											<td><input type="checkbox" name="ids1" /></td>
											<td style="width:100%">
												<input type="text" name="deliveryAddress" id="deliveryAddress" style="width:100%" value="${list.deliveryAddress }" class="form-control input-sm" maxlength="500" />
												<input type="hidden" name="id1" id="id1" value="${list.id}" />
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>	
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
           		<c:if test="${empty frameHead.tenderFrame }">
	           		<a class="btn btn-primary btn-xs" onClick="addFD()"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细</a> 
					<a class="btn btn-primary btn-xs" onClick="delTr2('#fdtable')"><span class="glyphicon glyphicon-minus-sign" ></span>&nbsp;删除明细</a>
           			<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
				</c:if>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:300px" > 
               <table id="fdtable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th><input type="checkbox" name="checkAll11" id="quanxuan2"></th>
                    <th>货品名称</th>
                    <th>单位</th>
                    <th>规格</th>
                    <th>箱容</th>
                    <th>单价</th>
                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>价格</th>
                    <th><span class="glyphicon glyphicon-asterisk"style="color: red"></span>拟采购量</th>
                    <th>起订量</th>
                  </tr>
                  <tbody id="fdTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids2" /></td>
						<td style="width:20%">
							<div class="input-group" style="width:100%">
								<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
								<span class="input-group-btn">
									<input type="hidden" name="id2" id="id2"/>
									<input type="hidden" name="tenderFrameDetail" id="tenderFrameDetail"/>
									<input type="hidden" name="material" id="material"/>
									<button type="button"   class="btn btn-primary btn-sm" onClick="checkAcorder2(this);">查询</button>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
							</div>
						</td>
						<td><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm"  maxlength="10" readonly="readonly"/></td>
						<td><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm "  readonly="readonly"/></td>
						<td><input type="text" name="conversion" id="conversion" style="width:100%" class="form-control input-sm" maxlength="220" readonly="readonly"/></td>
						<td><input type="text" name="secondaryPrice" id="secondaryPrice" style="width:100%"  class="form-control input-sm " maxlength="10"  readonly="readonly"/></td>
						<td><input type="text" name="mainPrice" id="mainPrice" style="width:100%" class="form-control input-sm " maxlength="10" onChange="return changePrice(this)"/></td>
						<td><input type="text" name="purchasedQuantity" id="purchasedQuantity" style="width:100%"  class="form-control input-sm " maxlength="10" value="按需" /></td>
						<td><input type="text" name="minimumQuantity" id="minimumQuantity" style="width:100%"  class="form-control input-sm " maxlength="10"  /></td>
					</tr>
					<c:if test="${not empty frameHead.id || not empty frameHead.tenderFrame}">
						<c:forEach items="${frameHead.frameDetailList}" var="list">
							<tr>
								<td><input type="checkbox" name="ids2" /></td>
								<td style="width:20%">
									<div class="input-group" style="width:100%">
										<input type="text" name="name" value="${list.name}"  class="form-control input-sm" readonly="readonly" />
										<input type="hidden" name="id2" id="id2" value="${list.id}" />
										<input type="hidden" name="tenderFrameDetail" id="tenderFrameDetail" value="${list.tenderFrameDetail}"/>
										<input type="hidden" name="material" id="material" value="${list.material }" />
										<span class="input-group-btn">
											<c:if test="${empty frameHead.tenderFrame}">
												<button type="button" class="btn btn-primary btn-sm" onClick="checkAcorder2(this);">查询</button>
												<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
											</c:if>
										</span>
									</div>
								</td>
								<td><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm" value="${list.unit}" maxlength="10" readonly="readonly"/></td>
							    <td><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm " value="${list.spec}"  readonly="readonly"/></td>
							    <td><input type="text" name="conversion" id="conversion" style="width:100%" class="form-control input-sm" value="${list.conversion}" maxlength="220" readonly="readonly"/></td>
							    <td><input type="text" name="secondaryPrice" id="secondaryPrice" style="width:100%"  class="form-control input-sm " maxlength="10" value="${list.secondaryPrice}"  readonly="readonly"/></td>
							    <td>
							    	<input type="text" name="mainPrice" id="mainPrice" style="width:100%" class="form-control input-sm " value="${list.mainPrice}" maxlength="10" onChange="return changePrice(this)"
							    		<c:if test="${not empty frameHead.tenderFrame}">
							    			readonly="readonly"
							    		</c:if>/>
							    </td>
							    <td>
							    	<input type="text" name="purchasedQuantity" id="purchasedQuantity" style="width:100%"  class="form-control input-sm "
							    		<c:if test="${not empty frameHead.tenderFrame && empty frameHead.id}"> 
							    			value="按需" 
							    		</c:if>
							    		<c:if test="${not empty frameHead.id}">
							    			value="${list.purchasedQuantity}"
							    		</c:if>
							    		maxlength="10"  />
							    </td>
							    <td><input type="text" name="minimumQuantity" id="minimumQuantity" style="width:100%"  class="form-control input-sm " value="${list.minimumQuantity}" maxlength="10"  /></td>
						   </tr>
					   </c:forEach>
					</c:if>
				  </tbody>	
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
//加载全选事件
$(function(){ 
	$('#quanxuan1').on('ifChecked', function(event){
		$('input[name="ids1"]').iCheck('check');
	});
	$('#quanxuan1').on('ifUnchecked', function(event){
		$('input[name="ids1"]').iCheck('uncheck');
	}); 
	$('#quanxuan2').on('ifChecked', function(event){
		$('input[name="ids2"]').iCheck('check');
	});
	$('#quanxuan2').on('ifUnchecked', function(event){
		$('input[name="ids2"]').iCheck('uncheck');
	});
}); 
//获取物资
var object;
function checkAcorder2(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1100,850,'${ctx}/material/publicCommodity.do');
}
function handleMaterial(material) {
	 var supplierLong = $("input[name='supplier']");
	 supplierIds="";
	 for(var i=0; i<supplierLong.length; i++){
			if(isEmpty(supplierLong.eq(i).val())){
				continue;
			}
			if(i!=supplierLong.length-1){  
				supplierIds+=supplierLong.eq(i).val()+",";
	        }else{  
	        	supplierIds+=supplierLong.eq(i).val();  
	        }  
	    }
		$.ajax({
			url : "${ctx}/tender/compareSupplierCapacity.do",
			data : {materialId : material.id,
				supplierIds : supplierIds
			},
			success : function(result){
				if(result!="yes"){
					alert("此物资"+result+"供应商没有");				
					return;
				}
				if(result=="yes"){
					object.find("input[name='material']").val(material.id);
					object.find("input[name='name']").val(material.name);
					object.find("input[name='unit']").val(material.unit);
					object.find("input[name='spec']").val(material.spec);
					object.find("input[name='conversion']").val(material.conversion);
					object.find("input[name='purchasedQuantity']").val('按需');
				}
			}
		})
}

//获取供应商
function checkAcorder1(o){
	object=$(o).parent().parent().parent().parent();//获取当前点击对象
	modal(1000,850,'${ctx}/supplier/publicSupplierQuery.do');
}
function handleSupplier(supplier) {
	var materialLong = $("input[name='material']");
	var materialIds = "";
	for(var i=1; i<materialLong.length; i++){
		if(isEmpty(materialLong.eq(i).val())){
			continue;
		}
		if(i!=materialLong.length-1){  
			materialIds+=materialLong.eq(i).val()+",";
        }else{  
       	 	materialIds+=materialLong.eq(i).val();  
        }  
    }
	$.ajax({
		url : "${ctx}/tender/viewSupplierCapacity.do",
		data : {supplierId : supplier.id,
			materialIds : materialIds
		},
		type : "post",
		success : function(result){
			if(result!="yes"){
				alert("供应商产能说明里面没有"+result+"此物资");				
				return;
			}
			if(result=="yes"){
				object.find("input[name='supplier']").val(supplier.id);
				object.find("input[name='supplierName']").val(supplier.supplier_name);
				object.find("input[name='opening_bank']").val(supplier.opening_bank);
				object.find("input[name='bank_account_number']").val(supplier.bank_account_number);
				object.find("input[name='legal_person']").val(supplier.legal_person);
				object.find("input[name='linkman']").val(supplier.linkman);
				object.find("input[name='tel']").val(supplier.tel);
				object.find("input[name='email']").val(supplier.email);
			}
		}
	});
}
//总计事件
var count=0;
var total=0;
var a=0;
function changePrice(o){
	var trList=$("#fdtable").find("tr");
	var mainPrice=document.getElementsByName('mainPrice');
	var conversion=document.getElementsByName('conversion');
	for (var i=1;i<=trList.length-2;i++){
		 $tr = $(trList[i+1]);
		 if(mainPrice[i].value!=""&& conversion[i].value !=""){
			 a=(parseFloat(mainPrice[i].value)/parseFloat(conversion[i].value)).toFixed(2);
			 $tr.find("input[name='secondaryPrice']").val(a);
		 }
	}
}
//增加明细
function addJH() {
	addTr('#jhTbody',0);
 	$('#quanxuan1').on('ifChecked', function(event){
		$('input[name="ids1"]').iCheck('check');
	});
	$('#quanxuan1').on('ifUnchecked', function(event){
		$('input[name="ids1"]').iCheck('uncheck');
	}); 
}

function addFD() {
	addTr('#fdTbody',0);
	$('#quanxuan2').on('ifChecked', function(event){
		$('input[name="ids2"]').iCheck('check');
	});
	$('#quanxuan2').on('ifUnchecked', function(event){
		$('input[name="ids2"]').iCheck('uncheck');
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
}
function delTr2(table){
	var vTb= $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if(vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
	changePrice();
}
//保存校验
var id=$("#id").val();
 var rule = {
			rules: {
				signDate:{
					required: true
				},
				effectDate:{
					required: true
				},
				expireDate:{
					required: true
				},
				partyAChargeperson:{
					required: true
				},
				aResponsibleDepartment:{
					required: true
				}
			},
			messages: {
				signDate:{
					required: "请输入签署日期"
				},
				effectDate:{
					required: "请输入生效时间"
				},
				expireDate:{
					required: "请输入到期日期"
				},
				partyAChargeperson:{
					required: "请输入甲方负责人"
				},
				aResponsibleDepartment:{
					required: "请输入甲方负责部门"
				}
			}
		} 
var obj = $("#formValidate").validate(rule);
function save(oTb1,oTb2,param) {
	var trCount2 = $("#fdtable").find("tr").length;
	var trCount1 = $("#jhtable").find("tr").length;
	if(param=='1'){
		$("#state").val("新建");
	}
	if(param=='2'){
		$("#state").val("生效");
	}
	if($("#supplierName").val()==""||$("#supplierName").val()==null){
		alert("请输入供应商");
		return;
	}
	if(obj.form()) {
		if(oTb1.rows.length ==2){
			alert("请添加交货地址!");
			return;
		}
		if(oTb2.rows.length ==2){
			alert("请添加明细!");
			return;
		}
		var purchasedQuantity=document.getElementsByName('purchasedQuantity');
		var mainPrice=document.getElementsByName('mainPrice');
		for(i=1;i<trCount2-1;i++){
			if(null == mainPrice[i].value || "" == mainPrice[i].value){
				alert("请填写价格！");
				return;
			}
			if(null == purchasedQuantity[i].value || "" == purchasedQuantity[i].value){
				alert("请填写拟采购数量！");
				return;
			}
			if(purchasedQuantity[i].value!="按需"){
				console.log(parseFloat(purchasedQuantity[i].value));
				if(isNaN(parseFloat(purchasedQuantity[i].value))){
					alert("拟采购数量只能填写按需或者是数字！");
					return;
				}
			}
		}
		changeDetails("fdTbody","frameDetailList","0");
		changeDetails("jhTbody","frameAddressList","0");
		document.frameHead.submit();
	}	
} 
</script>
</html>