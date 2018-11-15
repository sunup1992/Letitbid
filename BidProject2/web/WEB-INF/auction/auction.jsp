<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.auction.vo.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction</title>
<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/auction.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/maxPrice.js"></script>
<%
	int total = 0;
	int z = ((List<ReplyVO>)request.getAttribute("reply")).size();
	
	if(z != 0){
		total = ((List<ReplyVO>)request.getAttribute("reply")).get(0).getTotal();
	}
%>

<script>
function replyplus(value){
	var replynum = "#reply" + value;
	var submitform = "<td colspan='3'><form action='/BidProject/replyplus.au' method='post'><input type='hidden' value='${loginOK.id}' name='id'/><input type='hidden' value='${auction.code}' name='code'/><input type='hidden' value='"
	var submitform2 = "' name='seq'/>";
		
	
	$(replynum).html(submitform + value + submitform2 + "<img src = 'resources/image/reply.gif'>&nbsp;<input type='text' id='content' name='content' style='width:450px; height:19px;'/>&nbsp;&nbsp;<input type='submit' value=' 등록  '/></form></td>");
}

function check(){
	
	if(bidding.id.value == ""){
		alert("로그인이 필요한 서비스입니다.")
		return false;
	}
	if(bidding.finalPrice.value == ""){
		alert("입찰 가격을 입력해주세요");
		return false;
	}
	if(bidding.finalPrice.value <= bidding.checkprice.value){
		alert("현재 최고가보다 낮은 값을 응찰할 순 없습니다.");
		return false;
	}
	if((bidding.finalPrice.value)%1000 != 0){
		alert("응찰 단위 확인 부탁드립니다.");
		return false;
	}

	
	
	
	return true;
	
} 

$(document).on('mouseover','#menuclick', function(){
	
	$('#menubar').slideDown(200);	
	
});

$(document).on('mouseleave','#filter', function(){
	$('#menubar').slideUp(200);
	
});




</script>

</head>
<!-- body 0000000000000000000000000000000000000000000000000000000000000000000000 -->

<jsp:include page="/menu.jsp" flush="true" />

<section id="main" class="main">
	<div>
		<h1>AUCTION</h1>
	</div>
</section>

<jsp:include page="/Categorybar.jsp" flush="true" />








<div id="wrapper">
<img id = "photo" src="/BidProject/resources/image/${auction.code }.jpg">

<!-- article 0000000000000000000000000000000000000000000000000000000000000000000000 -->

<article id="informationbox">
<h1>
${auction.prodname}
</h1>
<span class="title">시작가  &nbsp;&nbsp;&nbsp;&nbsp;</span>
<span class="answer">KRW <fmt:formatNumber value="${auction.price}" pattern="#,##0" /></span>
<br><br><br><p> </p><p> </p><p> </p><p> </p><p> </p><p></p><p></p>

<span class="title">현재가   &nbsp;&nbsp;&nbsp;&nbsp;</span>
<span id="output" class="answer"></span>
<br><p> </p>

<span class="title">제품상태 &nbsp;&nbsp;&nbsp;&nbsp;</span> 
<span class="answer">${auction.condition}</span>


<p> </p>
<div id="dtime"></div>
<p> </p>
<form action="/BidProject/auctionProc.au" name="bidding" method="post" onsubmit="return check()">
	<span id="checkhere"><input type="hidden" id="checkprice" value="0"></span>
	
	<input type="hidden" value="${loginOK.id}" name="id"/>
	<input type="hidden" value="${auction.code}" id="code" name="code"/>
	<input type="hidden" value="${auction.term}" id="term" name="term"/>
	<input type="number" id="pricehere" name="finalPrice"/>
	
	<span id="submit"><input type="submit" id="submitbutton" value="PLACE BID"/></span>
</form>

<br><p> </p>



</article>


<h2>응찰하시기 전에 <span class="point">반드시 확인</span>하세요.</h2>
<span id="plus">
※ 응찰시 최고가 기준 <span class="point">1000원 </span>단위로 입찰 부탁드립니다.<br>
※ 본 경매 참여는 응찰자가 충분히 사전에 확인한 것을 전제로 하며, <span class="point">상품 컨디션을 이유로 응찰 또는 낙찰을 취소할 수 없습니다.</span> <br>
※ <span class="point">낙찰일로부터 7일 이내</span>에 연락 및 거래해 주시기 부탁드리며 7일 초과 시 <span class="point">상대방 신고에 따른 패널티가 부과</span>될 수 있습니다. <br>
※ 위 사항을 염두에 두시고, <span class="point">신중한 선택</span>을 해주시기 바랍니다.
</span>
<hr><br>
<h3  id="plustitle">상세설명</h3>
${auction.descrip}
<br><br>
${auction.ref}
<br><br>


<br>댓글 수 &nbsp;<%=total %>&nbsp;&nbsp;&nbsp;

<hr>

<table class="table table-hover table-secondary">
<c:if test="${!empty reply}">
<c:forEach var="ob" items="${reply}">
	<tr>
		<td>
			<c:forEach begin="0" end="${ob.lev }" step="1">
				&nbsp;
			</c:forEach>
		<c:if test="${ob.lev != 0}">
				<img src = "resources/image/reply.gif">
		</c:if>
		&nbsp;&nbsp;${ob.id }&nbsp;&nbsp;&nbsp;&nbsp;</td>
		
		<td style="width:400px;">${ob.content }</td>
		
		<td>
		<c:if test="${!empty loginOK}">
		<c:if test="${ob.lev == 0}">
				<span onclick="replyplus(${ob.seq})" style="font-size:15px; color:gray; width:100px;">답글 달기</span>	
		</c:if>
		</c:if>
		</td>
	</tr>
	<tr id="reply${ob.seq }"></tr>
</c:forEach>
</c:if>
</table>

<br>

<c:if test="${!empty loginOK}">
<section id="replysection">
<form action="/BidProject/replyInsert.au" method="post">
	<input type="hidden" value="${loginOK.id}" name="id"/>
	<input type="hidden" value="${auction.code}" name="code"/>
	<table>
	<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="content" name="content"/></td>
	<td>&nbsp;&nbsp;<input type="submit" value=" 등록  "/></td>
	</tr>
	</table>

</form>
</section>
</c:if>
<br><br>
</div>
<div id="footer"></div>
</body>
</html>

