<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.category.vo.*" %>

<c:import url="mypage.jsp"></c:import>
<%
	int n = ((List<CategoryVO>)request.getAttribute("list")).size();
%>

<section class="wrapper1">
	<c:forEach var="ob" items="${list}" varStatus="vs">
		<div class="wrapper2">
		
			<img class="bidPlaceImage" src="/BidProject/resources/image/${ob.code}.jpg">
			
			<div class="wrapper3">
				<span class="prodname">${ob.prodname}</span>
				<div id="banbutton" class="wrapper5">
					<a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a>
				</div>
				
				<br><br><br><br><br>
				
				<div class="wrapper4">
					<span>판매자 이름 : ${ob.seller_name}</span><br>
					<span>구매자 이름 : ${ob.buyer_name}</span><br>
					<span>사유 : ${ob.reason }</span>
				</div>
				
			
			</div>
		</div>
		<hr class="midLine">
</c:forEach>
</section>

</body>
</html>