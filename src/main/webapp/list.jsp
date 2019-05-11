<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>学员信息管理系统</title>
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%-- <c:if test="${msg != null }">
	<div class="hint ${msgClass }">${msg }</div>
	<c:remove var="msg" scope="session"/>
	<c:remove var="msgClass" scope="session"/>
</c:if> --%>


<div class="list">
	<div><h3>学员信息查询</h3></div>
	<table>
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>生日</td>
			<td>电话</td>
			<td>E-mail</td>
			<td>班级</td>
		</tr>
		<c:forEach items="${studentList }" var="u" varStatus="i">
		<tr bgcolor="${i.index%2 == 0 ? 'lightblue':'lightgray' }">
			<td><a href="${pageContext.request.contextPath }/info/queryOne">${u.id }</a></td>
			<td>${u.sName }</td>
			<td>${u.gender }</td>
			<td>
				<fmt:formatDate value="${u.birthday }" pattern="yyyy-MM-dd"/>
			</td>
			<td>${u.telephone }</td>
			<td>${u.email }</td>
			<td>${u.classesInfo.cName }</td>
		</tr>
		</c:forEach>
	</table>
</div>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/project.js"></script>
<script type="text/javascript">

</script>
</html>