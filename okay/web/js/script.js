$(document).ready(function(){
	InitDatetimepicker();
	$('button[name="clearBegin"]').click(function(){
		$(this).parent().parent().children(":first").val("");
	});
	$('button[name="clearEnd"]').click(function(){
		$(this).parent().parent().children(":first").val("");
	});
	$('input').iCheck({
		checkboxClass: 'icheckbox_square-blue',
		radioClass: 'iradio_square-blue'
	});
	//复选框样式生成
	$('#quanxuan').on('ifChecked', function(event){
		$('input').iCheck('check');
	});
	$('#quanxuan').on('ifUnchecked', function(event){
		$('input').iCheck('uncheck');
	});
});
function InitDatetimepicker(){
	//日期选择器初始化
	$('.form_datetime').datetimepicker({
		minView: "month", 
		language:  'zh-CN',
		format: "yyyy-mm-dd",
		autoclose: 1,
		todayHighlight: 1,
		pickerPosition: "bottom-right"
	});
	$('.form_datetime_year').datetimepicker({
		startView: 'decade',  
	   	minView: 'decade',  
	   	format: 'yyyy',  
	   	maxViewMode: 2,  
	   	minViewMode:2,  
	    autoclose: true  
	});
	$('.form_datetime_minutes').datetimepicker({
		startView: "month",  
	   	minView: 0,  
	   	language:  'zh-CN',
	   	format: 'yyyy-mm-dd hh:ii',  
	    autoclose: true  
	});
	//复选框样式生成
	$("input[type='checkbox'][icheck!='false']").iCheck({
		checkboxClass: 'icheckbox_square-blue',
	});
	$("input[type='radio'][icheck!='false']").iCheck({
		radioClass: 'iradio_square-blue'
	});
}
function confirms(){ 
	return confirm("确定执行该操作吗？"); 
} 
//复选框全选
/*$("#checkBoss").click(function(){ 
	if(this.checked){ 
		$("input[name='ids']").each(function(){this.checked=true;}); 
	}else{ 
		$("input[name='ids']").each(function(){this.checked=false;}); 
	} 
});*/

//复选框
function checkBox(url,alertmsg){
	var idValues = '';
	var j = 0;
	$("input[name='ids']").each(function(){
		if(this.checked){
			j++;
			idValues += this.value + ",";
		}
	});
	if(j==0){
		alert("请至少选择一项！");
	}else{
		var v = window.confirm(alertmsg);
		if(v){
			window.location.href = url+'ids='+ idValues;
			window.top.document.getElementById('butclose').click();
		}
	}	
}
//增加明细中增加行的方法
function  addTr(table,index) {
	if(typeof(index) == "undefined"){
		index = 1;
	}
	var vTb= $(table);
	var vTr = $(table + " tr:eq(" + index + ")");
	var vTrClone = vTr.clone(false);
	vTrClone.appendTo(vTb);
	vTrClone.attr("style","display");
	
	/**
	 * 解决增加明细后复选框无法选择的问题，原因是没有复制选择框的点击事件（也就是说那些复制过来的div、ins元素是无效的），
	 * 所以在InitDatetimepicker方法中又会生成一套新的样式，但是是被覆盖的，并且层级嵌套，所以会出现无法选中和删除失败的问题
	 * 解决办法是在执行InitDatetimepicker方法之前将无效的样式删除。
	*/
	var firstTd = vTrClone.children(":first");
	var checkbox = firstTd.children(".icheckbox_square-blue");
	if(checkbox.length > 0){
		checkbox.children("ins").remove();
		firstTd.append(checkbox.html());
		checkbox.remove();
	}
	
	InitDatetimepicker();
	return vTrClone;
}
//增加明细中增加行的方法；找隐藏的第二行
function  addTr2(table) {
	var vTb= $(table);
	var vTr = $(table + " tr:eq(2)");
	var vTrClone = vTr.clone(true);//保证新增行可被选中
	vTrClone.attr("style","display");
	vTrClone.appendTo(vTb);
	InitDatetimepicker();
	return vTrClone;
}

//删除明细中删除行的方法
function delTrCommon(table){
	var vTb = $(table);
	var vChecked = $(table + " tr:visible td input:checked");
	if (vChecked.length == 0) {
		alert("请选择要删除的明细");
		return;
	}
	var vTr = vChecked.parent().parent().parent();
	vTr.remove();
}
function getName(obj,name){
	var selectText = $(obj).children("option:selected").text(); //获得被选中的项目的文本
	var tr = $(obj).parent().parent();
	if(selectText=="请选择"){
		tr.find("input[name='"+name+"']").val("");
	}else{
		tr.find("input[name='"+name+"'][zigou!='zigou']").val(selectText);
	}
}
function resetControl(asd) {
    $("#"+asd).find("input").each(function(){
    	var type = $(this).attr("type") || "text";
 		if(type == "text"){
 			$(this).val("");
 		}else if(type == "radio"){
 			$("input[name='"+$(this).attr("name")+"']:first").prop("checked",true);
 		}else if(type == "checkbox"){
 			$(this).prop("checked",false);
 		}
    });
    $("#"+asd).find("select").each(function(){
    	$(this).find("option:selected").removeAttr("selected");
    });
}
