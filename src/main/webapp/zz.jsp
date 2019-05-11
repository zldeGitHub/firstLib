<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>信息</title>
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<form id="form1">
		<input type="hidden" value="${loginInfo.id }" name="loginID">

	<h2>当前操作：转账。请输入转入账号和金额后点“转账”按钮</h2>
	<div >      	转入账号：          <input type="text" id="zzws" name="user.cardNo"></div>
	<div>       转账金额：          <input type="text" id="zzje" name="zzje"></div>
	<div><input type="button" value="转账"></div>


</form>


</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/project.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jump.js"></script>
<script type="text/javascript">

$("#form1 :button").bind("click", function(){
	alert("${loginInfo.id }");
	alert("${loginInfo.status }");
	if($("#zzws").val().trim().length!=16){
		alert("请正确的账号位数!!")
	}else if($("#zzws").val().trim()=="${loginInfo.cardNo }"){
		alert("不能给自己转账")
	}else if("${loginInfo.balance }"<parseInt($("#zzje").val().trim())){
		alert("请正确输入金额！！！！");
	}else if(parseInt("${loginInfo.status }")==0){
		alert("此账户已经冻结！！");
	}else{
		toJump("user/zz",$("#form1").serialize());
	}
});


/* $(".query #form1 :button").bind("click", function() {
	
	/*
	 * serialize方法, 可以将表单的参数格式化成一个参数字符串
	 */
	//alert($("#form1").serialize());
/*  	toJump("user_query", $("#form1").serialize()+"&pa.pageSize="+size);
});  */

</script>

</html>










