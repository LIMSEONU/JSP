<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 글쓰기</title>
</head>
<body>
    <h1>게시판</h1>
    <form action="4-4.jsp" method="get">
        제목: <input type="text" name="title"><br><br>
        내용: <textarea rows="4" cols="50" name="content"></textarea><br><br>
        작성자: <input type="text" name="name"><br>
        카테고리:
        <select name="category">
            <option value="공지사항">공지사항</option>
            <option value="자유게시판">자유게시판</option>
            <option value="QNA">QNA</option>
        </select><br><br>
        <input type="submit" value="작성하기">
    </form>
</body>
</html>
