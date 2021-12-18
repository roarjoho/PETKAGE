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
    <title>펫키지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    
     <!-- Font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

        <!-- Header Section Begin -->
    	<jsp:include page="../inc/top.jsp"></jsp:include>
  		  <!-- Header Section Begin -->
    
    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero-1.jpg"></div>
            <div class="single-hero-items set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero-2.jpg"></div>
            <div class="single-hero-items set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero-3.jpg"></div>
        </div>
    </section>
    <!-- Hero Section End -->
	
	     <div class=middle-div-1> 
		<div class="div-1"></div>
	</div>
	
    <!-- Women Banner Section Begin -->
    <section class="women-banner spad">
    <div class="banner-card">
        <div class="container-fluid">
            <div class="row">
               <div class="col-lg-3">
                    <div class="product-large set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/products/catgoods-main.jpg">
                        <h2>냥냥이 상품</h2>
                        <a href="#">상세보기</a>
                    </div>
                </div>
                     <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">장난감</li>
                            <li>패션</li>
                            <li>케어</li>
                            <li>간식</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="${pageContext.request.contextPath}/resources/img/products/catgoods-1.jpg"   alt="">
                                <div class="sale">Sale</div>
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">장난감</div>
                                <a href="#">
                                    <h5>볼 스크레처</h5>
                                </a>
                                <div class="product-price">
                                    38,000원
                                    <span>52,000원</span>
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="${pageContext.request.contextPath}/resources/img/products/catgoods-2.jpg"   alt="">
                                <div class="sale">Sale</div>
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">장난감</div>
                                <a href="#">
                                    <h5>둥굴레처</h5>
                                </a>
                                <div class="product-price">
                                    70,000원
                                    <span>98,000원</span>
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="${pageContext.request.contextPath}/resources/img/products/catgoods-3.jpg"  alt="">
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">장난감</div>
                                <a href="#">
                                    <h5>낚시냥</h5>
                                </a>
                                <div class="product-price">
                                   13,000원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="${pageContext.request.contextPath}/resources/img/products/catgoods-4.jpg"   alt="">
                                <div class="new">New</div>
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">놀이</div>
                                <a href="#">
                                    <h5>캣타워</h5>
                                </a>
                                <div class="product-price">
                                   200,000원
                                </div>
                            </div>
                        </div>
                       </div>
                    </div>
            </div>
        </div>
        </div>
    </section>
    <!-- Women Banner Section End -->
    
     <!-- Man Banner Section Begin -->
    <section class="man-banner spad">
	    <div class="container">
		    <div class=middle-div-2>
				<div class="div-2"></div>
			</div>
		</div>
	    <div class="banner-card">
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-lg-8">
	                    <div class="filter-control">
		                     <ul>
	                            <li class="active">장난감</li>
	                            <li>패션</li>
	                            <li>케어</li>
	                            <li>간식</li>
	                        </ul>
	                    </div>
	                    <div class="product-slider owl-carousel">
	                        <div class="product-item">
	                            <div class="pi-pic">
	                                 <img src="${pageContext.request.contextPath}/resources/img/products/doggoods-1.jpg"  alt="">
	                                <div class="sale">Sale</div>
	                                <div class="icon">
	                                    <i class="icon_heart_alt"></i>
	                                </div>
	                                <ul>
	                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
	                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
	                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
	                                </ul>
	                            </div>
	                            <div class="pi-text">
	                                <div class="catagory-name">장난감</div>
	                                <a href="#">
	                                    <h5>곰돌친구</h5>
	                                </a>
	                                <div class="product-price">
	                                    15,000원
	                                    <span>20,000원</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="product-item">
	                            <div class="pi-pic">
	                                <img src="${pageContext.request.contextPath}/resources/img/products/doggoods-2.jpg"  alt="">
	                                <div class="icon">
	                                    <i class="icon_heart_alt"></i>
	                                </div>
	                                <ul>
	                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
	                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
	                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
	                                </ul>
	                            </div>
	                            <div class="pi-text">
	                                <div class="catagory-name">장난감</div>
	                                <a href="#">
	                                    <h5>당근 노즈워크</h5>
	                                </a>
	                                <div class="product-price">
	                                    43,000원
	                                </div>
	                            </div>
	                        </div>
	                        <div class="product-item">
	                            <div class="pi-pic">
	                                <img src="${pageContext.request.contextPath}/resources/img/products/doggoods-3.jpg" alt="">
	                                <div class="new">New</div>
	                                <div class="icon">
	                                    <i class="icon_heart_alt"></i>
	                                </div>
	                                <ul>
	                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
	                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
	                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
	                                </ul>
	                            </div>
	                            <div class="pi-text">
	                                <div class="catagory-name">장난감</div>
	                                <a href="#">
	                                    <h5>붕붕놀이</h5>
	                                </a>
	                                <div class="product-price">
	                                    10,000원
	                                </div>
	                            </div>
	                        </div>
	                        <div class="product-item">
	                            <div class="pi-pic">
	                                <img src="${pageContext.request.contextPath}/resources/img/products/doggoods-4.jpg" alt="">
	                                <div class="icon">
	                                    <i class="icon_heart_alt"></i>
	                                </div>
	                                <ul>
	                                    <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
	                                    <li class="quick-view"><a href="#">+ 바로 가기</a></li>
	                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
	                                </ul>
	                            </div>
	                            <div class="pi-text">
	                                <div class="catagory-name">패션</div>
	                                <a href="#">
	                                    <h5>꿀벌돌이</h5>
	                                </a>
	                                <div class="product-price">
	                                    15,000원
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-3 offset-lg-1">
	                    <div class="product-large set-bg m-large" data-setbg="${pageContext.request.contextPath}/resources/img/products/doggoos-main.jpg">
	                        <h2>댕댕이 상품</h2>
	                        <a href="#">상세 보기</a>
	                    </div>
	                </div>
	            </div>
	        </div>
        </div>
    </section>
    <!-- Man Banner Section End -->
    
    
    	<div class="banner-se">
	<div class="event">
		<a href="#"><img src="${pageContext.request.contextPath}/resources/img/event.jpg" alt=""></a>
	</div>
	</div>
    
        <!-- Banner Section Begin -->
    <div class="banner-section spad">
        <div class="container-fluid">
       	   <div class="section-title">
               <h2>MONTHLY NEWS</h2>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="${pageContext.request.contextPath}/resources/img/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="${pageContext.request.contextPath}/resources/img/banner-2.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
<!--                 <span class="whole">전체보기</span> -->
                    <div class="single-banner">
                        <img src="${pageContext.request.contextPath}/resources/img/banner-3.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Section End -->

    <!-- Latest Blog Section Begin -->
    <section class="latest-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>THE PETS COMMUNITY</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="${pageContext.request.contextPath}/resources/img/cum-1.jpg" alt="">
                        <div class="nice">추천글</div>
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    2021.12.11
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4>강아지가 발을 핥고 깨무는 이유</h4>
                            </a>
                            <p>안녕하세요, 예동그리입니다... ​ </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="${pageContext.request.contextPath}/resources/img/cum-2.jpg"  alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    2021.12.11
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4>강아지 이갈이 언제부터?</h4>
                            </a>
                            <p>안녕하세요. 어느덧 7개월이 된 동백이.. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="${pageContext.request.contextPath}/resources/img/cum-3.jpg" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    2021.11
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4>강아지 갸우뚱 하는 이유는?</h4>
                            </a>
                            <p>강아지를 키우는 보호자님이라면... </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="benefit-items">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon-1.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>무료 배송</h6>
                                <p>5만원 이상 구매 시 누구나 무료!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon-2.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>당일 출고</h6>
                                <p>5시전 주문하면 당일 출고!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon-3.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>카카오페이 결제</h6>
                                <p>카카오페이로 간편 결제 가능</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Blog Section End -->
  

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