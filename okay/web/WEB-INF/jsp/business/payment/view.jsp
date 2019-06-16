<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑付款信息</title>
</head>


<body>

<div id="context">
  <div class="container">
<form:form id="formValidate" commandName="payment" name="payment" action="${ctx}/payment/save.do" method="post">
<form:hidden path="id"/>
<div class="row">
      <div class="span12">
        <div class="panel-group" id="accordion">
			<div class="panel panel-primary">
	            <div class="panel-heading">
					<h4 class="panel-title"><a id="example" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">
					<span class="label label-primary">付款管理>>付款登记>>查看</span></a></h4>
	            </div>
	              <div id="collapseOne" class="panel-collapse collapse in" >
					<div class="panel-body">
						<table id="queryTable" class="table table-condensed">
						    <tr>
								<th>付款单号</th>
								<td>${payment.paymentNo}
								 <input type="hidden" name="id" id="id" value="${payment.id}" readonly/>
								</td>
								 <th> 填报日期</th>
								 <td>
								 <fmt:formatDate value="${payment.fillingDate}" pattern="yyyy-MM-dd"/>
								 </td>
								 <th> 供应商</th>
								 <td>
									<input type="hidden" name="supplier" id="supplier" value="${payment.supplier}"/>
									${payment.supplier_name}
								</td>
							</tr>
							<tr>
								<th>供应商开户银行</th>
								<td>
								   ${payment.opening_bank}
								</td>
								<th>供应商银行账号</th>
								<td>
								   ${payment.bank_account_number}
								</td>
								<th>付款金额</th>
								<td id="big_all_amount">
								<input type="hidden" name="amount" id="amount" value="${payment.amount}"/>
								</td>
							</tr>
							<tr>
								<th>发票单编号</th>
								<td colspan="4">
									<input type="hidden" name="invoiceIds" id="invoiceIds" value="${payment.invoiceIds}"/>
									${payment.invoiceNos}
								</td>
								<td></td>
							</tr>
						    <tr>
								<th>入库单编号</th>
								<td colspan="4">
									<input type="hidden" name="storageIds" id="storageIds" value="${payment.storageIds}"/>
									${payment.storageNos}
								</td>
								<td></td>
							</tr>
							<tr>
								<th>协议编号</th>
								<td colspan="4">
									${payment.frameNos}
								</td>
								<td></td>
							</tr>
							<tr>
								<th>合同编号</th>
								<td colspan="4">
									${payment.contractNos}
								</td>
								<td></td>
							</tr>
							<tr>
								<th>付款说明</th>
								<td colspan="4">
									${payment.explain}
								</td>
								<td></td>
							</tr>
							<c:if test="${payment.state=='已付款'}">
								<tr>
								<th> 已付金额</th>
								<td id="amount_Paid">
								<input type="hidden" name="amountPaid" id="amountPaid" value="${payment.amountPaid}"/>
								</td>
								<td></td><td></td><td></td><td></td>
								</tr>
							</c:if>
							<tr>
								<td colspan="6" id="tools">
									<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_payment&fk_id=${payment.id }&importNo=${payment.paymentNo }" >文件管理</a>
							        <input type="button" value="关闭" class="btn btn-primary btn-xs" onClick="window.parent.parent.document.getElementById('butclose').click()" />
								</td>
							</tr>
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
<script type="text/javascript">
//合计
$(function(){ 
      // do something 
	var count = 0;
    var amountPaid=0
	count=$("#amount").val();
    amountPaid=$("#amountPaid").val();
	$("#big_all_amount").html(convertCurrency(count));
	$("#amount_Paid").html(convertCurrency(amountPaid));
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
</script>
</body>
</html>
