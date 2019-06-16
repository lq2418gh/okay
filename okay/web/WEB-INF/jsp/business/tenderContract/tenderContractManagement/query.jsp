<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>协议招标管理查询</title>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
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
										<span class="label label-primary">招标管理>>合同招标>>查询</span>
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form:form name="tenderContractHead" commandName="tenderContractHead" id="tenderContractHead" action="${ctx}/tenderContract/query.do">
										<table id="queryTable" class="table table-condensed ">
											<tr>
												<th>招标编号</th>
												<td><form:input path="tender_no" id="tender_no" maxlength="32" cssClass="form-control input-sm"/></td>
												<th>中标供应商</th>
												<td><form:input path="big_supplier_name" id="big_supplier_name" maxlength="64" cssClass="form-control input-sm"/></td>
												<th>状态</th>
												<td>
													<form:select name="state" path="state" class="form-control input-sm " >
														<form:option value="">全部</form:option>
														<form:option value="新建">新建</form:option>
														<form:option value="发布">发布</form:option>
														<form:option value="中标">中标</form:option>
														<form:option value="废标">废标</form:option>
													</form:select>
												</td>
											</tr>
											<tr>
												<th>发布日期</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="release_date_begin" path="release_date_begin" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="release_date_end" path="release_date_end" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th>开标日期</th>
												<td>
													<div class="input-group">
														<form:input type="text" id="open_date_begin" path="open_date_begin" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearBegin">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
													<div class="input-group">
														<form:input type="text" id="open_date_end" path="open_date_end" cssClass="form-control input-sm form_datetime" readonly="true"/>
														<span class="input-group-btn">
															<button class="btn btn-primary btn-sm" type="button" name="clearEnd">
																<span class="glyphicon glyphicon-remove"></span>
															</button>
														</span>
													</div>
												</td>
												<th></th>
												<td></td>
											</tr>
											<tr>
												<td colspan="6" id="tools"><input type="submit" value="查询" class="btn btn-primary btn-xs" />
													<button type="button" value="重置" onclick="resetControl('tenderContractHead')" class="btn btn-primary btn-xs">重置 </button>
												</td>
											</tr>
										</table>
									</form:form>
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
								<security:authorize ifAnyGranted="ROLE_TENDERCONTRACT_ADD">
								<a class="btn btn-primary btn-xs" href='${ctx}/tenderContract/editAndEcho.do'>新建招标</a>
								</security:authorize>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<table class="table table-striped table-condensed table-hover">
										<tr>
											<th width="10%">序号</th>
											<th width="18%">招标编码</th>
											<th width="18%">发布日期</th>
											<th width="18%">开标日期</th>
											<th width="18%">状态</th>
											<th width="18%">中标供应商</th>
										</tr>
										<c:forEach var="t" items="${list}" varStatus="v">
											<tr>
												<td>${v.count}</td>
												<td><a href="${ctx}/tenderContract/view.do?id=${t.id}">${t.tender_no }</a></td>
												<td><fmt:formatDate value="${t.release_date}" pattern="yyyy-MM-dd" /></td>
												<td><fmt:formatDate value="${t.open_date}" pattern="yyyy-MM-dd HH:mm" /></td>
												<td>${t.state}</td>
												<td>${t.big_supplier_name}</td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!------------- 分页开始 ------------->
								<table class="table table-condensed" id="pageTools">
									<tr>
										<td>
											<jsp:include page="../../../common/page.jsp">
												<jsp:param name="url" value="${pageUrl}" />
											</jsp:include>
										</td>
									</tr>
								</table>
								<!------------- 分页结束 ------------->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form id="condition" name="condition"  hidden="true" method="post">
		<input type="text" name="tender_no" value="${tenderContractHead.tender_no}">
		<input type="text" name="big_supplier_name" value="${tenderContractHead.big_supplier_name}">
		<input type="text" name="state" value="${tenderContractHead.state}">
		<input type="text" name="release_date_begin" value="${tenderContractHead.release_date_begin}">
		<input type="text" name="release_date_end" value="${tenderContractHead.release_date_end }">
		<input type="text" name="open_date_begin" value="${tenderContractHead.open_date_begin }">
		<input type="text" name="open_date_end" value="${tenderContractHead.open_date_end }">
	</form>
</body>
</html>