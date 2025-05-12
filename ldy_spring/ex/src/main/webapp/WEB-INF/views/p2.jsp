<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>경남 문화재 목록</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 20px;
        color: #333;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        background-color: white;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: center;
        vertical-align: middle;
    }

    th {
        background-color: #34495e;
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e9f5ff;
    }

    img {
        max-width: 100px;
        max-height: 100px;
        border-radius: 4px;
        transition: transform 0.3s;
    }

    img:hover {
        transform: scale(1.2);
    }

    a {
        text-decoration: none;
    }

    p {
        text-align: center;
        font-size: 1.1em;
    }
</style>


</head>
<body>
	<h1>경남 문화재 목록</h1>

	<c:if test="${not empty errorMsg}">
		<p style="color: red;">${errorMsg}</p>
	</c:if>

	<c:if test="${not empty itemList2}">
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>명칭</th>
					<th>한문 명칭</th>
					<th>내용</th>
					<th>소유자</th>
					<th>관리자</th>
					<th>시대</th>
					<th>지정 날짜</th>
					<th>주소</th>
					<th>위도</th>
					<th>경도</th>
					<th>파일1</th>
					<th>파일2</th>
					<th>파일3</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${itemList2}">
					<tr>
						<td>${item.dojiJungNo}</td>
						<td>${item.myongching}</td>
						<td>${item.myongchingHanmun}</td>
						<td>${item.content}</td>

						<td>${item.soyoujaName}</td>
						<td>${item.adminName}</td>
						<td>${item.sidae}</td>

						<td>${item.jijungDate}</td>
						<td>${item.address1}</td>
						<td>${item.utmkX}</td>
						<td>${item.utmkY}</td>
						<td><c:if test="${not empty item.fileurl1}">
								<a href="${item.fileurl1}" target="_blank"> <img
									src="${item.fileurl1}" alt="이미지1">
								</a>
							</c:if></td>
						<td><c:if test="${not empty item.fileurl2}">
								<a href="${item.fileurl2}" target="_blank"> <img
									src="${item.fileurl2}" alt="이미지2">
								</a>
							</c:if></td>
						<td><c:if test="${not empty item.fileurl3}">
								<a href="${item.fileurl3}" target="_blank"> <img
									src="${item.fileurl3}" alt="이미지3">
								</a>
							</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

</body>
</html>
