/* 设置修改结果的提示效果 */
/*var hintMsg,
	msgClass;

//alert(hintMsg+","+msgClass);
if(hintMsg){
	$(".hint").html(hintMsg).addClass(msgClass).slideUp(2000);
}*/
$(".hint").show();
$(".hint").slideUp(2000);

/* 为所有按钮绑定事件 */
$(":button").each(function() {
	
	var fun;
	//等值判断, 匹配函数
	switch ($(this).val()) {
	case "修改":
	case "取消":
		fun = function() {
			$(":button,.modify").toggle();
		}
		break;
	case "保存":
		fun = function() {
			
			//获取id的值
			var id = $("#form1 [role='id']").text();
			//alert(id);
			toJump("modify", $("#form1").serialize()+"&id="+id);
		}
		break;
	case "删除":
		fun = function() {
			
			if(!confirm("确定删除当前用户的数据吗?")){
				return;
			}
		
			//获取id的值
			var id = $("#form1 [role='id']").text();
			toJump("delete", {id:id});
		}
		break;
	default:
		break;
	}
	//绑定
	$(this).bind("click", fun);
});
