<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/searchId.css">
<title>아이디 찾기</title>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="wrap">
<form action="/BidProject/searchId2.go" method="post">
 <fieldset>
  <legend class="leg">아이디 찾기</legend>
	<label for="username" class="txtname">이름(실명)</label><br>
	<input type="text" id="username" name="username"/>
	<br><br>
	
	<label for="phone" class="txtphone">휴대전화</label><br>
	<input type="text" id="phone" name="phone"/>
	<br><br><br>
	
	
	<input type="submit" class="submit" value="아이디 찾기"></input>
	<br><br>
 </fieldset>	
</form>
<!-- <a href="/BidProject/login.go">뒤로 가기</a> -->
</div>
</body>
</html>