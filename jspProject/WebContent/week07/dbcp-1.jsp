<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 1. JDNI 서비스를 사용하기 위해 context 객체 얻기
Context initctx = new InitialContext();

// 2. Context 객체에서
Context ctx = (Context) initctx.lookup("java:comp/env");

// 3. 가져온 서비스 중에서 jdbc/yeol찾기 -> DataSource 객체 얻기
DataSource ds = (DataSource) ctx.lookup("jdbc/yeol");

// 4. Connection 객체 가져오기 -> DB 연결 성공
Connection con = (Connection) ds.getConnection();

// 5. SQL 작성

// 6. SQL 실행 : PreparedStatement/Statement 객체 생성

String str = "연결 성공";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbcp 연습</title>
</head>
<body>
	<%= str %>
</body>
</html>