<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>회원탈퇴</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/delete.css">

<jsp:include page="/menu.jsp" flush="true"/>

<script>

</script>
		<div class="leave">
			<span>회원탈퇴를 성공적으로 완료했습니다.</span><br>
			<span>3개월간 재가입이 불가능합니다.</span>
		</div>
		
		<br><br>

		<a href="/BidProject/main.go?page=1" class="backToMain">메인으로 가기</a>
	</body>
</html>