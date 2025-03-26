<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
	<% 
	String op = request.getParameter("cal");
	String x = request.getParameter("x");
		String y = request.getParameter("y");
	int xva = Integer.parseInt(x);
	int yva = Integer.parseInt(y);
	
	if (op =="+"){
		out.println(xva + yva);
	}
	else if (op == "-"){
		out.println(xva - yva);
	}
	else if (op == "x"){
		out.println(xva * yva);
	}
	else{
		if(yva == 0){
			out.println("0으로 나눌 수 없습니다.");
		}
		else{
			float result = (float)xva / (float)yva;
			out.println(result);
		}
	}
	%>
</body>
</html> 