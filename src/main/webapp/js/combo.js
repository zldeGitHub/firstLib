
$(".query #form1 :button").bind("click", function() {
	
	/*
	 * serialize方法, 可以将表单的参数格式化成一个参数字符串
	 */
	//alert($("#form1").serialize());
	toJump("query", $("#form1").serialize());
});
