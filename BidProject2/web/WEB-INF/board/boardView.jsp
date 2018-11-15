<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.board.dto.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="boardDao" class="com.board.dao.BoardDAO"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boardView.css">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />


<div class="wrap">
<form method="get" action="/BidProject/boardview.bd">

<table width="500">
<tr>
<td width="500" class="sub">${view.subject}</td>
</tr>
<tr>
	<td colspan="3" bgcolor="555555"></td>
	
</tr>
<tr>
	<td width="150">no. ${view.seq}</td>
	<td width="200" class="user"><img src="https://png.icons8.com/windows/50/000000/user-male-circle.png" class="icon"> 
	 <span class="username">${view.username }</span></td>
	
</tr>

<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>

<tr>
	<td colspan="3" height="200" valign="top"><pre>${view.content}</pre></td>
</tr>

<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>
</table>

</form><br>

<div class="button">
<a href="qna.bd?pg=${view.pg }"><button id="list">목록</button></a>
<c:if test="${loginOK.id == view.id}">
<a href="modify.bd?seq=${view.seq}"><button id="mod">수정</button></a>
<a href="delete.bd?seq=${view.seq}"><button id="del">삭제</button></a>
</c:if>
<c:if test="${!empty loginOK.id }">
<a href="reply.bd?seq=${view.seq}&pg=${view.pg}"><button id="rep">답글</button></a>
</c:if>
</div>

</div>
</body>
</html>