Validator = function() {
	this.ruleFunctionArray = new Array();
}

Validator.addRule = function(ruleFunction) {
	if(this.ruleFunctionArray == null) {
		this.ruleFunctionArray = new Array();
	}
	if(jQuery.isFunction(ruleFunction)) {
		this.ruleFunctionArray.push(ruleFunction);
	}
}

Validator.validate = function() {
	if(this.ruleFunctionArray == null) {
		this.ruleFunctionArray = new Array();
	}
	for(_f = 0; _f < this.ruleFunctionArray.length; _f++) {
		if(!this.ruleFunctionArray[_f].call()) {
			return false;
		}
	}
	return true;
}

function roundFun(numberRound,roundDigit) {   
    with(Math){   
        return round(numberRound*pow(10,roundDigit))/pow(10,roundDigit);   
    }   
} 

function isEmpty(value) {
	return $.trim(value).length == 0;
}

function required(value) {
	return $.trim(value).length > 0;
}

function minlength(value, param) {
	return $.trim(value).length >= param;
}

function maxlength(value, param) {
	return $.trim(value).length <= param;
}

function rangelength(value, param1, param2) {
	return ($.trim(value).length >= param1 &&  $.trim(value).length <= param2);
}

function number(value) {
	return /^-?(?:\d+)(?:\.\d{1,4})?$/.test(value);
}

function digits(value) {
	return /^\d+$/.test(value);
}

function alphanum(value) {
	return /^[a-zA-Z0-9]+$/.test(value);
}

function min(value, param) {
	return  value >= param;
}

function max(value, param) {
	return value <= param;
}

function range(value, param1, param2) {
	return (value >= param1 && value <= param2);
}
/*匹配非负数*/
function positivefloat(value){
	var v = value.replace(/[ ]/g,"");
	return /^(([1-9]\d{0,13})|0)(\.\d{1,4})?$/.test($.trim(v));		
}			
/*匹配中文、数字和英文 */				
function chinese(value) {
	return /^[\w\u4E00-\u9FFF]+$/.test(value);
}
/*匹配%&',;=?$等特殊字符*/
function special(value) {
	return /^[^~!@#$%^&*()_+！·#￥%……—*（）、''""|\/<>《》：；“”‘]*$/.test(value);
}
/*匹配手机*/
function mobile(value) {
	return /^(13[0-9]|15[0-9]|18[0-9])\d{8}$/.test(value);
}
/*匹配固定TEL*/
function tel(value) {
	return /^(\d{2,5}-\d{7,8})$/.test(value);
}
/*匹配固定TEL*/
function telOrMobile(value) {
	return /^(\d{2,5}-\d{7,8})$/.test(value) || /^(13[0-9]|15[0-9]|18[0-9])\d{8}$/.test(value);
}
/*匹配传真*/
function faxNo(value) {
	return /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/.test(value);
}
/*匹配非负整数*/
function isint(value) {
	var v = value.replace(/[ ]/g,"");
	return /^([0-9]\d{0,6}|0)$/.test($.trim(v));
}
function trimspace(value){
	return $.trim(value.replace(/[ ]/g,""));
}
/*匹配数量，并验证小数点后4位*/
function checkpositive(value){
	var v = value.replace(/[ ]/g,"");
	return /^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,4}|0\.(?!0+$)[0-9]{1,4})$/.test($.trim(v));
}
/*匹配金额，并验证小数点后2位*/
function checkprice(value){
	var v = value.replace(/[ ]/g,"");
	return /^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,2}|0\.(?!0+$)[0-9]{1,2})$/.test($.trim(v));
}
/*匹配金额，并验证小数点后6位*/
function checkpriceCustom(value){
	var v = value.replace(/[ ]/g,"");
	return /^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,6}|0\.(?!0+$)[0-9]{1,6})$/.test($.trim(v));
}
/*	正则表达式验证正数
 * ^(([1-9][0-9]{0,9}\.[0-9]{0,3}[1-9])|([1-9][0-9]{0,9})|(0\.[0-9]{0,3}[1-9]))$
   ^[1-9][0-9]{0,13}$|^(?:[1-9][0-9]{0,13}\.[0-9]{1,4}|0\.(?!0+$)[0-9]{1,4})$
 * */
