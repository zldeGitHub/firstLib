<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>示例</title>
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div><h3>发布房源</h3></div>
	<div><a href="${pageContext.request.contextPath }/info/query">返回首页</a></div>
	<form id="form1">
		<div>房屋描述：<input type="text" class="descfw" name="houseDesc" value="${infohehe.houseDesc} "></div>
		<div>
			<select name="typeId">
				<option value="">请选择</option>
					<option value="1"
						<c:if test="${infohehe.typeId==1}">selected</c:if> 
					>一室一厅</option>
					<option value="2"
						 <c:if test="${infohehe.typeId==2}">selected</c:if>
					>两室一厅</option>
					<option value="3"
						 <c:if test="${infohehe.typeId == 3 }">selected</c:if>
					>三室一厅</option>
			</select>
		</div>
		<div>租金：<input type="text" class="typemon" name="monthlyRent" value="${infohehe.monthlyRent}">元/月</div>
		<div>
			<input type="button" value="提交">
			<input type="reset" value="重置">
		</div>
	
	</form>

</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/project.js"></script>
<script type="text/javascript">
	
		$("[value='提交']").bind("click",function(){
			alert("yyyyyyy");
			if($(".descfw").val().trim()==""){
				alert("房屋描述必须填写")
			}
	
			alert($("#form1").serialize());
			var str=$(".typemon").val().trim();
			if(str.match("^[0-9]*$")){
				if(parseInt($(".typemon").val().trim())==1){
					alert("保存失败");
					location="${pageContext.request.contextPath }/info/add?"+$('#form1').serialize(); 
				}
				 location="${pageContext.request.contextPath }/info/add?"+$('#form1').serialize(); 
			}else{
				alert("输入错误")
			}
		});
	

</script>
</html>