<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Categorybar.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 	<script defer src="js/all.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).on('mouseleave','#filter', function(){
	$('#menubar').slideUp(200);
	
}); 
$(document).on('mouseover','#menuclick', function(){
	
	$('#menubar').slideDown(200);	
	
});

</script>
<section>
	<nav id="filter">
		<span class="boldmenu"><a href="/BidProject/sale.sa" class="sale">BID NOW</a></span>
		<span class="boldmenu" id="menuclick">CATEGORY</span>
		<span id="menubar">
		<a href="main.ct?cat1=AA">의류</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
		<a href="main.ct?cat1=BB">패션잡화</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=CC">뷰티미용</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=DD">유아,아동,출산</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=EE">스포츠레저</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=FF">디지털가전</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=GG">애완</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=HH">도서/티켓</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
	</nav>	
</section>
