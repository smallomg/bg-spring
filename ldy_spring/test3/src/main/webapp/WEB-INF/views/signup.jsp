<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지 Sign Up</h1>

	<form action="SignUp" method="post" onsubmit="return validateForm()">
		ID : <input type="text" name="id" id="id"><br> 
		<div id=demo1>아이디 중복 확인 칸</div>
		<button type="button" onclick="idcheck()">아이디 중복 확인</button><br>
		PW : <input type="text" name="pw" id="pw"><br> 
		NAME : <input type="text" name="name"><br> 
		PHONE : <input type="text" name="phone"><br>
		GRADE : <input type="text" name="grade"><br> 
		<input type="submit" value="등록">
	</form>

	<script>
		let idValid = false;
		function validateForm() {
			if (!idValid) {
				alert('아이디 중복 확인을 해주세요.');
				return false;
			}
			
		

			// ^ 	문자열의 시작
			// (?=.*[a-zA-Z]) 영문자 1개이상 포함
			// (?=.*[0-9])	숫자 1개 이상 포함
			// (?=.*[!@#$%^&*])	특수문자 1개 이상 포함 (지정된 것만)
			// $	문자열의 끝

			const pwRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{7,}$/;
			const pw = document.querySelector("#pw").value;
			if (!pwRegex.test(pw)) {
				alert("패스워드는 8개 이상의 문자열과 영문 기호 숫자로 구성되어야합니다");
				return false;
			}
		}
		
		
		
		function idcheck() {
			const idRegex = /^[a-zA-Z][a-zA-Z0-9]{7,}$/;
			// ^[a-zA-Z] : 첫 글자는 영문자
			// [a-zA-Z0-9]{7,} : 나머지 최소 7글자는 영문 또는 숫자
			const id = document.querySelector("#id").value;
			if (!idRegex.test(id)) {
				alert("아이디는 8개 이상의 문자열과 영문으로 시작하여야 합니다");
				return false;
			}
			
			
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				if (xhr.responseText === "1") {
					document.getElementById('demo1').innerHTML = "사용중인 아이디 입니다";
					idValid = false;
				} else {
					document.getElementById('demo1').innerHTML = "사용가능한 아이디";
					idValid = true;
				}

			}
			xhr.open('GET', '/idcheck?id=' + id);
			xhr.send();
		}
	</script>
</body>
</html>