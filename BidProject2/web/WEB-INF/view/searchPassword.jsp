<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/searchPassword.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />

<div class="wrap">
<form action="/BidProject/searchPassword2.go" method="post">
<label for="id" class="inputid">아이디를 입력해주세요</label><br>
<input type="text" id="id" name="id"/><br>
<input type="submit" class="btn1" value="찾기"/>

<!-- <a href="/BidProject/login.go">뒤로 가기</a> -->
</form>
</div>

</body>
</html>