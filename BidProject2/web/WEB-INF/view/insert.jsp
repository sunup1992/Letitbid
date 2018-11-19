<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/insert.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/insert.css">
</head>

<jsp:include page="/menu.jsp" flush="true"/>
		<section>
			<div class="wrap">
				<form action="/BidProject/insertProc.go" method="post" name="form" onsubmit="return Validate();">
					<input type="hidden" id="naver_code"  name="naver_code" value="${naver_vo.naver_code}">
					<label for="id" class="label">아이디</label><br>
					<input type="text" id="id" class="textbox" name="id" maxlength="12" autocomplete="off"/><br>
					<span id="idch"></span><br>
						 
					<label for="password" class="label">비밀번호</label><br>	 
					<input type="password" id="password" class="textbox" name="password" maxlength="16" placeholder="6~16자의 영문 대소문자, 숫자"/><br><br>
					
					<label for="password2" class="label">비밀번호 확인</label><br>
					<input type="password" id="password2" class="textbox" name="password2" maxlength="16"/><br>
					<span id="pwch"></span><br>
					
					<label for="username" class="label">이름</label><br>
					<input type="text" id="username" class="textbox" name="username" value="${naver_vo.username}">
					<br>
					<span id="usernamech"></span><br>
					
					<label for="roadFullAddr" class="label">주소</label><br>
					<input type="text" id="roadFullAddr" name="roadFullAddr" class="textbox"><br>
					<input type="button" class="addrbtn" onclick="goPopup();" value="주소검색"/><br>
					
					<span id="addrch"></span><br>
					
					<label for="phone" class="label">전화번호</label><br>
					<input type="text" id="phone" name="phone" class="textbox" placeholder="예) 010-1234-5678"/><br>
					<span id="phonech"></span><br>
					
					<label for="pwquestion" class="label">비밀번호 찾기 질문</label><br>
					<select id="pwquestion" class="textbox" name="pwquestion">
						 <option>기억에 남는 추억의 장소는?</option>
					     <option>자신의 인생 좌우명은?</option>
					     <option>가장 기억에 남는 선생님 성함은?</option>
					     <option>자신의 보물 제1호는?</option>
					     <option>유년시절 가장 생각나는 친구 이름은?</option>
					     <option>인상 깊게 읽은 책 이름은?</option>
					     <option>다시 태어나면 되고 싶은 것은?</option>
					     <option>초등학교 때 기억에 남은 짝궁 이름은?</option>
					</select><br><br>
					     
					<label for="pwanswer" class="label">비밀번호 찾기 답</label><br>
					<input type="text" id="pwanswer" class="textbox" name="pwanswer" autocomplete="off"/><br>
					<span id="questionch"></span><br>
					<input type="submit" class="submit" value="가입하기"/>
					
					<a href="/BidProject/login.go" id="back" class="back">뒤로가기</a>
				</form>
			</div>
		</section>
	</body>
</html>