<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>게시판</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String name = request.getParameter("name");
	
	String category = request.getParameter("category");
	%>
	
	<h1>게시글</h1>
	<hr>
	제목: <%= title %><br>
	내용: <%= content %><br><br>
	작성자: <%= name %><br>
	카테고리: <%= category %><br>
</body>
</html>