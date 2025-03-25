<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>학생점수평균</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String engstr = request.getParameter("eng");
		String mathstr = request.getParameter("math");
		String korstr = request.getParameter("kor");

		int eng = Integer.parseInt(engstr);
  	 	int math = Integer.parseInt(mathstr);
   		int kor = Integer.parseInt(korstr);
   		
   		int total = eng + math + kor;
   		
   		double avg = total / 3.0;
   		String avg2 = String.format("%.2f", avg);
	%>
	
	<h1>학생 점수 결과</h1>
	국어: <%=kor %><br>
	수학: <%=math %><br>
	영어: <%=eng %><br><br>
	<hr>
	합계: <%=eng+math+kor %>
	평균: <%=avg2 %>점
</body>
</html>