<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	p>당신의 점수는: <strong th:text="${score}"></strong> / <strong th:text="${total}"></strong> 점입니다.</p>
</body>
</html>