<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="800px" align="center">
	<tr>
		<th>글번호</th><th>ID</th><th>제목</th><th>조회수</th>
	</tr>
	
	<c:forEach items="${list}" var="h">
	<tr>
		<td>${h.fleanum}</td>
		<td>${h.id}</td>
		<td><a href="fleadetail?fleanum=${h.fleanum }">${h.fleatitle}</a></td>
		<td>${h.fleacnt}</td>
	</tr>
	</c:forEach>
</table>

<form action="fleasearch" method="post">
<table border="1" width="500px" align="center">
	<tr>
		<th><select name="fleakey">
			<option value="all">전체</option>
			<option value="fleatitle">제목</option>
			<option value="fleadetail">내용</option>
			<option value="id">작성자</option>
		</select>
		
		</th>
		<td><input class="value" type="text" name="fleavalue"></td>
		<td><input class="submit" type="submit" value="submit"></td>
	</tr>
</table>
</form>
</body>
</html>