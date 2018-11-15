<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/banready.css">
<script>

function bango(){	
	window.opener.name = "parent";
	document.banreason.target = opener.name;
	document.banreason.submit();
	
	this.close();
	}
</script>
</head>
<body>
<span id="title">
<h4>&nbsp;신고하기</h4></span>

<br>
<table>
	<tr>
	<th>판매자 : </th>
	<td>${ban.seller_name}</td>
	</tr>
	<tr>
	<th>제목 : </th>
	<td>${ban.prodname}</td>
	</tr>
</table>
<br><hr><br>

<form action="banyou.mp" name="banreason" method="post">
	<input type="hidden" value="${ban.code}" name="code"/>
	<input type="hidden" value="${ban.seller_name}" name="seller_name"/>
	<input type="hidden" value="${ban.prodname}" name="prodname"/>
	<input type="hidden" value="${ban.buyer_name}" name="buyer_name"/>

<table>
<tr>
	<th>사유 선택 : </th>
	<td><input type="checkbox" name="reason" value="2"> 추가 가격 인상 요구</td>
</tr>
<tr>
	<th></th>
	<td><input type="checkbox" name="reason" value="1"> 연락 두절</td>
</tr>
<tr>
	<th></th>
	<td><input type="checkbox" name="reason" value="3"> 제품 불량 및 미배송</td>
</tr>
</table>
	
	
	

<br><hr>
<div id="buttons">
	<input type="button" id="ban" value="신고하기" onclick="bango();">
	<input type="button" id="cancel" value="취소하기" onclick="javascript:window.close()">
</div>
</form>

</body>
</html>