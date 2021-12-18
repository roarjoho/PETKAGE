<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>    
	<meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품 상세페이지</title>

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

    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    
    <script type="text/javascript">

    $(document).ready(function(){
		$('#cart').click(function(){
			$.ajax('${pageContext.request.contextPath}/shop/insertCart',{
				data:{product_number:$('#product_number').val(),
					product_stock:$('#product_stock').val()},
				success:function(rdata){
					if(rdata=='success'){
						rdata="장바구니 추가 완료되었습니다";
					}else{
						rdata="이미 장바구니에 있는 상품입니다";
					}
					alert(rdata);
				}
			});
		});
    });
    
		function loginCart(){
			alert("로그인 시 장바구니 사용가능합니다");
			location.href= "${pageContext.request.contextPath}/member/login";
		}
	
		function loginBtn(){
			alert("로그인 시 구매 가능합니다");
		}

		function orderBtn(){

			var product_number = $("input[name='product_number']");
			var product_name = $("input[name='product_name']");
			var product_stock = $("input[name='product_stock']");
			var product_price = $("input[name='product_price']");
			
			var link = "${pageContext.request.contextPath}/shop/check-out?";
			link+="product_number="+product_number.val()+"&";
			link+="product_name="+product_name.val()+"&";
			link+="product_stock="+product_stock.val()+"&";
			link+="product_price="+product_price.val();
			
			location.href= link;
		}

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
                    <div class="breadcrumb-text product-more">
                        <a href="#"><i class="fa fa-home">카테고리</i></a>
                        <a href="./shop.jsp">댕댕이</a>
                        <span>수제간식</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="">
                                <img class="product-big-img" width="400px" height="400px" src="${pageContext.request.contextPath}/resources/upload/${productDetailContent.product_imagePath }" alt="">
                                <div class="zoom-icon">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <span>브랜드명</span>
                                    <h3>${productDetailContent.product_name }</h3>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                </div>
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    <p></p>
                                    <h4>${productDetailContent.product_price }원</h4>
                                </div>
                                
                                <ul class="pd-tags">
                                    <li><span>배송</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;택배(주문시 결제) <a href="#"> 자세히<!-- 위트페이지참고. ajax구현인듯함. --></a><br>
                                    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3,000원 (50,000원 이상 무료)<br>
                                    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가배송비 5,000원 (지역별)</li>
                                </ul>
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1" name="product_stock" id="product_stock">
                                    </div>
                                </div>
                                        <input type="hidden" value="${productDetailContent.product_price }" name="product_price">
                                        <input type="hidden" value="${productDetailContent.product_name }" name="product_name">
                                        <input type="hidden" value="${productDetailContent.product_number }" name="product_number" id="product_number">
                                <a href="#" class="primary-btn pd-cart">찜버튼</a>
                                <c:if test="${!empty sessionScope }">
<!--                                 	<a href="#" class="primary-btn pd-cart" id="cart">장바구니</a> -->
                                	<input type="button" class="primary-btn pd-cart" id="cart" value="장바구니">
                                </c:if>
                                <c:if test="${empty sessionScope }">
                                	<a href="#" class="primary-btn pd-cart" onclick="loginCart()">장바구니</a>
                                </c:if>
                                <c:if test="${!empty sessionScope }">
                                	<input type="button" onclick="orderBtn()" value="구매하기" class="primary-btn pd-cart">
<!--                                 	<a class="primary-btn pd-cart" onclick="orerBtn()" style="color: white; ">구매하기</a> -->
                                </c:if>
                                <c:if test="${empty sessionScope }">
                               		<a href="${pageContext.request.contextPath}/member/login" class="primary-btn pd-cart" onclick="loginBtn()">구매하기</a>
                                </c:if>
                                
                                
                                
                            </div>
                        </div>
                    </div>
<!-- 상품설명 탭 -->
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">상세설명</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" role="tab">상품후기</a>
                                </li>
                                 <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">상품문의</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-4" role="tab">교환/반품/배송</a>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="tab-item-content">
                            <div class="tab-content">
                            
                            <!-- 탭 1 -->
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                ${productDetailContent.product_desc }
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                                             
                                <!-- 탭 2 -->
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="customer-review-option">
                                        <h4>사용후기(n개)</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="${pageContext.request.contextPath}/resources/img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>김이름<span>작성날짜</span></h5>
                                                    <div class="at-reply">사용후기 뜨는 자리</div>
                                                </div>
                                            </div>
                                            
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="${pageContext.request.contextPath}/resources/img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>김이름<span>작성날짜</span></h5>
                                                    <div class="at-reply">사용후기 조희</div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="leave-comment">
                                            <h4>로그인 후 이용이 가능합니다.</h4>
                                            <form action="#" class="comment-form">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="아이디">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="비밀번호">
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <textarea placeholder="소중한 상품후기를 적어주세요"></textarea>
                                                        <button type="submit" class="site-btn">사용후기 게시하기</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- 탭 3 -->
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                    <div class="product-content">
                                        <div class="col-lg-7">
                                                <h5>상품문의</h5>
                                                <p> 상품문의 게시판 구현부 </p>
                                            
                                            </div>
                                    </div>
                                </div>
                                
                                <!-- 탭 4 -->
                                <div class="tab-pane fade" id="tab-4" role="tabpanel">
                                    <div class="product-content">
                                        <div class="col-lg-7">
                                                <h5>배송정보</h5>
                                                <p>- 배송은 결제일로부터 3일이내 발송됩니다. (단, 주말 및 공휴일은 배송일에서 제외됩니다.)<br>
												   - 주문제작의 상품의 경우 상품에 따라 배송기간이 상이할수 있습니다.<br>
												   - 각 공급사마다 추가 배송비가 부과될수 있으며, 배송비 부과 기준에 따라 별도의 배송비가 책정될 수도 있습니다. (일부 도서·산간 지역의 경우 추가배송비가 발생할 수 있습니다.)<br>
												   - 직접수령은 불가하며 온라인 주문/배송만 가능합니다.<br>
												   - 공급사의 배송실수나 착오로 인한 반품 배송비용은 공급사에서 부담합니다.<br>
												   - 상품의 재고상황에 따라 배송일이 다소 지연되거나 품절취소 될 수도 있으니, 이 점 양해하여 주시기 바랍니다.</p>
                                                <h5>교환/반품</h5>
                                                <p> - 교환/반품/취소/환불 신청은 배송완료 후 7일 이내 가능합니다.(단, 일부 제품의 경우 신청이 제한될 수 있습니다.)<br>
													- 환불승인 후 영업일 기준 3~7일 이내 환불 및 취소여부 확인 가능합니다.<br>
													- 상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.<br>
													- 상품가치가 훼손된 경우 반품/환불이 불가합니다. (제품포장 개봉 및 주문제작상품/밀봉포장상품 및 스티커부착 상품 / 식품 등)<br>
													- 출고 이후 반품/환불 요청 시 상품 회수 후 처리됩니다.<br>
													- 상품페이지에 교환/환불/AS에 대한 브랜드 개별기준이 있는 경우에는 해당 내용이 우선 적용 됩니다.</p>
                                            </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>판매자 인기상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/resources/img/products/dog.jpg" alt="">
                            <div class="sale">Sale</div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">강아지</div>
                            <a href="#">
                                <h5>겨울 따뜻한 크리스마스 포인베리 루돌프 양털 조끼 XS-7XL</h5>
                            </a>
                            <div class="product-price">
                                31,200원
                                <span>19,800원</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/resources/img/products/dog1.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">강아지</div>
                            <a href="#">
                                <h5>도그웨그 스마일 패딩 조끼 강아지 겨울 아우터 애견 의류</h5>
                            </a>
                            <div class="product-price">
                                18,900원
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/resources/img/products/dog3.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">강아지</div>
                            <a href="#">
                                <h5>리토가토 오가닉 애착 토이</h5>
                            </a>
                            <div class="product-price">
                                12,900원
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/resources/img/products/dog4.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">고양이</div>
                            <a href="#">
                                <h5>코쿠모노 벤토혼합 하이브리드 두부모래 가는입자 고양이모래 3개 묶음 (3+1 행사중!)</h5>
                            </a>
                            <div class="product-price">
                                6,000원
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Related Products Section End -->


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