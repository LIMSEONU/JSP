<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�Խ���</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String name = request.getParameter("name");
	
	String category = request.getParameter("category");
	%>
	
	<h1>�Խñ�</h1>
	<hr>
	����: <%= title %><br>
	����: <%= content %><br><br>
	�ۼ���: <%= name %><br>
	ī�װ�: <%= category %><br>
</body>
</html>