<%@page import="domain.PetDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지-반려동물상세</title>
	
	<!-- Font-awesome -->
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jaehyeon.js">

    </script>
    
</head>
<body>
			<!-- 헤더 -->
        	<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- body 시작 -->
    
<section class="blog-section spad">
        <div class="container">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
                    <div class="blog-sidebar1" style="position: relative; left: 200px;">
						<div class="blog-category1">
							<ul>
								<li><a href="${pageContext.request.contextPath}/mypage/mypage" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/order3.png" width="60px" height="60px"><br>주문내역</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageBoard" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/board.png" width="60px" height="60px"><br>내 게시글 보기</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageUserUpdate" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/user.png" width="60px" height="60px"><br>회원정보변경</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypagePetUpdate" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/pet.png" width="60px" height="60px"><br>반려동물정보변경</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageInquiry" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/qa.png" width="60px" height="60px"><br>1:1 문의</a></li>								
								<li><a href="${pageContext.request.contextPath}/mypage/mypageUserDelete" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/unsubscribe.png" width="60px" height="60px"><br>회원탈퇴</a></li>
							</ul>
						</div>
					</div>
                </div>
                <div class="col-lg-9 order-1 order-lg-2" style="position:relative; left:120px;">
			         <div class="container">
			            <div class="row">
			                <div class="col-lg-6 offset-lg-3">
			                    <div class="register-form">
			                        <h2>반려동물 상세정보(변경)</h2>
			                        
			                        <form action="${pageContext.request.contextPath}/mypage/mypagePetUpdatePro" method="post" enctype="multipart/form-data">
			                            <div class="group-input">
			                                <label for="userId">반려동물 이름</label><label style="color:red;">*</label>
			                                <input type="text" id="petName" name ="petName" value="${mypetDetailView.pet_name }">
			                            </div>
			                            
			                            <div class="group-input">
			                                <label for="pass">반려동물 종류</label><label style="color:red;">*</label>
			                                <input type="text" id="petType" name="petType" value="${mypetDetailView.pet_type}">
			                            </div>
			                            
			                            <div class="group-input">
			                                <label for="con-pass">품종</label><label style="color:red;">*</label>
			                                <input type="text" id="petBreed" name="petBreed" value="${mypetDetailView.pet_breed }">
			                            </div>
			                            
			                             <div class="group-input">
			                                <label for="username">성별</label><label style="color:red;">*</label>
			                            </div>
			                            <c:if test="${mypetDetailView.pet_gender eq 'male' }">
			                                <input type="radio" id="petGender" name="petGender" value="male" checked="checked">수컷
			                                <input type="radio" id="petGender" name="petGender" value="female">암컷
			                            </c:if>
			                            <c:if test="${mypetDetailView.pet_gender eq 'female' }">
			                                <input type="radio" id="petGender" name="petGender" value="male">수컷
			                                <input type="radio" id="petGender" name="petGender" value="female" checked="checked">암컷
			                            </c:if>
			                            <div class="group-input">
			                                <label for="nickname">생년월일</label><label style="color:red;">*</label>
			                                <input type="text" id="petBirth" name="petBirth" value="${mypetDetailView.pet_birth}">
			                            </div>
			                            
			                             <div class="group-input">
			                                <label for="email">몸무게</label><label style="color:red;">*</label>
			                                <input type="text" id="petWeight" name="petWeight" value="${mypetDetailView.pet_weight }">
			                            </div>
			                             <div class="group-input">
			                                <label for="addInfo">특이사항</label><label style="color:red;">*</label>
			                                <textarea rows="5" cols="40" name="petAddInfo">${mypetDetailView.pet_addinfo }</textarea>
			                            </div>
			                            
			                            <div class="group-input">
			                                <label for="email">이미지</label><label style="color:red;">*</label>
			                                <input type="text" value="${mypetDetailView.pet_imagePath }">
			                                <input type="file" id="" name="file" value="file">
			                            </div>
			                            
			                            <input type="hidden" name="petNumber" value="${mypetDetailView.pet_number }">
			                            
			                            <button type="submit" class="site-btn register-btn" name="petAdd">변경하기</button>
			                            <button type="button" class="site-btn register-btn" name="mypetDelete"
			                            onclick="location.href='${pageContext.request.contextPath}/mypage/mypagePetDeletePro?pet_number=${mypetDetailView.pet_number }'">삭제하기</button>
			                        </form>                        
			                    </div>
			                </div>
			            </div>
			        </div>
                </div>
            </div>
    </section>
    <!-- Blog Section End -->

 
<!-- body 끝 -->

			<!-- 푸터 -->
			<jsp:include page="../inc/bottom.jsp"></jsp:include>
    
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