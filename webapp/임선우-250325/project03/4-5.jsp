<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
</head>
<body>
    <h1 align="center">회원 가입</h1>
    <form action="4-6.jsp" method="post" align="center">
        이름: <input type="text"  name="name" ><br><br>
        이메일: <input type="email" name="email" ><br><br>
        비밀번호: <input type="password" name="password" ><br><br>

        성별: <input type="radio" name="gender" value="남성">남성
				<input type="radio"  name="gender" value="여성">여성<br><br>

        취미:
        <input type="checkbox" name="hobby" value="독서">독서
        <input type="checkbox" name="hobby" value="게임">게임
        <input type="checkbox" name="hobby" value="운동">운동<br><br>

        국가: 
        <select id="country" name="country">
            <option value="korea">한국</option>
            <option value="usa">미국</option>
            <option value="china">중국</option>
            <option value="japan">일본</option>
        </select><br><br>

        <input type="submit" value="가입하기">
    </form>
</body>
</html>
