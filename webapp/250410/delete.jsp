<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
<%
    String id = request.getParameter("id");

    if (id != null && !id.trim().equals("")) {
//        Class.forName("org.mariadb.jdbc.Driver");
//        String url = "jdbc:mariadb://localhost:3306/backend";
//        String user = "swlim";
//        String password = "1111";

       // Connection con = DriverManager.getConnection(url, user, password);

			Context initCtx = new InitialContext();
			DataSource ds = (DataSource) initCtx.lookup("java:comp/env/jdbc/swlim");
			Connection con = ds.getConnection();
			
        String sql = "DELETE FROM users WHERE id = ?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id);
        int result = pstmt.executeUpdate();

        pstmt.close();
        con.close();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제 결과</title>
</head>
<body>
    <script>
        alert("삭제되었습니다!");
        location.href = 'list.jsp';
    </script>
</body>
</html>
