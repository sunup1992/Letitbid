function goPopup(){
   // 주소검색을 수행할 팝업 페이지를 호출합니다.
   // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
   var pop = window.open("/BidProject/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   $('#addrch').html("")
   // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
   // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
   document.form.roadFullAddr.value = roadFullAddr;   
}

//아이디 중복체크--------------------------------------------------------------------------------------------
$(document).ready(function(){
	$('#id').blur(function(){
	var id = $("#id").val();
	
	$.ajax({
		type:"GET",
		url:"/BidProject/idcheck.go?id=" + id,
		dataType:"json",
		error:function(){
			for (var i = 0; i < form.id.value.length; i++) {
		        ch = form.id.value.charAt(i)
		        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z') || id.length < 4){
		        	$('#idch').html("4~12자의 영문 대소문자, 숫자만 사용 가능합니다.").css("color","red")
				    form.id.focus();
				    return false;
		        	
		        }else{	
				$('#idch').html("멋진 아이디네요!").css("color","green")
		        }
			}
		},
		success:function(data){
			console.log(data);
			$('#idch').html("이미 사용중인 아이디 입니다").css("color","red")
			form.id.focus();
		}
	})
})
});

//버튼 클릭 시----------------------------------------------------------------------------------------------------------

function Validate() {
	var fphone=document.form.phone.value;
	var regex = /^01([0|1|6|7|8|9]?)-([0-9]{3,4})-([0-9]{4})$/;
	
	//아이디 입력여부 체크
	if (form.id.value == "") {
		$('#idch').html("필수 정보입니다").css("color","red")
		form.id.focus();
		return false;
	}  
	
	
	
	//아이디 유효성 검사 (영문소문자, 숫자만 허용)
	for (var i = 0; i < form.id.value.length; i++) {
		ch = form.id.value.charAt(i)
		if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
			$('#idch').html("아이디는 영문 대소문자, 숫자만 입력가능합니다.").css("color","red")
			form.id.focus();
			form.id.select();
			return false;
		}
	}
	
	//아이디에 공백 사용하지 않기
	if (form.id.value.indexOf(" ") >= 0) {
		$('#idch').html("아이디에 공백을 사용할 수 없습니다.").css("color","red")
		form.id.focus();
		form.id.select();
		return false;
	}
	
	
	//아이디 길이체크
	if(form.id.value.length < 4){
		$('#idch').html("아이디는 4글자 이상이여야만 합니다!").css("color","red")
		form.id.focus();
		form.id.select();
		return false;
	}
	
	//비밀번호 입력여부 체크
	if (form.password.value == "") {
		$('#pwch').html("필수 정보입니다").css("color","red")
		form.password.focus();
		return false;
	} 
	
	
	//비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
	for (var i = 0; i < form.password.value.length; i++) {
		ck = form.password.value.charAt(i)
		if (!(ck >= '0' && ck <= '9') && !(ck >= 'a' && ck <= 'z')&&!(ck >= 'A' && ck <= 'Z')) {
			$('#pwch').html("비밀번호는 영문 대소문자, 숫자만 입력가능합니다.").css("color","red")
			form.id.focus();
			form.id.select();
			return false;
		}
	}
	
	
	
	//비밀번호 길이 체크(6~16자 까지 허용)
	if (form.password.value.length<6 || document.form.password.value.length>16) {
		$('#pwch').html("비밀번호를 6~16까지 입력해주세요.").css("color","red")
		form.password.focus();
		form.password.select();
		return false;
	}
	
	
	//비밀번호와 비밀번호 확인 일치여부 체크
	if (form.password.value != form.password2.value) {
		$('#pwch').html("비밀번호가 일치하지 않습니다").css("color","red")
		form.password2.value = ""
		return false;
	}
	
	
    //이름 입력여부 체크
    if (form.username.value == "") {
    	$('#usernamech').html("필수 정보입니다").css("color","red")
        form.username.focus();
        return false;
    } 
	
    //주소 입력여부 체크
    if (form.roadFullAddr.value == "") {
    	$('#addrch').html("필수 정보입니다").css("color","red")
        form.roadFullAddr.focus();
        return false;
    }  
    
	//전화번호 입력여부 체크
    if (form.phone.value == "") {
    	$('#phonech').html("필수 정보입니다").css("color","red")
        form.phone.focus();
        return false;
    }  
	
	
	//전화번호 유효성 검사
	if (!regex.test(fphone)) {
		$('#phonech').html("잘못된 전화번호 형식입니다.").css("color","red")
	    return false;
		}
	
    
    //비밀번호 찾기 답 입력여부 체크
    if (form.pwanswer.value == "") {
        $('#questionch').html("필수  정보입니다.").css("color","red")
        form.pwanswer.focus();
        return false;
    } 

};
    

//회원가입 폼 입력 시--------------------------------------------------------------------------------------------------



//전화번호 형식
$(document).ready(function(){
	$('#phone').blur(function(){
		var fphone=$('#phone').val();
		var regex = /^01([0|1|6|7|8|9]?)-([0-9]{3,4})-([0-9]{4})$/;

if (!regex.test(fphone)) {
	$('#phonech').html("잘못된 전화번호 형식입니다.").css("color","red")
    return false;
}else{
	$('#phonech').html("").css("color","red")
}

	});
	
});



//비밀번호 형식
$(document).ready(function(){
	$('#password').blur(function(){
		var fpw=$('#password').val();


		for (var i = 0; i < form.password.value.length; i++) {
		    ck = form.password.value.charAt(i)
		    if (!(ck >= '0' && ck <= '9') && !(ck >= 'a' && ck <= 'z')&&!(ck >= 'A' && ck <= 'Z') || fpw.length < 6) {
		    	$('#pwch').html("비밀번호는 6~16자의 영문 대소문자, 숫자만 사용 가능합니다.").css("color","red")
		        form.password.focus();
		        form.password.select();
		    	//form.password.value = "";
		        return false;
		    }
		}

	});
	
});


//비밀번호 일치여부
	$(document).ready(function(){
		$('#password2').blur(function(){
			var fpw=$('#password').val();
			var spw=$('#password2').val();
			
			if(fpw==spw){
				$('#pwch').html("비밀번호가 일치합니다").css("color","green")
				
			}else{	
				$('#pwch').html("비밀번호가 일치하지않습니다").css("color","red")
				form.password2.value = "";
			    return false;
			}
				
		});
		
	});
		


	
//공백으로 넘어갈 시----------------------------------------------------------------------------------------------------
	
	$(document).ready(function(){
		$('#id').blur(function(){
			var fid=$('#id').val();
			
			if(fid=="")
				$('#idch').html("필수 정보입니다").css("color","red")
		});
	});
	
	
	$(document).ready(function(){
		$('#password2').blur(function(){
			var fpw=$('#password').val();
			var spw=$('#password2').val();
			
			if(fpw=="" && spw=="")
				$('#pwch').html("필수 정보입니다").css("color","red")
		});
	});
	
	
	
	$(document).ready(function(){
		$('#username').blur(function(){
			var fname=$('#username').val();
			
			if(fname==""){
				$('#usernamech').html("필수 정보입니다").css("color","red")
			}else{
				$('#usernamech').html("")
			}		
		});
	});
	
	
	$(document).ready(function(){
		$('#roadFullAddr').blur(function(){
			var faddr=$('#roadFullAddr').val();
			
			if(faddr==""){
				$('#addrch').html("필수 정보입니다").css("color","red")
			}else{
				$('#addrch').html("")
			}			
		});
	});
	
	
	$(document).ready(function(){
		$('#phone').blur(function(){
			var fphone=$('#phone').val();
			
			if(fphone==""){
				$('#phonech').html("필수 정보입니다").css("color","red")
			}		
		});
	});
	
	
	$(document).ready(function(){
		$('#pwanswer').blur(function(){
			var fanswer=$('#pwanswer').val();
			
			if(fanswer==""){
				$('#questionch').html("필수 정보입니다").css("color","red")
			}else{
			$('#questionch').html("")
			}		
		});
	});