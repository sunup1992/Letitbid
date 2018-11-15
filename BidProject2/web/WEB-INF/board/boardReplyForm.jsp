<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boardReplyForm.css">
<title>답글쓰기</title>
<script>
function checkBoardReply(){
	if(document.boardReplyForm.subject.value=="") 
		alert("제목을 입력하세요");	
	else if(document.boardReplyForm.content.value=="") 
		alert("내용을 입력하세요");
	else 
		document.boardReplyForm.submit();
}
</script>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="wrap">
<form name="boardReplyForm" method="post" action="reply_proc.bd">
<input type="hidden" name="seq" value="${reply.seq }">
<input type="hidden" name="pg" value="${reply.pg }">
<table>
	<tr>
		<td class="sub">제 목</td>
		<td><input type="text" name="subject" size="50"></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" size="50"  value="${loginOK.id }" readonly></td>
	</tr>
	<tr>
		<td class="name">이 름</td>
		<td><input type="text" name="username" size="50" value="${loginOK.username }" readonly></td>
	</tr>	
	
	<tr>
		<td class="section">내 용</td>
		<td><textarea name="content" cols="52" rows="15"></textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		<input type="button" class="btn1" value="답글쓰기" onclick="checkBoardReply()">
		<input type="reset" class="btn2" value="다시작성">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>