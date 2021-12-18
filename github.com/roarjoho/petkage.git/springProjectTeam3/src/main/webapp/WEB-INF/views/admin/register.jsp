<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>펫키지 관리자 회원가입</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="description" content="codedthemes">
	<meta name="keywords" content=", Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
	<meta name="author" content="codedthemes">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin_images/favicon.png" type="image/x-icon">
	<link rel="icon" href="${pageContext.request.contextPath}/resources/admin_images/favicon.ico" type="image/x-icon">
   	<link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/icofont/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_css/main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_css/responsive.css">
</head>
<body>
	<section class="login common-img-bg">
		<div class="container-fluid">
			<div class="row">
					<div class="col-sm-12">
						<div class="login-card card-block bg-white">
							<form class="md-float-material" action="index.html">
								<div class="text-center">
									<img src="${pageContext.request.contextPath}/resources/admin_images/logo-black.png" alt="logo">
								</div>
								<h3 class="text-center txt-primary">펫키지 관리자 회원가입</h3>
								<div class="md-input-wrapper">
									<input type="text" class="md-form-control" required="required">
									<label>관리자 아이디</label>
								</div>
								<div class="md-input-wrapper">
									<input type="password" class="md-form-control" required="required">
									<label>관리자 비밀번호</label>
								</div>
								<div class="md-input-wrapper">
									<input type="password" class="md-form-control" required="required">
									<label>관리자 비밀번호 확인</label>
								</div>
								<div class="col-xs-10 offset-xs-1">
									<button type="submit" class="btn btn-primary btn-md btn-block waves-effect waves-light m-b-20">관리자 회원가입
									</button>
								</div>
								<div class="row">
									<div class="col-xs-12 text-center">
										<span class="text-muted">이미 펫키지 관리자계정이 있으신가요?</span>
										<a href="login1.html" class="f-w-600 p-l-5">관리자 계정 로그인하기</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</section>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery/dist/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery-ui/jquery-ui.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/tether/dist/js/tether.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin_pages/elements.js"></script>
</body>
</html>
