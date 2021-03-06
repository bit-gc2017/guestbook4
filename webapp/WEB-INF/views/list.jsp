<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<% pageContext.setAttribute( "newLine", "\n" ); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/add" method="post">
		<table border="1" width="500">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols=65 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit" value="확인 "></td>
			</tr>
		</table>
	</form>
	<br>
		<c:forEach items="${list }" var="vo">
			<table border="1" width="500">
				<tr>
					<td>${vo.no }</td>
					<td>${vo.name }</td>
					<td>${vo.regDate }</td>
					<td><a href="${pageContext.request.contextPath }/deleteform/${vo.no }">삭제</a></td>
				</tr>
				<tr>
					<td colspan=4>${fn:replace(vo.content, newLine, "<br>")}</td>
				</tr>
			</table>
			<br>
			
		</c:forEach>
</body>
</html>