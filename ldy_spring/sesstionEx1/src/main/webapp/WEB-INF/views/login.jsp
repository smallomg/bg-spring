<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Login Page</h1>

	${msg}
	
	<form action="/login" method="post">
		ID : <input type="text" name="id" value="aaa">
		PW : <input type="text" name="pw" value="1234">
		<input type="submit" value="로그인">
	</form>
</body>
</html>
