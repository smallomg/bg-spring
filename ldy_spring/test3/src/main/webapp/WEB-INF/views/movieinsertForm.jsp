<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>영화 등록 페이지 Movie Insert</h1>
	
	<form action="/movieInsert" method="POST">
		TITLE : <input type="text" name= "title"><br>
		HOUR : <input type="text" name= "hour"><br>
		PRICE : <input type="text" name= "price"><br>
		INTRO : <input type="text" name= "intro"><br>
		PERIOD : <input type="text" name= "period"><br>
		<input type="submit" value="영화 등록"><br>
	</form>
</body>
</html>