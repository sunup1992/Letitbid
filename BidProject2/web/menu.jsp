<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/menu.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
function enterkey() {
    if (window.event.keyCode == 13) {
         search();
    }
}
function search(){
	var word = $("#query").val();
	
	location.href="search.ct?word="+word;
	
}
 $(document).on('mouseover','#searchon', function(){
	$('#query').slideDown(200);
	
});
 $(document).on('mouseleave','#search', function(){
	$('#query').slideUp(200);
	
}); 

</script>
</head>
<body>
	<header>
		<a href="qna.bd?pg=1"><span class="headertext">HELP</span></a>
		
		<c:if test="${empty loginOK}">
		<a href="/BidProject/insert.go"><span class="headertext">SIGNUP</span></a>
		</c:if>
		
		<c:if test="${!empty loginOK}">
		<a href="/BidProject/mypage.mp"><span class="headertext">MYPAGE</span></a>
		</c:if>
		
		<c:if test="${empty loginOK}">
		<a href="/BidProject/login.go"><span class="headertext">SIGNIN</span></a>
		</c:if>
		
		<c:if test="${!empty loginOK}">
		<a href="/BidProject/logout.go"><span class="headertext">SIGNOUT</span></a>
		</c:if>
		
		<div id="search" class="search">
				<span id="searchon" onclick="search()"><i class="fa fa-search" class="w3-xlarge"></i></span>
				<input id="query" name="query" type="text" maxlength="255" onkeyup="enterkey();" 
				class="input_text" style="display : none; background-color:white; color:black;" placeholder="검색어를 입력해주세요"/>
		</div>
		<a href="main.go?page=1"><span class="let">LET IT BID</span></a>
	</header>








