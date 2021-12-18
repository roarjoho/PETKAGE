$(document).ready(function () {
					
	   	   $(document).on("click", "button[name='userUpdateSubmit']", function () {
								
				var pass = $("input[name='pass']");
				var con_pass = $("input[name='con_pass']");
				var name = $("input[name='name']");
				var email = $("input[name='email']");
				var phone = $("input[name='phone']");
				var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
				var getCheck = RegExp(/^[a-zA-Z0-9~!@#$%^&*()]{4,12}$/);
				var getName = RegExp(/^[가-힣]+$/);
				var getPhoneNumber = RegExp(/^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})$/);
	
				if(!pass.val()){
					alert("비밀번호 입력하세요");
					pass.focus();
					return false;
				}
				else if(!con_pass.val()){
					alert("비밀번호확인 입력하세요");
					con_pass.focus();
					return false;
				}
				else if(pass.val()!=con_pass.val()){
					alert("비밀번호를 동일하게 입력하세요");
					con_pass.val("");
					con_pass.focus();
					return false;
				}else if (!getCheck.test(pass.val())) {
					alert("비밀번호 형식에 맞게 입력하세요(4글자 이상 12글자 이하)");
					pass.val("");
					pass.focus();
					return false;
				}else if(!name.val()){
					alert("이름을 입력하세요");
					name.focus();
					return false;
				}else if (!getName.test(name.val())) {
					alert("이름을 올바르게 입력해주세요");
					name.val("");
					name.focus();
					return false;
			
				}else if(!email.val()){
					alert("이메일을 입력하세요");
					email.focus();
					return false;
				}else if (!getMail.test(email.val())) {
					alert("이메일형식에 맞게 입력해주세요");
					email.val("");
					email.focus();
					return false;
			
				}else if(!phone.val()){
					alert("휴대폰번호 입력하세요");
					phone.focus();
					return false;
				}else if (phone.val().length > 0) {
					if (!getPhoneNumber.test(phone.val())) {
						alert("폰넘버 형식에 맞게 입력하세요 ('-'포함하여 입력바랍니다)");
						phone.val("");
						phone.focus();
						return false;
					}
				}			
				
	   	  });
	   	  
	   	  $(document).on("click", "button[name='petAdd']", function () {
				
				var petName = $("input[name='petName']");
				var petType = $("input[name='petType']");
				var petBreed = $("input[name='petBreed']");
				var petBirth = $("input[name='petBirth']");	
				var petWeight = $("input[name='petWeight']");	
				
				if(!petName.val()){
					alert("이름을 입력하세요");
					petName.focus();
					return false;
				}
				else if(!petType.val()){
					alert("동물 종류를 입력하세요");
					petType.focus();
					return false;
				}
				else if(!petBreed.val()){
					alert("품종을 입력하세요");
					petBreed.focus();
					return false;
				}
				else if(!$("input:radio[name='petGender']").is(':checked')){
					alert("성별을 선택하세요");
					return false;
				}
				else if(!petBirth.val()){
					alert("생일을 입력하세요");
					petBirth.focus();
					return false;
				}
				else if(!petWeight.val()){
					alert("몸무게를 입력하세요");
					petWeight.focus();
					return false;
				}
				
	   	  });
	   	  
	   	  
	   	  
	   	  
	   	});
	   
