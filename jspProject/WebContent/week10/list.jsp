<%@page import="ch10.web1.LoginDAO"%>
<%@page import="ch10.web1.LoginDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LoginDAO dao = new LoginDAO();
	ArrayList<LoginDTO> dtos = dao.listLogin();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LIST JSP</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<br>
	<h1 class="text-center font-weight-bold">로그인 정보</h1>
	<br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
<% 
	//5. 결과집합 처리 
	for(LoginDTO i : dtos){
%>	
		<tr>
			<td><a href="updateForm.jsp?id=<%=i.getId() %>"><%=i.getId() %></a></td>
			<td><%=i.getName()%></td>
			<td><%=i.getPwd()%></td>
		</tr>
<%} %>
	</table>
	</div>	
</body>
</html>