<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Index Page</h1>

	<a href="list">list 이동</a>
	<a href="queryString_member?id=aaa">개별조회 이동 (쿼리스트링)</a>

	<form action="input_member" method="get">
		ID : <input type="text" name="id"> 
		<input type="submit" value="개별조회">
	</form>
	
	<a href="insert">등록하기 </a>

</body>
</html>