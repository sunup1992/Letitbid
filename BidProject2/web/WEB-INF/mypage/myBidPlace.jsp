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
				
<!-- 경매 종료 및 입찰 확인  -->
				<c:if test="${ob.confirm == 0 }">
					<div id="myBidPlace${vs.count}" class="wrapper5">
						<a href="/BidProject/auction.au?code=${ob.code}">상품 정보가기</a>
					</div>
				</c:if>
				<c:if test="${ob.confirm != 0 }">
					<c:if test="${ob.price != ob.finalPrice}">
						<div id="myBidPlace${vs.count}" class="wrapper5">
							<a href="/BidProject/auction.au?code=${ob.code}">상품 정보가기</a>
						</div>
					</c:if>
					<c:if test="${ob.price == ob.finalPrice}">
						<div id="myBidPlace${vs.count}" class="wrapper5">
							<a href="/BidProject/trade.mp?code=${ob.code }&finalPrice=${ob.finalPrice}">경매자 정보보기</a>
						</div>
					</c:if>
				</c:if>
<!-- 경매 종료 및 입찰 확인  -->
				<br><br><br><br>
				
				<div class="wrapper4">
					<span>마감시간 ${ob.term}</span><br>
					<span>나의 응찰가 ${ob.price}원</span><br>
					
<!-- 경매 종료 및 입찰 확인  -->
<!-- 시간 지남 -->
			<c:if test="${ob.year == 0 }">
					<c:if test="${ob.price != ob.finalPrice}">
						<span id="priceCheck${vs.count}" class="priceCheck">입찰에 실패하였습니다.</span><br>
					</c:if>
					<c:if test="${ob.price == ob.finalPrice}">
						<c:if test="${ob.confirm == 1}">
							<span id="priceCheck${vs.count}" class="priceCheck">축하드립니다. 경매에 입찰 되었습니다.</span><br>
						</c:if>
						<c:if test="${ob.confirm != 1}">
							<span id="priceCheck${vs.count}" class="priceCheck">경매자의 승인을 기다려주세요</span><br>
						</c:if>
					</c:if>
			</c:if>
<!-- 시간 안지남 -->
			<c:if test="${ob.year != 0 }">
					<c:if test="${ob.price != ob.finalPrice}">
						<span id="priceCheck${vs.count}" class="priceCheck">다른 사람에 의해 응찰 최고가가 갱신되었습니다.<br><span>최고 응찰가 ${ob.finalPrice}원</span></span><br>
						
					</c:if>
					<c:if test="${ob.price == ob.finalPrice}">
						<span id="priceCheck${vs.count}" class="priceCheck">현재 응찰 최고가 입니다.</span><br>
					</c:if>
			</c:if>
<!-- 경매 종료 및 입찰 확인  -->
					
					
				</div>
				
								
				
				<input type="hidden" id="finalPrice${vs.count}" value="${ob.finalPrice}"/>
				<input type="hidden" id="price${vs.count}" value="${ob.price}"/>
				<input type="hidden" id="term${vs.count}" value="${ob.term}"/>
				<input type="hidden" id="catchTotal" value="<%=n%>"/>
				<input type="hidden" id="secretCode${vs.count}" value="${ob.code}"/>
				<input type="hidden" id="confirm${vs.count}" value="${ob.confirm}"/>
				
			</div>
		</div>
		<hr class="midLine">
</c:forEach>
</section>

</body>
</html>