<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>다중 데이터 서버에 보내기</title>
</head>
<body>
	<h2>다중 데이터 서버에 보내기</h2>
	<hr>
	<form action="chkResult.jsp" method="post">
		당신의 취미생활을 모두 고르시오. <br>
		<input type="checkbox" name="hobby" value="음악감상">음악감상 <br>
		<input type="checkbox" name="hobby" value="독서">독서 <br>
		<input type="checkbox" name="hobby" value="야구">야구 <br>
		<input type="checkbox" name="hobby" value="자전거">자전거 <br>
		<input type="submit" value="서버에 보내기">
	</form>
</body>
</html>