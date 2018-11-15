<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boardModify.css">
<title>글 수정</title>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="wrap">
<form method="post" action="/BidProject/modify_proc.bd">
<table>

	<tr>
		<td class="sub">제 목</td>
		<td><textarea name="subject" class="subject" cols="52" rows="1">${modify.subject}</textarea></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" class="id" size="50" readonly value=${modify.id }></td>
	</tr>
	<tr>
		<td class="name">이 름</td>
		<td><input type="text" name="name" class="uname" size="50" readonly value=${modify.username }></td>
	</tr>	

	
	<tr>
		<td class="section">내 용</td>
		<td><textarea name="content" class="content" cols="52" rows="15" >${modify.content}</textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		
		<input type="hidden" name="seq" value="${modify.seq}">
		<input type="submit" class="btn1"  value="수정">  
		


		</td>
		
	</tr>
</table>
</form>

</div>
</body>
</html>