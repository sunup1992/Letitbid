<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" enctype="multipart/form-data" modelAttribute="uploadFile" action="upload">
	<h3>** 업로드할 파일 선택 **</h3>
	파일 : <input type="file" name="file"><br><br>
	<p style="color:red; font-weight:bold">
		<form:errors path="file"/>
	</p><br>
	
	설명 : <br>
	<form:textarea path="desc" name="desc" cols="40" row="10"/><br><br>
	<input type="submit" value="전송">
</form:form>
</body>
</html>