<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>示例</title>
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:if test="${msg != null }">
	<div class="hint ${msgClass }">${msg }</div>
	<c:remove var="msg" scope="session"/>
	<c:remove var="msgClass" scope="session"/>
</c:if>

<div class="list">
	<c:if test="${pa.totalPage == 0 }">
	<div>未找到相关数据</div>
	</c:if>
	<c:if test="${pa.totalPage != 0 }">
	<h3>电子图书列表</h3>
	<table>
		<tr>
			<td>图书编号</td>
			<td>图书名称</td>
			<td>图书摘要</td>
			<td>上传人</td>
			<td>上传时间</td>
			<td>
				操作
			</td>
		</tr>
		
		<c:forEach items="${userList }" var="u" varStatus="i">
		<tr bgcolor="${i.index%2 == 0 ? 'lightblue':'lightgray' }">
			<input type="hidden" value="${u.id }" name="id">
			<td>${u.id }</td>
			<td>${u.title }</td>
			<td>${u.summary }</td>
			<td>${u.uploaduser }</td>
			<td>${u.createdate }</td>
			<td>
				<a href="javascript:toJump('entry/queryOne','id='${u.id })">修改</a>
				<a href="${pageContext.request.contextPath }/entry/delete?id=${u.id}" onclick="return confirm('确定删除吗？')">删除</a>
			</td>
		</tr>
		</c:forEach>
		
		<tr>
			<td colspan="3">
				第&nbsp;${pa.currPage }&nbsp;页&nbsp;
				/ &nbsp;共&nbsp;${pa.totalPage }&nbsp;页
				&nbsp;当前显示第&nbsp;${pa.start+1 }&nbsp;条
				到 第&nbsp;${pa.start+pa.pageSize > pa.count ? pa.count : pa.start+pa.pageSize }&nbsp;条
				每页
				<select>
					<c:forEach begin="5" end="20" step="5" var="n">
					<option value="${n }"
						<c:if test="${pa.pageSize == n }">selected</c:if>
					>${n }</option>
					</c:forEach>
				</select>
				条
			</td>
			<td colspan="3">
				<input type="button" value="首页"
					<c:if test="${pa.currPage == 1 }">disabled</c:if>
				>
				<input type="button" value="上一页"
					<c:if test="${pa.currPage == 1 }">disabled</c:if>
				>
				<input type="button" value="下一页"
					<c:if test="${pa.currPage == pa.totalPage }">disabled</c:if>
				>
				<input type="button" value="尾页"
					<c:if test="${pa.currPage == pa.totalPage }">disabled</c:if>
				>
				跳转到
				<select>
					<c:forEach begin="1" end="${pa.totalPage }" step="1" var="n">
					<option value="${n }"
						<c:if test="${pa.currPage == n }">selected</c:if>
					>${n }</option>
					</c:forEach>
				</select>
				页
			</td>
		</tr>
	</table>
	</c:if>
	
</div>

</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/project.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jump.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/page.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/list.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/combo.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/menu.js"></script>
<script type="text/javascript">
/* 获取必要的变量数据 */
webroot = "${pageContext.request.contextPath }/";
curr = parseInt("${pa.currPage}");
total = parseInt("${pa.totalPage}");
size = parseInt("${pa.pageSize}");

$(".hint").show();
$(".hint").slideUp(2000);
</script>
</html>