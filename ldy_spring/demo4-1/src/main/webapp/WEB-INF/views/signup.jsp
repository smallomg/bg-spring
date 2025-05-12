<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	<form action="SignUp" method="post" onsubmit="return validateForm()">
		ID: <input type="text" id="id" name="id">
		<button type="button" onclick="idcheck()">아이디 중복 확인</button>
		<br> PW: <input type="password" id="pw" name="pw"><br>
		PWCHECK: <input type="password" id="pwcheck" name="pwcheck"
			onblur="pwCheck()"><br> NAME: <input type="text"
			id="name" name="name"><br> <input type="submit"
			value="회원가입">
	</form>
	<div id="demo1"></div>
	<div id="demo2"></div>
	<a href="/">인덱스 페이지 이동</a>
	<br>

	<button type="button" onclick="selectAll()">새로고침</button>
	<br>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>PW</th>
				<th>NAME</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>
	<script>
		function selectAll() {
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				const list = JSON.parse(xhr.responseText);
				let html = "";
				for (let i = 0; i < list.length; i++) {
					html += "<tr>"
							+ "<td>"
							+ list[i].id
							+ "</td>"
							+ "<td>"
							+ list[i].pw
							+ "</td>"
							+ "<td>"
							+ list[i].name
							+ "</td>"
							+ "<td><button type='button' onclick='updateUser(\""
							+ list[i].id
							+ "\")'>수정</button></td>"
							+ "<td><button type='button' onclick='deleteUser(\""
							+ list[i].id + "\")'>삭제</button></td>" + "</tr>";

				}
				document.getElementById('tbody').innerHTML = html;
			}

			xhr.open('GET', '/selectAll');
			xhr.send();
		}

		function deleteUser(id) {
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				if (xhr.responseText === "1") {
					alert("삭제하겠습니다");
				} else {
					alert("삭제가 안되었습니다 제대로 확인해 주세요");
				}
				selectAll(); // 삭제 후 목록 새로고침
			}
			xhr.open('GET', '/deleteUser?id=' + id);
			xhr.send();
		}

		function updateUser(id) {
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				alert(xhr.responseText);
				selectAll(); 
			}
			xhr.open('GET', '/updateUser?id=' + id);
			xhr.send();
		}
		
	</script>

	<script>
		let idValid = false;
		function idcheck() {
			const id = document.getElementById('id').value;
			if (!id) {
				alert('아이디를 입력하세요.');
				return;
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

		let pwValid = false;
		function pwCheck() {
			const pw = document.getElementById('pw').value;
			const pwcheck = document.getElementById('pwcheck').value;

			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				if (xhr.responseText == "1") {
					document.getElementById('demo2').innerHTML = "비밀번호가 다릅니다";
					pwValid = false;
				} else {
					document.getElementById('demo2').innerHTML = "비밀번호가 같습니다";
					pwValid = true;
				}

			}
			xhr.open('GET', '/pwCheck?pw=?' + pw + '&pwcheck=?' + pwcheck);
			xhr.send();
		}

		function validateForm() {
			if (!idValid) {
				alert('아이디 중복 확인을 해주세요.');
				return false;
			}
			if (!pwValid) {
				alert('비밀번호가 일치하지 않습니다.');
				return false;
			}
			return true;
		}
	</script>
</body>
</html>
