<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�л��������</title>
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
	
	<h1>�л� ���� ���</h1>
	����: <%=kor %><br>
	����: <%=math %><br>
	����: <%=eng %><br><br>
	<hr>
	�հ�: <%=eng+math+kor %>
	���: <%=avg2 %>��
</body>
</html>