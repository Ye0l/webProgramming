<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>

<%
// 1. jdbc driver를 메모리에 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

// 2. oracle DB 선택
String user = "YEOL as sysdba";
String password = "1111";
String url = "jdbc:oracle:thin:@//localhost:1521/xepdb1";
Connection con = DriverManager.getConnection(url, user, password);

// 3. DB 연결
Statement st = con.createStatement();
out.println("연결성공!!!");

// 4. SQL 실행
String sql = "select * from LOB$";
ResultSet rs = st.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
	<%
	while (rs.next()) {
		//String col0 = rs.getString(0);
		String col1 = rs.getString("OBJ#");
		String col2 = rs.getString("COL#");
		out.println(col1);
		out.println(col2 + "<br>");
	}
	%>
</body>
</html>