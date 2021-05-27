<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Join form</title>
</head>
<body>
<form action="joinResult.jsp" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="radio" id="male" name="gender" value="남"> 남<input type="radio" id="female" name="gender" value="여"> 여</td>
		</tr>
		<tr>
			<td>가입경로</td>
			<td>
				<select name="root">
					<option value="search">웹검색</option>
					<option value="list2">경로2</option>
					<option value="list3">경로3</option>
					<option value="list4">경로4</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>주소지</td>
			<td>
				<select name="address" size="4">
					<option value="seoul">서울</option>
					<option value="gyeong-gi">경기</option>
					<option value="incheon">인천</option>
					<option value="other">기타</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>메모</td>
			<td><textarea name="memo" rows="5"></textarea></td>
		</tr>
		<tr>
			<td><input type="submit" name="submit" value="가입"></td>
		</tr>
	</table>
</form>
</body>
</html>