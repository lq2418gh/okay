<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看物资采购审批表</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<style type="text/css">
#mxtable th{
	text-align:center
}
#mxtable tr td{
	text-align:center
}
</style>
<script type="text/javascript">
//合计
$(function(){ 
      // do something 
	var count = 0;
	$("td[name='amount']").each(function() {
		if ($(this).text() != 0) {
			count = parseFloat(count) + parseFloat($(this).text());
		}
	});
	$("#all_amount").html(count+"元");
	
	$("#big_all_amount").html(convertCurrency(count));
});
//将数字金额转换为大写人民币汉字
function convertCurrency(money) {
  //汉字的数字
  var cnNums = new Array('零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖');
  //基本单位
  var cnIntRadice = new Array('', '拾', '佰', '仟');
  //对应整数部分扩展单位
  var cnIntUnits = new Array('', '万', '亿', '兆');
  //对应小数部分单位
  var cnDecUnits = new Array('角', '分', '毫', '厘');
  //整数金额时后面跟的字符
  var cnInteger = '整';
  //整型完以后的单位
  var cnIntLast = '元';
  //最大处理的数字
  var maxNum = 999999999999999.9999;
  //金额整数部分
  var integerNum;
  //金额小数部分
  var decimalNum;
  //输出的中文金额字符串
  var chineseStr = '';
  //分离金额后用的数组，预定义
  var parts;
  if (money == '') { return ''; }
  money = parseFloat(money);
  if (money >= maxNum) {
    //超出最大处理数字
    return '';
  }
  if (money == 0) {
    chineseStr = cnNums[0] + cnIntLast + cnInteger;
    return chineseStr;
  }
  //转换为字符串
  money = money.toString();
  if (money.indexOf('.') == -1) {
    integerNum = money;
    decimalNum = '';
  } else {
    parts = money.split('.');
    integerNum = parts[0];
    decimalNum = parts[1].substr(0, 4);
  }
  //获取整型部分转换
  if (parseInt(integerNum, 10) > 0) {
    var zeroCount = 0;
    var IntLen = integerNum.length;
    for (var i = 0; i < IntLen; i++) {
      var n = integerNum.substr(i, 1);
      var p = IntLen - i - 1;
      var q = p / 4;
      var m = p % 4;
      if (n == '0') {
        zeroCount++;
      } else {
        if (zeroCount > 0) {
          chineseStr += cnNums[0];
        }
        //归零
        zeroCount = 0;
        chineseStr += cnNums[parseInt(n)] + cnIntRadice[m];
      }
      if (m == 0 && zeroCount < 4) {
        chineseStr += cnIntUnits[q];
      }
    }
    chineseStr += cnIntLast;
  }
  //小数部分
  if (decimalNum != '') {
    var decLen = decimalNum.length;
    for (var i = 0; i < decLen; i++) {
      var n = decimalNum.substr(i, 1);
      if (n != '0') {
        chineseStr += cnNums[Number(n)] + cnDecUnits[i];
      }
    }
  }
  if (chineseStr == '') {
    chineseStr += cnNums[0] + cnIntLast + cnInteger;
  } else if (decimalNum == '') {
    chineseStr += cnInteger;
  }
  return chineseStr;
}
//提交
function commit(id,purchase_type){
	$.ajax({
		type : "POST",
		url: "${ctx}/materialPurchase/commit.do", 
		data:{id:id,purchase_type:purchase_type},
		success: function(){
		    alert("提交成功");
		    location.reload();
		}
	});
}
</script>
</head>
<body>
	<div id="context">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;"> 
										<span class="label label-primary">采购申请管理>>物资采购审批表>>查看</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<table id="queryTable" class="table table-condensed">
										<tr>
											<th>填报日期</th>
											<td><fmt:formatDate value="${materialPurchase.input_date}" pattern="yyyy-MM-dd" /></td>
											<th>编号</th>
											<td>${materialPurchase.purchase_no}</td>
										</tr>
									</table>
									<table id="mxtable" class="table table-striped table-condensed table-hover" border="1" bordercolor="#DDDDDD">
										<tr>
							    			<th>品名</th>
							    			<th>规格型号</th>
							    			<th>单位</th>
							    			<th>数量</th>
							    			<th>单价(元)</th>
							    			<th>金额(元)</th>
							    			<th>年度预算(元)</th>
							    			<th>预算使用</th>
							    			<th>预算科目</th>
							    			<th>库存</th>
							    		</tr>
							    		<c:forEach items="${materialPurchase.materialPurchaseDetailList}" var="s" >
							    		<tr id="texts">
							    			<td>${s.name}</td>
							    			<td>${s.spec}</td>
							    			<td>${s.unit}</td>
							    			<td>${s.main_Quantity}</td>
							    			<td>${s.main_Price}</td>
							    			<td name="amount">${s.amount}</td>
							    			<td>${s.budgetAmount}</td>
							    			<td>${s.budgetuse}</td>
							    			<td>${s.account}</td>
							    			<td>${s.stock}</td>
							    		</tr>
							    		</c:forEach>
							    		<tr>
							    			<td>合计金额小写:</td>
							    			<td colspan="9" id="all_amount"></td>
							    		</tr>
										<tr>
											<td>合计金额大写:</td>
											<td colspan="9" id="big_all_amount"></td>
										</tr>
										<tr>
											<td>归口部门:</td>
											<td colspan="9">${materialPurchase.company_name }</td>
										</tr>  
										<tr>
											<td>采购说明:</td>
											<td colspan="9">${materialPurchase.purchase_explain }</td>
										</tr>
									</table>
									<table class="table table-condensed table-hover" border="1" bordercolor="#DDDDDD">
										<tr>
											<td colspan="2">申购部门:${materialPurchase.company_name }<br/>申购人:${materialPurchase.realName }<br/>采购时限:<fmt:formatDate value="${materialPurchase.input_date}" pattern="yyyy-MM-dd" /><br/>联系电话:${materialPurchase.contract_number }</td>
											<td colspan="4">申购部门领导批:</td>
											<td colspan="4">实物管理部门核准:</td>
										</tr>
										<tr height="30px">
											<td colspan="2">公司分管领导审批:</td>
											<td colspan="8"></td>
										</tr>
										<tr height="60px">
											<td colspan="2">财务部审核意见:</td>
											<td colspan="4">建议价格(参考历史和市价):</td>
											<td colspan="4">核准:</td>
										</tr>
										<tr height="60px">
											<td colspan="2">财务部审核意见:</td>
											<td colspan="4">预算审批:</td>
											<td colspan="4">核准:</td>
										</tr>
										<tr height="30px">
											<td colspan="2">财务总监审批:</td> 
											<td colspan="8"></td>
										</tr>
										<tr height="30px">
											<td colspan="2">总裁审批:</td>
											<td colspan="8"></td>
										</tr>	
										<tr height="25px">
											<td colspan="10" style="text-align: center">
												<c:if test="${materialPurchase.state=='新建'}">
													<security:authorize ifAllGranted="ROLE_MATERIALPURCHASE_SUBMIT">
														<input type="button" value="提交 " onClick="commit('${materialPurchase.id }','${materialPurchase.purchase_type }')" class="btn btn-primary btn-xs" />
													</security:authorize>
													<security:authorize ifAnyGranted="ROLE_MATERIALPURCHASE_EDIT">
														<a class="btn btn-primary btn-xs" href="${ctx}/materialPurchase/editAndEcho.do?id=${materialPurchase.id}">编辑</a>
													</security:authorize>
												</c:if>
														<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_materialPurchase&fk_id=${materialPurchase.id }&importNo=${materialPurchase.purchase_no }" >文件管理</a>
														<a class="btn btn-primary btn-xs" href="${ctx}/materialPurchase/query.do">返回</a>
											</td>
										</tr>								
									</table>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
