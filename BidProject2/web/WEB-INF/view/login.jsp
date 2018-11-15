<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
<title>로그인, 회원가입</title>
<script type="text/javascript">
function valid() {
	if(logform.id.value=="" || logform.password.value=="")
		alert("아이디 또는 패스워드를 입력해주세요.");
}

function enterkey() {
    if (window.event.keyCode == 13) {

         // 엔터키가 눌렸을 때 실행할 내용
    }
}
</script>
</head>
<body class="body">


<div id="wrapper">
<!-- <p class="header">LOGIN</p><br> -->
<h1><a href="main.go?page=1"><span class="header">LET IT BID</span></a></h1><br>
<form action="/BidProject/loginProc.go" method="post" name="logform" onsubmit="return valid();">
	<input type="text" id="id" name="id" placeholder="ID"/><br><br>
	<input type="password" id="password" name="password" placeholder="Password"/><br><br><br>
	<input type="hidden" id="username" name="username"/>
	<input type="hidden" id="roadFullAddr" name="roadFullAddr"/>
	<input type="hidden" id="phone" name="phone"/>
	<input type="submit" id="submit" value="로그인"onkeyup="enterkey();"/>
</form>

계정이 없으신가요?&nbsp;
<a href="/BidProject/insert.go">가입하기</a>
<br>
<br>
 <a href="/BidProject/searchId.go">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/BidProject/searchPassword.go">비밀번호 찾기</a>
</div>
</body>
</html>