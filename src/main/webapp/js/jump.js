
//ajax局部页面刷新
function toJump(url, param) {
	//alert(webroot+url+":"+param);
	$.post(
		webroot+url, //拼接绝对路径
		param,
		function(data){
			//alert(data);
			$("#main").html(data); //将id main中的内容替换成data接收到的页面
		},
		"html" //表示, data接收的数据类型是页面
	);
}