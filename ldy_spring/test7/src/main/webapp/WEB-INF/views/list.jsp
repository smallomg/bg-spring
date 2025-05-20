<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Board List Page</h1>

	<table border="1">
		<thead>
			<tr>
				<th>bno</th>
				<th>title</th>
				<th>content</th>
				<th>writer</th>
				<th>regdate</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${list}" varStatus="status">
				<tr>
					<td>${b.bno}</td>
					<td>${b.title}</td>
					<td>${b.content}</td>
					<td>${b.writer}</td>
					<td>${b.regdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>