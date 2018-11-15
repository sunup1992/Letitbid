<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/menu.jsp" flush="true" />

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myBidCount.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myBidPlace.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mypage.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/myBid.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/myBidPlace.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">

<section id="main" class="main">
	<h1>MY PAGE</h1>
</section>


<section id="middle">	
	<div class="cover">
	
		<div class="cover2">
		
			<div class="cover3">
				<form action="/BidProject/myBid.mp" method="get" >
					<input type="hidden" name="id" value="${loginOK.id}">
					<input type="submit" value="MY PRODUCTS"/>
				</form>
			</div>
			
			<div class="cover4">
				<form action="/BidProject/myBidPlace.mp" method="get">
					<input type="hidden" name="id" value="${loginOK.id}">
					<input type="submit" value="BIDDING STATUS" />
				</form>
			</div>
		
			<div class="cover5">
				<c:if test="${loginOK.ban >= 0}">
				<form action="/BidProject/delete.go" method="post">
					<input type="submit" value="LEAVE" onclick="return confirm('정말로 탈퇴 하시겠습니까?');"/>
				</form>
				</c:if>
				<c:if test="${loginOK.ban < 0}">
				<form action="/BidProject/banlist.mp" method="post">
					<input type="submit" value="신고 리스트"/>
				</form>
				</c:if>
			</div>
			
			<div class="cover6">
				<form action="/BidProject/update.go" method="post">
					<input type="submit" value="CHANGE USERINFO"/>
				</form>
			</div>
			
		</div>
		
	</div>
</section>

