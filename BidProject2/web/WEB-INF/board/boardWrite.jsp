<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boardWrite.css">
<title>글쓰기</title>
<script type="text/javascript">
	function denywrite() {
		if(written.id.value == ""){
			alert("로그인이 필요한 서비스입니다.")
			window.location.href = "/BidProject/login.go"; 
			return false;
		}
	}
	
	function checkWrite(){
		if(document.written.subject.value=="") 
			alert("제목을 입력하세요");	
		else if(document.written.content.value=="") 
			alert("내용을 입력하세요");
		else 
			document.written.submit();
	}
</script>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="wrapper">
<form method="post" action="/BidProject/write_proc.bd" name="written" onsubmit="return denywrite()">
<table>
	<tr>
		<td class="sub">제 목</td>
		<td><input type="text" name="subject" size="50" autocomplete="off"></td>
	</tr>
	
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" size="50"  value="${loginOK.id}" readonly></td>
	</tr>
	
	<tr>
		<td class="name">이 름</td>
		<td><input type="text" name="username" size="50" value="${loginOK.username}" readonly></td>
	</tr>	

	<tr>
		<td class="section">내 용</td>
		<td><textarea name="content" cols="52" rows="15" ></textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center" class="btn">
		<input type="submit"  value="글쓰기" class="btn1" onclick="checkWrite()">  
		<input type="reset" value="다시작성" class="btn2">
		</td>
		
	</tr>
</table>
</form>
</div>
</body>
</html>