<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/searchPassword2.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="wrap">
<form method="post" action="/BidProject/searchPassword3.go">
<label for="pwquestion" class="pwq">비밀번호 찾기 질문</label> <br> 
<input id="pwquestion" name="pwquestion" value="${searchOK.pwquestion}">
<br><br>

<label for="pwanswer" class="pwa">비밀번호 찾기 답</label> <br> 
<input type="text" id="pwanswer" name="pwanswer"/>
<br><br>
<input type="submit" class="btn1" value="비밀번호 찾기"/>
</form>

<!-- <a href="/BidProject/searchPassword.go">뒤로 가기</a> -->

</div>
</body>
</html>