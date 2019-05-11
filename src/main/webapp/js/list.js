
//获取tr数组的最大下标
var maxIndex = $(".list table tr").length - 1;
//获取除首尾行的tr数组
$(".list table tr:lt("+maxIndex+"):gt(0)").each(function(){
	$(this).hover(
		function() {
			$(this).addClass("hover");
		},
		function() {
			$(this).removeClass("hover");
		}
	).bind("click", function() {
		//获取当前tr的id
		var id = $(this).find("input").val();
		toJump("entry/queryOne", {id:id});
	});
});