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
              <span class="label label-primary">协议/合同管理>>协议管理>>查看</span></a></h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" >
            
                     <div class="panel-body">
              		
                <table id="queryTable" class="table table-condensed">
                  <tr>
                    <th>协议编码</th>
                    <td>
                    <input type="hidden" name="id" id="id" value="${frameHead.id}"/>
                     <input type="hidden" name="tenderFrame" id="tenderFrame" value="${frameHead.tenderFrame}"/>
                    ${frameHead.frameNo}
                    </td>
                    <th>品种</th>
                    <td>${frameHead.varieties}</td>
                    <th>签署日期</th>
                    <td><fmt:formatDate value="${frameHead.signDate}" pattern="yyyy-MM-dd"/></td>
                  </tr>
                  <tr>
                    <th>合同状态</th>
                    <td>${frameHead.state}</td>
                    <th>生效日期</th>
                    <td><fmt:formatDate value="${frameHead.effectDate}" pattern="yyyy-MM-dd"/></td>
                    <th>到期日期</th>
                    <td><fmt:formatDate value="${frameHead.expireDate}" pattern="yyyy-MM-dd"/></td>
                  </tr>
                  <tr>
                    <th>顺延年限</th>
                    <td>${frameHead.extendedYear}年</td>
                    <th>供应商</th>
                    <td style="width:24%">
                    <input type="hidden" name="supplier" id="supplier" value="${frameHead.supplier}"/>
                    ${frameHead.supplierName}
                    </td>
                    <th>开户单位</th>
                    <td>${frameHead.supplierName}</td>
                  </tr>
				  <tr>
                    <th>开户银行</th>
                    <td>${frameHead.opening_bank}</td>
                    <th>银行账号</th>
                    <td>${frameHead.bank_account_number}</td>
                    <th>乙方法人</th>
                    <td>${frameHead.legal_person}</td>
                  </tr>
                  <tr>
                    <th>联系电话</th>
                    <td>${frameHead.tel}</td>
                    <th>电子邮箱</th>
                    <td>${frameHead.email}</td>
                    <th>乙方负责部门</th>
                    <td>${frameHead.bResponsibleDepartment}</td>
                  </tr>
                  <tr>
                    <th>乙方负责人</th>
                    <td>${frameHead.linkman}</td>
                    <th>甲方名称</th>
                    <td>${frameHead.partyAName}</td>
                    <th>甲方负责人</th>
                    <td>${frameHead.partyAChargeperson}</td>
                  </tr>
                  <tr>
                    <th>甲方负责部门</th>
                    <td>${frameHead.aResponsibleDepartment}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>备注</th>
                    <td colspan="5">${frameHead.remark}</td>
                  </tr>
				  <tr>
					<td colspan="6" id="tools">
					<c:if test="${frameHead.state=='新建'||frameHead.state=='审批退回'}">
					<security:authorize ifAllGranted="ROLE_FRAME_MOD">
						<a class="btn btn-primary btn-xs"  href='${ctx}/frame/edit.do?id=${frameHead.id }'><span class="glyphicon glyphicon-pencil"></span>编辑</a>
					</security:authorize> 
					</c:if>
					<a class="btn btn-primary btn-xs" href="${ctx}/fileInfo/query.do?file_module_code=module_frame&fk_id=${frameHead.id }&importNo=${frameHead.frameNo }" >文件管理</a>
					<c:if test="${frameHead.state=='新建'}">
					<security:authorize ifAllGranted="ROLE_FRAME_SUBMIT">
						<a class="btn btn-primary btn-xs" href="${ctx }/frame/submit.do?id=${frameHead.id}" >提交</a>
					</security:authorize>
					</c:if>
					<c:if test="${frameHead.state=='生效'}">
					  <a class="btn btn-primary btn-xs" href="${ctx }/frame/end.do?id=${frameHead.id}" >合同终止</a>
					</c:if>
					  <a class="btn btn-primary btn-xs" href="${ctx }/frame/query.do">返回</a>
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
            		<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
            		</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:200px" > 
               <table id="jhtable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th>序号</th>
                    <th>交货地址</th>
                  </tr>
                  <tbody id="jhTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids1" /></td>
						<td style="width:100%">
						<input type="text" name="deliveryAddress" id="deliveryAddress" style="width:100%" class="form-control input-sm" maxlength="500" readonly/>	
						<input type="hidden" name="id1" id="id1" />
						</td>
					</tr>
					<c:if test="${not empty frameHead.id}">
						<c:forEach items="${frameHead.frameAddressList}" var="list" varStatus="v">
						<tr>
							<td>${v.count}</td>
							<td style="width:95%">
							${list.deliveryAddress }
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
            		<input type="text"  readonly="true" id="detail" name="detail" style="BACKGROUND-COLOR: transparent;border-style:none;width: 1px;"> 
            		</div>
            <div id="collapseTwo" class="panel-collapse collapse in" >
              <div class="panel-body" style="max-height:300px" > 
               <table id="fdtable" class="table table-striped table-condensed table-hover">
                  <tr id="title">
                    <th>序号</th>
                    <th>货品名称</th>
                    <th>单位</th>
                    <th>规格</th>
                    <th>箱容</th>
                    <th>单价</th>
                    <th>价格</th>
                    <th>拟采购量</th>
                    <th>起订量</th>
                  </tr>
                  <tbody id="fdTbody">
					<tr style="display: none;"  class="text-error">
						<td><input type="checkbox" name="ids2" /></td>
						<td >
							<div class="input-group" style="width:100%">
								<input type="text" name="name" style="width:100%" class="form-control input-sm" readonly="readonly" />
								<span class="input-group-btn">
								<input type="hidden" name="id2" id="id2"/>
								<input type="hidden" name="tenderFrameDetail" id="tenderFrameDetail"/>
								<input type="hidden" name="material" id="material"/>
									<button id="modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none"></button>
								</span>
							</div>
						</td>
						<td ><input type="text" name="unit" id="unit" style="width:100%" class="form-control input-sm" maxlength="10" readonly="readonly"/></td>
						<td ><input type="text" name="spec" id="spec" style="width:100%"  class="form-control input-sm "   readonly="readonly"/></td>
						<td ><input type="text" name="conversion" id="conversion" style="width:100%" class="form-control input-sm" maxlength="220" readonly="readonly"/></td>
						<td ><input type="text" name="mainPrice" id="mainPrice" style="width:100%" class="form-control input-sm " maxlength="10" readonly/></td>
						<td ><input type="text" name="secondaryPrice" id="secondaryPrice" style="width:100%"  class="form-control input-sm " maxlength="10"  readonly="readonly"/></td>
						<td ><input type="text" name="purchasedQuantity" id="purchasedQuantity" style="width:100%"  class="form-control input-sm " maxlength="10" readonly /></td>
						<td ><input type="text" name="minimumQuantity" id="minimumQuantity" style="width:100%"  class="form-control input-sm " maxlength="10"  readonly/></td>
					</tr>
					<c:if test="${not empty frameHead.id }">
						<c:forEach items="${frameHead.frameDetailList}" var="list" varStatus="v">
						<tr>
							<td>${v.count}</td>
							<td >
									${list.name}
									<input type="hidden" name="id2" id="id2" value="${list.id}" />
									<input type="hidden" name="tenderFrameDetail" id="tenderFrameDetail" value="${list.tenderFrameDetail}"/>
									<input type="hidden" name="material" id="material" value="${list.material }" />
							</td>
							<td >${list.unit}</td>
						    <td >${list.spec}</td>
						    <td >${list.conversion}</td>
						    <td>${list.secondaryPrice}</td>
						    <td >${list.mainPrice}</td>
						    <td >${list.purchasedQuantity}</td>
						    <td >${list.minimumQuantity}</td>
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


</script>
</html>