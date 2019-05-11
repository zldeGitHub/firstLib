var categoryId;
$("[value='新增电子图书']").bind("click",function(){
	$.post(
			webroot+"entry/haha", //拼接绝对路径
			function(data){
				//alert(data);
				$("#main").html(data); //将id main中的内容替换成data接收到的页面
			},
			"html" //表示, data接收的数据类型是页面
		);
	
	
});


/*$("[value='查询']").bind("click",function(){

	toJump('entry/querylb',categoryId);
	
});*/

