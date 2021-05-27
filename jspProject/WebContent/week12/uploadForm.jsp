<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">파일업로드</h2>
		<hr/>
		
		<form action="uploadPro.jsp" method="post" encType="multipart/form-data">
		  <div class="form-group">
	      <label for="id">작성자:</label>
	      <input type="text" class="form-control" id="id" name="writer">
	    </div>
	    <div class="form-group">
	      <label for="name">제목:</label>
	      <input type="text" class="form-control" id="name" name="title">
	    </div>
	    <div class="form-group">
	      <label for="pwd">파일명:</label>
	      <input type="file" class="form-control" id="pwd" name="filename">
	    </div>
	    <br>
	    <div class="text-center">
				<button  type="submit" class="btn btn-secondary">파일업로드</button>
			</div>
		</form>
	
	</div>
</body>
</html>