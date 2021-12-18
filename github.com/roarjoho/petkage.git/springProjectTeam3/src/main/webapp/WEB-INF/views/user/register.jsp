<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
    
    <!-- 제이쿼리 -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- 공백란 확인 registerCheck.js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/userInfoCheck.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){


    	//아이디 중복확인
    		$('#user_id_check').click(function() {
    			$.ajax('${pageContext.request.contextPath}/user/idCheck',{
    				data:{user_id:$('#user_id').val()},
    				success:function(rdata){						
    					if(rdata == "no"){
    						rdata = "이미 사용중인 아이디입니다."
    					}else{
    						 rdata="사용할 수 있는 아이디입니다.";
    					}
    					$('#idmsg').html(rdata);
    				}
    			});
    		});	
    });	
    </script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
   	<!-- Header Section Begin -->
    	<jsp:include page="../inc/top.jsp"></jsp:include>
    <!-- Header Section Begin -->
    
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i>메인</a>
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- 회원가입 Form -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>회원가입</h2>
                        
                        <div class="switch-login">
                            <h5>이미 펫키지 회원이신가요?</h5> <a href="${pageContext.request.contextPath}/user/login" class="or-login">로그인</a> 
                        </div><br>
                        
                        <form action="registerPro" method="post">
                            <div class="group-input">
                                <label for="user_id">아이디 *</label>
                                <input type="text" id="user_id" name="user_id">
                                <input type="button" id="user_id_check" value="아이디 중복확인">
                                <div id="idmsg"><br></div>
                            </div>
                            
                            <div class="group-input">
                                <label for="user_pwd">비밀번호 *</label>
                                <input type="password" id="user_pwd" name="user_pwd" placeholder="4~12글자를 입력해주세요.">
                            </div>
                            
                            <div class="group-input">
                                <label for="pass_check">비밀번호 확인 *</label>
                                <input type="password" id="pass_check" name="pass_check">
                            </div>
                            
                             <div class="group-input">
                                <label for="user_name">이름 *</label>
                                <input type="text" id="user_name" name="user_name">
                            </div>                            
                      
                            <div class="group-input">
                                <label for="user_phone">휴대폰번호 *</label>
                                <input type="text" id="user_phone" name="user_phone" placeholder=" -를 포함하여 입력해주세요.">           
                            </div>                            
                             
                             <div class="group-input">
                                <label for="user_email">이메일 *</label>
                                <input type="text" id="user_email" name="user_email" placeholder=" @를 포함하여 입력해주세요.">
                            </div>                                                                                                                                   
                            <button type="submit" class="site-btn register-btn" id="submitBtn" name="submitBtn">회원 가입</button>
                        </form>                                                                 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

    <!-- Footer Section Begin -->
    	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
        
     
</body>
</html>