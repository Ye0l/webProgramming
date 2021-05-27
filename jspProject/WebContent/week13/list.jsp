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
	
	int count = dao.getCount();
	out.println(count);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>
	<%
	String id =(String)session.getAttribute("id");
	if(id != null && !id.equals("")){
		out.println(id + "님이 로그인 하셨습니다.");
	}
	%>
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
	for(LoginDTO dto: dtos){
%>	
		<tr>
			<td><a href="updateForm.jsp?id=<%=dto.getId() %>"><%=dto.getId() %></a></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getPwd() %></td>
		</tr>
<%}%>
	</table>

	</div>	
</body>
</html>