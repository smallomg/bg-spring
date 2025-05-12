<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원등록 폼 페이지 regMemberForm</h1>

	<form action="/regist" method="POST">
		ID : <input type="text" name="id"><br>
		PW : <input type="text" name="pw"><br>
		NAME : <input type="text" name="name"><br>
		PHONE : <input type="text" name="phone"><br>
		GRADE : <input type="text" name="grade"><br>
		<input type="submit" value="등록">
	</form>

</body>
</html>