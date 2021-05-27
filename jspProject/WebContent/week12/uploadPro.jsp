<%@page import="ch10.web1.LoginDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
 		// MultipartRequest 객체 사용
 		
 		// dir
 		String dir = application.getRealPath("/uploadfiles1");
    File f = new File(dir);
    if(!f.exists())
    	f.mkdirs();
    // maxsize
    int maxSize = 1024 * 1024 * 5; // 5MB
    
    //enc
    String enc = "UTF-8";
    
 		MultipartRequest multi = new MultipartRequest(request,dir,maxSize,enc,new DefaultFileRenamePolicy());
	    
		String writer =multi.getParameter("writer");
		String title =multi.getParameter("title");
		String filename =multi.getFilesystemName("filename");
		String orginal =multi.getOriginalFileName("filename");
		
		out.println("작성자 : " + writer + "<br>");
		out.println("제목 : " + title + "<br>");
		out.println("파일명 : " + filename+ "<br>" );
		out.println("원파일명 : " + orginal + "<br>");
		
		
		
		// DB연동
		// 1. Connection가져오기 
		LoginDAO dao = new LoginDAO();
		Connection con = dao.getConnection();
		
		// 2. table : uoloadfiles1 에 정보 입력
		String sql = "INSERT INTO UPLOADFILES(WRITER, TITLE, FILENAME)" +
		"VALUES(?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, writer);
		pstmt.setString(2, title);
		pstmt.setString(3, filename);
		
		pstmt.executeUpdate();
		pstmt.close();
		con.close();

    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>