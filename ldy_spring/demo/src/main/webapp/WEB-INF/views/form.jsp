<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Page</title>
</head>
<body>
    <h1>FORM Page</h1>
    <hr>
    <form action="form" method="get">
        ID : <input type="text" name="id"><br>
        PW : <input type="password" name="pw"><br>
        이름 : <input type="text" name="name"><br>
        번호 : <input type="text" name="phone"><br>
        <input type="submit" value="등록">
    </form>
    
    <h2>p3</h2>
     <form action="p3" method="GET">
        ID : <input type="text" name="id"><br>
        PW : <input type="password" name="pw"><br>
       
        <input type="submit" value="등록">
    </form>
    <a href="p3/aaa/1234">PathVariable 파라미터 처리하기</a>

    <h2>등록된 전체 데이터</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>PW</th>
        <th>이름</th>
        <th>번호</th>
    </tr>
    <c:forEach var="item" items="${list}">
        <tr>
            <td>${item.id}</td>
            <td>${item.pw}</td>
            <td>${item.name}</td>
            <td>${item.phone}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
