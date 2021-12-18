/* 
 * 회원가입 폼 공백 검사
 */
 
 $(document).ready(function(){

  $(document).on("click", "button[name='submitBtn']", function () {
	  	var id = $("input[name='user_id']");
		var pass = $("input[name='user_pwd']");
		var con_pass = $("input[name='pass_check']");
		var name = $("input[name='user_name']");
		var email = $("input[name='user_email']");
		var phone = $("input[name='user_phone']");
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getCheck = RegExp(/^[a-zA-Z0-9~!@#$%^&*()]{4,12}$/);
		var getName = RegExp(/^[가-힣]+$/);
		var getPhoneNumber = RegExp(/^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})$/);

		if(!id.val()){
			alert("아이디를 입력하세요.");
			id.focus();
			return false;
		}else if(!pass.val()){
			alert("비밀번호를 입력하세요.");
			pass.focus();
			return false;
		}else if(!con_pass.val()){
			alert("비밀번호를 확인해주세요.");
			con_pass.focus();
			return false;
		}else if(pass.val()!=con_pass.val()){
			alert("비밀번호가 일치하지 않습니다.");
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
			alert("이메일을 입력하세요.");
			email.focus();
			return false;
		}else if (!getMail.test(email.val())) {
			alert("이메일형식에 맞게 입력해주세요.");
			email.val("");
			email.focus();
			return false;	
		}else if(!phone.val()){
			alert("휴대폰번호를 입력해주세요.");
			phone.focus();
			return false;
		}else if (phone.val().length > 0) {
			if (!getPhoneNumber.test(phone.val())) {
				alert("휴대폰 번호 형식에 맞게 입력하세요 ('-'포함하여 입력바랍니다)");
				phone.val("");
				phone.focus();
				return false;
			}
		}			
		
  });		   	  		



});	 

    