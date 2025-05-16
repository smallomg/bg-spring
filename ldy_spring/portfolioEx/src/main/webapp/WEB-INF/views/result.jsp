<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>결과</title></head>
<body>
    <h2>채점 결과</h2>
    <p>점수: ${score}점</p>

    <h3>당신의 답변:</h3>
    <ul>
        <li>1번: ${answers.q1}</li>
        <li>2번: ${answers.q2}</li>
        <li>3번: ${answers.q3}</li>
        <li>4번: ${answers.q4}</li>
        <li>5번: ${answers.q5}</li>
        <li>6번: ${answers.q6}</li>
    </ul>

    <a href="/">다시 풀기</a>
</body>
</html>
