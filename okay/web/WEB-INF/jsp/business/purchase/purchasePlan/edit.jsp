<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<title>物资采购计划表</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="modal-dialog" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-primary btn-xs" id="butclose" data-dismiss="modal" style="display: none">关闭</button>
				</div>
				<div class="modal-body" id="modal-body">
					<iframe id="a" name="a" src="" width="100%" height="100%"frameborder="0" scrolling="no"></iframe>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div id="context">
		<div class="container">
			<form:form id="formValidate" name="planForm" action="${ctx}/purchase/save.do" commandName="planForm">
				<div class="row">
					<div class="span12">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
											<span class="label label-primary">物资计划管理>>年度物资采购计划>>编辑</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<input type="hidden" value="${purchase.input_userid }" name="input_userid" id="input_userid"> 
										<input type="hidden" value="${purchase.departmentId }" name="departmentId" id="departmentId"> 
										<input type="hidden" value="${purchase.id }" name="id" id="id">
										<table id="queryTable" class="table table-condensed">
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>计划编号</th>
												<td>
													<c:if test="${not empty purchase.id }">
														<input type="text" name="plan_no" id="plan_no" value="${purchase.plan_no }" class="form-control input-sm" readonly="readonly" />
													</c:if>
													<c:if test="${empty purchase.id }">
														<input type="text" name="plan_no" id="plan_no" value="" class="form-control input-sm" readonly="readonly" />
													</c:if>
												</td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>使用部门</th>
												<td><input type="text" name="company_name" id="company_name" value="${purchase.company_name }" class="form-control input-sm" readonly="readonly" /></td>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>制单人</th>
												<td><input type="text" name="realName" id="realName" value="${purchase.realName }" class="form-control input-sm" readonly="readonly" /></td>
											</tr>
											<tr>
												<th><span class="glyphicon glyphicon-asterisk"style="color: white"></span>制单日期</th>
												<td><input type="text" name="input_date" id="input_date" value="<fmt:formatDate value="${purchase.input_date}" pattern="yyyy-MM-dd"/>" class="form-control input-sm" readonly="readonly" /></td>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>年份</th>
												<td style="width: 8.5%">
													<div class="input-group" style="width: 100%">
														<input type="text" name="year" id="year" class="form-control input-sm form_datetime_year" readonly="readonly" value="${purchase.year }" /> 
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th></th>
												<td></td>
											</tr>
											<tr>
												<td colspan="6" id="tools">
													<security:authorize ifAllGranted="ROLE_PURCHASE_INSERT">
													<input type="button" value="保存 " onClick="save(mxtable)" class="btn btn-primary btn-xs" />
													</security:authorize>
													<c:if test="${not empty purchase.id }">
														<a class="btn btn-primary btn-xs" href="${ctx }/purchase/view.do?id=${purchase.id}">返回</a>
													</c:if>
													<c:if test="${empty purchase.id }">
														<a class="btn btn-primary btn-xs" href="${ctx }/purchase/query.do">返回</a>
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
									<a id="example2" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> 
										<span class="icon"><span class="glyphicon glyphicon-file"></span></span>
									</a> 
									<a class="btn btn-primary btn-xs" onClick="addMX()">
										<span class="glyphicon glyphicon-plus-sign"></span>&nbsp;添加明细
									</a> 
									<a class="btn btn-primary btn-xs" onClick="delTr1('#mxtable')">
										<span class="glyphicon glyphicon-minus-sign"></span>&nbsp;删除明细
									</a> 
									<input type="text" readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent; border-style: none; width: 1px;">
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body" style="max-height: 600px">
										<table id="mxtable" class="table table-striped table-condensed table-hover">
											<tr id="title">
												<th><input type="checkbox" name="checkAll11" id="quanxuan"></th>
												<th>物资编码</th>
												<th>物资名称</th>
												<th>计量单位</th>
												<th>规格型号</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>需求数量</th>
												<th>库存</th>
												<th>用途</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>预算科目</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>预算金额(元)</th>
												<th><span class="glyphicon glyphicon-asterisk" style="color: red"></span>需求日期</th>
											</tr>
											<tbody id="mxTbody">
												<tr style="display: none">
													<td><input type="checkbox" name="ids" /></td>
													<td>
														<div class="input-group">
															<input type="text" name="code" class="form-control input-sm" readonly="readonly" /> 
															<span class="input-group-btn">
																<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
																<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
															</span>
														</div> 
														<input type="hidden" name="materiel_id" />
													</td>
													<td><input type="text" style="width: 104%" name="name" class="form-control input-sm" readonly="readonly" /></td>
													<td><input type="text" style="width: 100%" name="unit" class="form-control input-sm" maxlength="100" readonly="readonly" /></td>
													<td><input type="text" style="width: 100%" name="spec" class="form-control input-sm" maxlength="100" readonly="readonly" /></td>
													<td><input type="text" style="width: 100%" name="demand_quantity" class="form-control input-sm" maxlength="500" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" /></td>
													<td><input type="text" style="width: 100%" name="stock" class="form-control input-sm"  maxlength="4000" readonly="readonly" /></td>
													<td><input type="text" style="width: 100%" name="purpose" class="form-control input-sm " /></td>
													<td><html:select name="budget_account" classes="form-control input-sm ">
															<html:businessOptions function="budget" condition="" checkValue=""></html:businessOptions>
														</html:select>
													</td>
													<td><input type="text" style="width: 100%" name="budget_amount" class="form-control input-sm"  onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" onChange="return changePurchaseNumber(this)" /></td>
													<td>
														<select name="demand_date" class="form-control input-sm " >
															<option value="1">1月</option>
															<option value="2">2月</option>
															<option value="3">3月</option>
															<option value="4">4月</option>
															<option value="5">5月</option>
															<option value="6">6月</option>
															<option value="7">7月</option>
															<option value="8">8月</option>
															<option value="9">9月</option>
															<option value="10">10月</option>
															<option value="11">11月</option>
															<option value="12">12月</option>
														</select>
													</td>
												</tr>
												<!-- 编辑页时使用 -->
												<c:if test="${not empty purchase.id }">
													<c:forEach items="${purchase.purchaseDetailList }" var="c">
														<tr>
															<td><input type="checkbox" name="ids" /></td>
															<td>
																<div class="input-group">
																	<input type="text" name="code" class="form-control input-sm" readonly="readonly" value="${c.code }" /> 
																		<span class="input-group-btn">
																		<button type="button" class="btn btn-primary btn-sm" onClick="checkMtorder(this);">查询</button>
																		<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
																	</span>
																</div> 
																<input type="hidden" name="materiel_id" value="${c.materiel_id }" />
															</td>
															<td><input type="text" style="width: 104%" name="name" class="form-control input-sm" readonly="readonly" value="${c.name }" /></td>
															<td><input type="text" style="width: 100%" name="unit" class="form-control input-sm " maxlength="100" readonly="readonly" value="${c.unit }" /></td>
															<td><input type="text" style="width: 100%" name="spec" class="form-control input-sm " maxlength="100" readonly="readonly" value="${c.spec }" /></td>
															<td><input type="text" style="width: 100%" name="demand_quantity" class="form-control input-sm " maxlength="500" value="${c.demand_quantity }" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" /></td>
															<td><input type="text" style="width: 100%" name="stock" class="form-control input-sm " maxlength="4000"  readonly="readonly" value="${c.stock }" /></td>
															<td><input type="text" style="width: 100%" name="purpose" class="form-control input-sm  " value="${c.purpose }" title="${c.purpose }"/></td>
															<td>
																<html:select  name="budget_account" classes="form-control input-sm ">
																	<html:businessOptions function="budget" condition="" checkValue="${c.budget_account}"></html:businessOptions>
																</html:select>
															</td>
															<td><input type="text" style="width: 100%" name="budget_amount" class="form-control input-sm "  onChange="return changePurchaseNumber(this)" onKeyUp="this.value=this.value.replace(/[^\d\.]/gi,'')" value="${c.budget_amount }" /></td>
															<td>
																<select name="demand_date" class="form-control input-sm " value="${c.demand_date }">
																	<option value="1" ${"1"==c.demand_date?"selected":""}>1月</option>
																	<option value="2" ${"2"==c.demand_date?"selected":""}>2月</option>
																	<option value="3" ${"3"==c.demand_date?"selected":""}>3月</option>
																	<option value="4" ${"4"==c.demand_date?"selected":""}>4月</option>
																	<option value="5" ${"5"==c.demand_date?"selected":""}>5月</option>
																	<option value="6" ${"6"==c.demand_date?"selected":""}>6月</option>
																	<option value="7" ${"7"==c.demand_date?"selected":""}>7月</option>
																	<option value="8" ${"8"==c.demand_date?"selected":""}>8月</option>
																	<option value="9" ${"9"==c.demand_date?"selected":""}>9月</option>
																	<option value="10" ${"10"==c.demand_date?"selected":""}>10月</option>
																	<option value="11" ${"11"==c.demand_date?"selected":""}>11月</option>
																	<option value="12" ${"12"==c.demand_date?"selected":""}>12月</option>
																</select>
															</td>
														</tr>
													</c:forEach>
												</c:if>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="9" style="text-align: right">合计：</td>
													<td colspan="2">
														<c:if test="${not empty purchase.id }">
														<input type="text" name="all_amount" id="all_amount" class="form-control input-sm  w80" value="${purchase.all_amount }" readonly ignore />
														</c:if>
														<c:if test="${empty purchase.id }">
														<input type="text" name="all_amount" id="all_amount" class="form-control input-sm  w80" value="" readonly ignore />
														</c:if>
													</td>
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
	function checkMtorder(o) {
		object = $(o).parent().parent().parent().parent();//获取当前点击对象
		modal(1000, 650, '${ctx}/material/publicCommodity.do');
	}
	function handleMaterial(material) {
		//查询库存数量
		$.ajax({
			type : "POST",
			url: "${ctx}/purchase/selectStock.do", 
			data:{material:material.id},
			success: function(data){
				object.find("input[name='stock']").val(data);
			}
		});
		object.find("input[name='materiel_id']").val(material.id);
		object.find("input[name='code']").val(material.code);
		object.find("input[name='name']").val(material.name);
		object.find("input[name='unit']").val(material.unit);
		object.find("input[name='spec']").val(material.spec);
	}
	//增加明细
	function addMX() {
		addTr('#mxTbody', 0);
		$('#quanxuan').on('ifChecked', function(event) {
			$('input[name="ids"]').iCheck('check');
		});
		$('#quanxuan').on('ifUnchecked', function(event) {
			$('input[name="ids"]').iCheck('uncheck');
		});
	}
	//删除明细
	function delTr1(table) {
		var vTb = $(table);
		var vChecked = $(table + " tr:visible td input:checked");
		if (vChecked.length == 0) {
			alert("请选择要删除的明细");
			return;
		}
		var vTr = vChecked.parent().parent().parent();
		vTr.remove();
		changePurchaseNumber();//触发合计事件
	}
	//合计
	function changePurchaseNumber(o) {
		var count = 0;
		$("#mxTbody input[name='budget_amount']").each(function(i) {
			if ($(this).val() != "") {
				count = parseFloat(count) + parseFloat($(this).val());
			}
		});
		$("#all_amount").val(count);
	}
	// 保存校验
	var obj = $("#formValidate").validate({
		rules : {
			year : {
				required : true
			}
		},
		messages : {
			year : {
				required : "请选择年份类信息"
			}
		}
	});

	function save(oTb) {
		$.ajax({
			url : "${ctx}/purchase/checkPlanNo.do",
			data : {
				year : $("#year").val(),
				departmentId : $("#departmentId").val(),
				id : $("#id").val()
			},
			type : "post",
			success : function(json) {
				if (json == "0") {
					alert("一个部门每‘年份’只能生成一个‘年度物资采购计划’");
				} else {
					if (obj.form()) {
						if (oTb.rows.length == 3) {
							alert("请添加明细!");
							return;
						}
						var code = $("input[name='code']");
						var demand_quantity = $("input[name='demand_quantity']");
						var budget_account = $("select[name='budget_account']");
						var budget_amount = $("input[name='budget_amount']");
						var count = code.length;
						var str="";
						for (i =1 ; i < count; i++) {
							if (isEmpty(code.eq(i).val())) {
								alert("请选择物料编码！");
								return;
							}
							if (str.indexOf(code.eq(i).val())>=0) {
								alert("物料编码不能重复");
								return;
							}else{
								str=str+","+code.eq(i).val();
							}
							if (isEmpty(demand_quantity.eq(i).val())){
								alert("请输入需求数量");
								demand_quantity.eq(i).focus();
								return false;
							}
							if (isEmpty(budget_account.eq(i).val())) {
								alert("请选择预算科目");
								budget_account.eq(i).focus();
								return false;
							}
							if (isEmpty(budget_amount.eq(i).val())) {
								alert("请输入预算金额");
								budget_amount.eq(i).focus();
								return false;
							}
						}
						changeDetails("mxtable", "purchaseDetailList");

						document.planForm.submit();
					}
				}
			}
		});

	}
</script>
</html>