function isEmpty(obj){
	if(typeof(obj) == "undefined" || obj == null || obj== ""){
		return true;
	}else{
		return false;
	}
}

//复选框全选
$("#checkBoss").click(function(){ 
	if(this.checked){ 
		$("input[name='ids']").each(function(){this.checked=true;}); 
	}else{ 
		$("input[name='ids']").each(function(){this.checked=false;}); 
	} 
});

//复选框删除
function del(url){
	var idValues = '';
	var j = 0;
	$("input[name='ids']").each(function(){
		if(this.checked){
			j++;
			idValues += this.value + ",";
		}
	});
	if(j==0){
		alert("请至少选择一项删除！");
	}else{
		var v = window.confirm('该操作将同时删除记录下包含的子集，确定要删除当前记录吗？');
		if(v){
			window.location.href = url+'ids='+ idValues;
		}
	}	
}
//复选框查看
function upt(url){
	var ids = document.getElementsByName('ids');
	var j=0;
	var a=0;
	for(var i=0;i<ids.length;i++){ 			
		if(ids[i].checked == true){
			j++;
			a=ids[i].value;							
		}   				
	}
	if(j==0){
		alert("请至少选择一项修改！");
	}else if(j>1){
		alert("只能选择一项修改！");
	}else{
		window.location.href = url+'id='+ a;
	}
}
//修改表体明细名称
function changeDetails(tableId,detailname,startIndex){
	if(isEmpty(startIndex) || isNaN(startIndex)){
		startIndex = 1;
	}
	var selector;
	if(parseInt(startIndex) < 0){
		selector = "tr";
	}else{
		selector = "tr:gt(" + startIndex + ")";		
	}
	$("#" + tableId).find(selector).each(function(index){
		$(this).find("input,select,textarea").each(function(){
			if(typeof($(this).attr("ignore")) == "undefined"){
				$(this).attr("name",detailname+"["+index+"]." + $(this).attr("name"));
				if(isEmpty($(this).val())){
					if(typeof($(this).attr("int")) != "undefined"){
						$(this).val(0);
					}else if(typeof($(this).attr("number")) != "undefined"){
						$(this).val(0.0);
					}
				}
				
			}
		});
	});
}
//打开模态框
function modal(width,height,url){
	window.top.$("#modal-dialog").css("width",width + "px");
	window.top.$("#modal-body").css("height",height + "px");
	window.top.$("#a").attr("src",url);
	window.top.$("#modal").click();
}
//关闭模态框
function modalClose(){
	window.top.document.getElementById('butclose').click();
}
//校验状态
function checkState(url,no,state,handleFn){
	$.post(url,{"docNo":no,"state":state},function(result){
		if(result == "false"){
			alert("单据状态已变更！");
		}else{
			if(handleFn && typeof(handleFn) == "function"){
				handleFn.apply();
			}
		}
	});
}
//审核
function checkRole(work_no){
	$.ajax({
		type:"POST",
		url:"${ctx}/flowset/checkRole.do",
		data:{
			"work_no":work_no
		},
		success:function(data){
			if(data == "true"){
				modal(600,300,"${ctx}/flowset/check.do?work_no=" + work_no);
			}else{
				alert("无法审核");
			}
		}
	});
}
//查看审核记录
function appRecord(work_no){
	 modal(1000,550,"${ctx}/flowset/record.do?work_no=" + work_no);
}
//加减乘除方法，增加了根据精度四舍五入的功能
Number.prototype.add = function(num,precision){
	precision = precision || 2;
	return (this + num).toFixed(precision);
}
Number.prototype.sub = function(num,precision){
	precision = precision || 2;
	return (this - num).toFixed(precision);
}
Number.prototype.multi = function(num,precision){
	precision = precision || 2;
	return (this * num).toFixed(precision);
}
Number.prototype.div = function(num,precision){
	precision = precision || 2;
	return (this / num).toFixed(precision);
}