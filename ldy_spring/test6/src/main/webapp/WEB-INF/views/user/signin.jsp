<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Sign In Page 로그인 페이지</h1>

	<form action="login" method="post" onsubmit="return f()">
		ID : <input type="text" name="id" id="id"> 		<br>
		PW : <input type="password" name="pw" id="pw"> 	<br>
		<input type="submit" value="로그인">
	</form>

	<script>
	function f(){
		const id = document.getElementById("id").value.trim();
		const pw = document.getElementById("pw").value.trim();

		if (id === '') {
			alert("아이디를 입력해주세요");
			return false;
		}

		if (pw === '') {
			alert("비밀번호를 입력해주세요");
			return false;
		}
		   return true; 
	}
	</script>
</body>
</html>