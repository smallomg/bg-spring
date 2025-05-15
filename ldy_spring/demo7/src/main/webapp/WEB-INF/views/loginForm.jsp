<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 폼</h1>
	<form action="Login" method="post">
    id : <input type="text" name="id" id="id"><br>
    pw : <input type="password" name="pw" id="pw"><br>
    <input type="submit" value="로그인">
	</form>
<c:if test="${not empty msg}">
    <p style="color:red">${msg}</p>
</c:if>

<c:if test="${not empty errorMsg}">
    <p style="color:red">${errorMsg}</p>
</c:if>
	

</body>

<script>

</script>
</html>