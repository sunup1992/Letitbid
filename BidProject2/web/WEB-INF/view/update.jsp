<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<title>회원정보수정</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/insert.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/update.css">
</head>

<jsp:include page="/menu.jsp" flush="true"/>
		<section>
			<div class="wrap2">
				<form action="/BidProject/updateProc.go" method="post">
					
					<label class="label2">아이디</label><br>
					<input type="text" id="id" class="textbox2" name="id" value="${loginOK.id}" readonly/><br>
					<span id="idch"></span><br>
						 
					<label class="label2">비밀번호</label><br>	 
					<input type="password" id="password" class="textbox2" name="password" maxlength="16" placeholder="6~16자의 영문 대소문자, 숫자" value="${loginOK.password}"/><br><br>
					
					<label class="label">비밀번호 확인</label><br>
					<input type="password" id="password2" class="textbox2" name="password2" maxlength="16"/><br>
					<span id="pwch"></span><br>
					
					<label class="label2">이름</label><br>
					<input type="text" id="username" class="textbox2" name="username" value="${loginOK.username}"/><br>
					<span id="usernamech"></span><br>
					
					<label class="label2">주소</label><br>
					<input type="text" id="roadFullAddr" name="roadFullAddr" class="textbox2" value="${loginOK.roadFullAddr}"/><br>
					<input type="button" class="addrbtn2" onclick="goPopup();" value="주소검색"/><br>
					<span id="addrch"></span><br>
					
					<label class="label2">전화번호</label><br>
					<input type="text" id="phone" name="phone" class="textbox2" placeholder="예) 010-1234-5678" value="${loginOK.phone}"/><br>
					<span id="phonech"></span><br>
					 
					<input type="submit" class="submit2" value="수정완료"/>
					
					<a href="/BidProject/mypage.go" id="back" class="back">뒤로가기</a>
				</form>
				
				
			
			</div>
		</section>
	</body>
</html>