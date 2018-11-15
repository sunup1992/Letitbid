<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/searchPasswordOK.css">
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="wrap">
<form method="post" action="main.go">
회원님의 비밀번호는 ${searchOK.password} 입니다
</form>
</div>

</body>
</html>