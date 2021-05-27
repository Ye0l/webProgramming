<%@page import="ch10.web1.LoginDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>	
<%
// 1. 데이터 베이스 연동 
LoginDAO dao = new LoginDAO();
Connection con = dao.getConnection();
String sql = "SELECT ID,WRITER,TITLE,FILENAME FROM UPLOADFILES ORDER BY ID";
Statement st = con.createStatement();
ResultSet rs =st.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>파일 다운로드</title>
	</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>파일명</th>	
	<%
	while(rs.next()) {
	%>
	<tr>
		<td><%=rs.getInt("ID") %></td>
		<td><%=rs.getString("WRITER") %></td>
		<td><%=rs.getString("TITLE") %></td>
		<td><a download href='http://localhost:8080/week12/uploadfiles1/<%=rs.getString("FILENAME") %>'><%=rs.getString("FILENAME") %></a></td>		
	</tr>
	<%
	}
	rs.close();
	st.close();
	con.close();
	%>
	</table>
	<h2>파일 다운로드 </h2>
</body>
</html>