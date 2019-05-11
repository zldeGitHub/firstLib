<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>修改学员信息</title>
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div>
		<div><h3>修改学员信息</h3></div>
		<form id="form1">
			<table>
				<tr>
					<td>
						姓名：
						<input class="checkNull" type="text" name="sName" value="${studentInfo.sName }">
					</td>
				</tr>
				<tr>
					<td>
					性别:
						<select name="gender">
							<option value="">请选择</option>
							<option value="1"
								<c:if test="${studentInfo.gender == '男' }">selected</c:if>
							>男</option>
							<option value="2"
								<c:if test="${studentInfo.gender == '女' }">selected</c:if>
							>女</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
					生日：
						<input type="text" class="checkNull" name="birthday" value="${studentInfo.birthday }"> 
					</td>
				</tr>
				<tr>
					<td>
					电话：
						<input type="text" class="checkNull" name="telephone" value="${studentInfo.telephone }"> 
					</td>
				</tr>
				<tr>
					<td>
					E-mail：
						<input type="text" class="checkNull" name="email" value="${studentInfo.email }"> 
					</td>
				</tr>
				<tr>
					<td>
					班级：
						<select name="classId">
							<option value="">请选择</option>
							<option value="1"
								<c:if test="${studentInfo.classId == '1' }">selected</c:if>
							>一班</option>
							<option value="2"
								<c:if test="${studentInfo.classId == '2' }">selected</c:if>
							>二班</option>
							<option value="3"
								<c:if test="${studentInfo.classId == '3' }">selected</c:if>
							>三班</option>
							<option value="4"
								<c:if test="${studentInfo.classId == '4' }">selected</c:if>
							>四班</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" value="保存">
						<input type="button" value="返回">
					</td>
				</tr>
				
		
		
			</table>
		</form>
	</div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$("[value='保存']").bind("click",function(){
		alert("yyyyyyy");
		if($(".checkNull").val().trim()==""){
			alert("请完成内容填写")
		}
		if($("[name='gender']").val().trim()==1||$("[name='gender']").val().trim()==2){
			
			var str=$("[name='telephone']").val().trim();
			if(str.match("^[0-9]*$")||str.length==11){
				if($("[name='classId']").val().trim()==1||$("[name='classId']").val().trim()==2
						||$("[name='classId']").val().trim()==3||$("[name='classId']").val().trim()==4){
				 location="${pageContext.request.contextPath }/info/update?"+$('#form1').serialize(); 
				}
				alert("请选择班级！！！")
			}else{
				alert("正确输入电话号码！！！")
			}
		}else{
			alert("请选择性别！")
		}
	});


</script>
</html>