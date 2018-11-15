<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:include page="/menu.jsp" flush="true" />
<title>경매자 & 낙찰자 정보 확인</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trade.css">

<script>
var openwin;
window.name = "parent";
function banyou(value1, value2, value3, value4){

	var code = value1;
	var prodname = value2;
	var seller_name = value3;
	var buyer_name = value4;
	openWin = window.open("banready.mp?code=" + code + "&prodname="+prodname+"&seller_name=" + seller_name+"&buyer_name=" + buyer_name, "childForm","width=300, height=310, resizable = no, scrollbars = no");
}
</script>

		<section class="wra0">
			<div class="wra1">
				<div class="wra2">
					<div class="wra3">
					
						<div class="wra4">
							
							<img class="bidImage" src="/BidProject/resources/image/${vo.code}.jpg">
							
							<div class="wra5">
								<span class="prodname">${vo.prodname}</span><br>
								<span class="finalPrice">낙찰가 : ${vo.finalPrice}원</span>
							</div>
						</div>
						
						<div class="wra6">
							<div class="wra7">
								<span class="label">경매자</span><br>
								<span>성함 : ${vo.username_seller}</span><br>
								<span>주소 : ${vo.roadFullAddr_seller}</span><br>
								<span>연락처 : ${vo.phone_seller}</span>
							</div>
							
							<div class="wra8">
								<span class="label">낙찰자</span><br>
								<span>성함 : ${vo.username_bidder}</span><br>
								<span>주소 : ${vo.roadFullAddr_bidder}</span><br>
								<span>연락처 : ${vo.phone_bidder}</span>
							</div>
							
							<div class="wra9">
								<input class="report" type="button" value="신고하기" onclick="banyou('${vo.code}','${vo.prodname }',' ${vo.username_seller}','${vo.username_bidder}')">
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</section>
	</body>
</html>