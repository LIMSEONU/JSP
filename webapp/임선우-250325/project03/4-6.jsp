<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    String[] hobbies = request.getParameterValues("hobby");
    String country = request.getParameter("country");
%>

    <h1>회원 가입 완료</h1>
    이름: <%= name %><br>
    이메일: <%= email %><br>
    비밀번호: <%= password %><br>
    성별: <%= gender %><br>

    취미:
    <%
        if (hobbies != null) {
            for (String hobby : hobbies) {
                out.println(hobby);
            }
        }
    %> <br>

    국가: <%= country %><br>
</body>
</html>
