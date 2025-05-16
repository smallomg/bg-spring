<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>퀴즈</title>
</head>
<body>
    <h1>상식 퀴즈</h1>

    <form action="/submit" method="post">
        <c:forEach var="quiz" items="${list}" varStatus="status">
            <div>
                <p><b>${status.index + 1}. ${quiz.question_text}</b></p>
                <input type="hidden" name="quizList[${status.index}].quiz_id" value="${quiz.quiz_id}" />
                <input type="text" name="quizList[${status.index}].user_answer" />
            </div>
            <br/>
        </c:forEach>

        <input type="submit" value="제출" />
    </form>
	<script>
	function startTimer() {
        let cnt = 3600;
        let plus = false;

        const demo = document.getElementById('demo');

        const intervalId = setInterval(() => {

            demo.innerHTML = Math.floor(cnt / 60) + "분" + (cnt % 60) + "초 후 초기화가됩니다";
            if (cnt === 0) {
                alert("초기화가 됩니다")
                clearInterval(intervalId);
                document.getElementById("q1").value = "1"
                document.getElementById("q2").value = "";
                document.getElementById("q3").value = "";
                document.getElementById("q4").value = "";
                document.getElementById("q5").value = "";
                document.getElementById("q6").value = "";
                document.getElementById("result").innerText = "";
                document.getElementById("result2").innerText = "";
                demo.innerText = "";

                startTimer();
            }
            else {

            }
            cnt--;

        }, 1000);
    }

    


    startTimer();
</script>

</body>
</html>
