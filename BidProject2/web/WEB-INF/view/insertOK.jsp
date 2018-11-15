<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/insertOK.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/Categorybar.jsp" flush="true" />
	<div class="backimg">
		<div class="outer">
			<div class="inner">
				<div class="centered">
				</div>
			</div>
		</div>
	</div>


	<div class="welcome">
		<div class="outer">
			<div class="inner">
				<div class="centered">
					<p class="welhead">LET IT BID의 회원이 되신 것을 환영합니다</p>
					<p>회원가입이 완료되었습니다</p>
					<p>패션, 뷰티, 스포츠레저 등 회원님을 위한 다채로운 경매물품 들이 기다리고 있습니다</p> 
				</div>
			</div>
		</div>
	</div>



	<div class="container">
		<div class="outer">
			<div class="inner">
				<div class="centered">
					<a href="/BidProject/login.go"><button id="login" class="btn">로그인</button></a> 
					<a href="/BidProject/main.go?page=1"><button id="main" class="btn">경매하기</button></a>
				</div>
			</div>
		</div>
	</div>
	

	
</body>
</html>