<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>학생 점수 입력</title>
</head>
<body>
	<h1>학생 점수 입력</h1>
	<form action="4-2.jsp" method="get">
		국어 점수: <input type="text" name="kor"><br>
		수학 점수: <input type="text" name="math"> <br>
		영어 점수: <input type="text" name="eng"><br>
		<input type="submit" value="제출">
	</form>
</body>
</html>