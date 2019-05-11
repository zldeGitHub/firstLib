<%@page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
</div>">

<div class="page">
<div class="top">
	
		图书分类：<select id="aaa" name="categoryId">
			<option value="1" >java</option>
			<option value="2">c++</option>
			<option value="3">python</option>
		</select>
		<input type="button" value="查询" onclick="javascript:toJump('entry/querylb','categoryId='categoryId)">
		<input type="button" value="新增电子图书">
</div>
		
<div id="main" class="main">
		<!-- <div class="welcome">
			欢迎您使用XXX系统
		</div> -->
</div>



</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/project.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jump.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/menu.js"></script>
<script type="text/javascript">
webroot = "${pageContext.request.contextPath }/";
loginId = "${loginInfo.id}";

$.post(
		webroot+"entry/query", //拼接绝对路径
		
		function(data){
			//alert(data);
			$("#main").html(data); //将id main中的内容替换成data接收到的页面
		},
		"html" //表示, data接收的数据类型是页面
	);
var x=document.getElementById("aaa").value;
categoryId=parseInt("x");

alert(${categoryId});


</script>
</html>