<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상점</title>

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

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<script type="text/javascript">

	$( document ).ready(function() {
		$('#sorting').on('change',function(){
			var productCategory_number = $('#productCategory_number').val();
			var sorting = '';
			if($('#sorting').val()=='product_date'){
				sorting = 'product_date';
			}else if($('#sorting').val()=='product_priceDesc'){
				sorting = 'product_priceDesc';
			}else if($('#sorting').val()=='product_priceAsc'){
				sorting = 'product_priceAsc';
			}else{
				return false;
			}
			
			$('#forEachProduct1').empty();
			$('#allProduct').empty();
			$('#pageNumber').empty();	
			$.getJSON('${pageContext.request.contextPath}/shop/shopOrderby?productCategory_number='+productCategory_number+'&sorting='+sorting,function(rdata){
				$.each(rdata,function(index,item){
					var orderList = ''; 
					orderList+='<div class="col-lg-4 col-sm-6" id="reset">';
					orderList+='<div class="product-item">';
					orderList+='<div class="pi-pic">';
					orderList+= '<img width="300px" height="300px" src="${pageContext.request.contextPath}/resources/upload/'+item.product_imagePath+'" alt="">';
					orderList+='<div class="icon">';
					orderList+='<i class="icon_heart_alt"></i>';
					orderList+='</div>';
					orderList+='<ul>';
					orderList+='<li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>';
					orderList+='<li class="quick-view"><a href="${pageContext.request.contextPath}/shop/product?product_number='+item.product_number+'">자세히</a></li>';
					orderList+='<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>';
					orderList+='</ul>';
					orderList+='</div>';
					orderList+='<div class="pi-text">';
					orderList+='<a href="#">';
					orderList+='<h5>'+item.product_name+'</h5>';
					orderList+='</a>';
					orderList+='<div class="product-price">';
					orderList+=item.product_price+'원';
					orderList+='</div></div></div></div>';

					$('#forEachProduct1').append(orderList);
					});
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
    <!-- Breadcrumb Section Begin -->
    
	<input type="hidden" value="${shopListView.get(0).productCategory_number}" id="productCategory_number">
    
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">스토어</a>
                        <span>강아지</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Shop Section Begin -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    <div class="filter-widget">
                        <h4 class="fw-title">카테고리</h4>
                        <ul class="filter-catagories">
                            <li><a href="${pageContext.request.contextPath}/shop/shop_test?productCategory_number=1">강아지</a></li>
                            <li><a href="${pageContext.request.contextPath}/shop/shop_test?productCategory_number=2">고양이</a></li>
                        </ul>
                    </div>
<!--                     <div class="filter-widget"> -->
<!--                         <h4 class="fw-title">Brand</h4> -->
<!--                         <div class="fw-brand-check"> -->
<!--                             <div class="bc-item"> -->
<!--                                 <label for="bc-calvin"> -->
<!--                                     퓨리나 -->
<!--                                     <input type="checkbox" id="bc-calvin"> -->
<!--                                     <span class="checkmark"></span> -->
<!--                                 </label> -->
<!--                             </div> -->
<!--                             <div class="bc-item"> -->
<!--                                 <label for="bc-diesel"> -->
<!--                                     로얄캐닌 -->
<!--                                     <input type="checkbox" id="bc-diesel"> -->
<!--                                     <span class="checkmark"></span> -->
<!--                                 </label> -->
<!--                             </div> -->
<!--                             <div class="bc-item"> -->
<!--                                 <label for="bc-polo"> -->
<!--                                    	한국다람쥐 -->
<!--                                     <input type="checkbox" id="bc-polo"> -->
<!--                                     <span class="checkmark"></span> -->
<!--                                 </label> -->
<!--                             </div> -->
<!--                             <div class="bc-item"> -->
<!--                                 <label for="bc-tommy"> -->
<!--                                     츄르 -->
<!--                                     <input type="checkbox" id="bc-tommy"> -->
<!--                                     <span class="checkmark"></span> -->
<!--                                 </label> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     슬라이더 있던 자리 -->
<!--                    <div class="filter-widget">
                        <h4 class="fw-title">Price</h4>
                        <div class="filter-range-wrap">
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="10" data-max="50">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn">Filter</a>
                    </div> -->
                    <!-- 슬라더의 경우 webapp/js/main.js 파일에 소스가 들어있음 ₩기호를 인식하지 못 하는 문제가 있음-->
                    <div class="filter-widget">
<!--                         <h4 class="fw-title">Size</h4> -->
<!--                         <div class="fw-size-choose"> -->
<!--                             <div class="sc-item"> -->
<!--                                 <input type="radio" id="s-size"> -->
<!--                                 <label for="s-size">소형</label> -->
<!--                             </div> -->
<!--                             <div class="sc-item"> -->
<!--                                 <input type="radio" id="m-size"> -->
<!--                                 <label for="m-size">중형</label> -->
<!--                             </div> -->
<!--                             <div class="sc-item"> -->
<!--                                 <input type="radio" id="l-size"> -->
<!--                                 <label for="l-size">대형</label> -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>
                    <div class="filter-widget">
<!--                         <h4 class="fw-title">분류</h4> -->
<!--                         <div class="fw-tags"> -->
<!--                             <a href="#">간식</a> -->
<!--                             <a href="#">케어용품</a> -->
<!--                             <a href="#">장난감</a> -->
<!--                             <a href="#">기획전</a> -->
<!--                             <a href="#">임시</a> -->
<!--                             <a href="#">임시</a> -->
<!--                             <a href="#">임시</a> -->
<!--                         </div> -->
                    </div>
                </div>
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="product-show-option">
                        <div class="row">
                            <div class="col-lg-7 col-md-7">
                                <div class="select-option">
                                    <select class="sorting" name="sorting" id="sorting">
                                        <option value="0">순서</option>
                                        <option value="product_date">최신순</option>
                                        <option value="product_priceDesc">가격 높은 순</option>
                                        <option value="product_priceAsc">가격 낮은 순</option>
                                    </select>
<!--                                	 <div class="select-option"> -->
<!--                                      <select class="sorting"> -->
<!--                                         <option value="">체중</option> -->
<!--                                         <option value="cat">2kg미만</option> -->
<!--                                         <option value="dog">4kg미만</option> -->
<!--                                         <option value="dog">6kg이상</option> -->
<!--                                     </select> -->
<!--                                 <select class="p-show"> -->
<!--                                  	<option value="">페이지:</option> -->
<!--                                 </select> -->
                             
<!--                             </div> -->
                           
                                </div>
                            </div>
                      		<div class="col-lg-30 col-md-30 text-right" style="width: 170px">
                            </div>
                            <div class="col-lg-30 col-md-30 text-right">
                                <p id="allProduct">전체 상품 수 ${pageDTO.count}개 (${pageDTO.pageNum}/${pageDTO.pageCount })</p>
                            </div>
                        </div>
                    </div>
                    <div class="product-list" id="list">
                        <div class="row" id="forEachProduct1">
	                        <c:if test="${shopListView ne null }">
	                            	<c:forEach var="shopListView" varStatus="status" items="${shopListView}">
	                            	
			                            <div class="col-lg-4 col-sm-6" id="displayNone">
			                                <div class="product-item">
			                                    <div class="pi-pic">
			                                        <img width="300px" height="300px" src="${pageContext.request.contextPath}/resources/upload/${shopListView.product_imagePath }" alt="">
			                                        <div class="icon">
			                                            <i class="icon_heart_alt"></i>
			                                        </div>
			                                        <ul>
			                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
			                                            <li class="quick-view"><a href="${pageContext.request.contextPath}/shop/product?product_number=${shopListView.product_number}">자세히</a></li>
			                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
			                                        </ul>
			                                    </div>
			                                    <div class="pi-text">
			                                        <a href="#">
			                                            <h5>${shopListView.product_name }</h5>
			                                        </a>
			                                        <div class="product-price">
			                                            ${shopListView.product_price }원
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
		                            </c:forEach>
	                            </c:if>
	                            
	                            					
		                </div>
<!-- 		                <div class="row" id="forEachProduct2"> -->
<!-- 		                </div>		                -->
		   </div>
	        <div style="text-align: center;" id="pageNumber">
	            <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
					<a href="${pageContext.request.contextPath}/shop/shop_test?pageNum=${pageDTO.startPage-pageDTO.pageBlock}&productCategory_number=${shopListView.get(0).productCategory_number}">[이전]</a>
					</c:if>
					
					<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
						<a href="${pageContext.request.contextPath}/shop/shop_test?pageNum=${i}&productCategory_number=${shopListView.get(0).productCategory_number}">${i} </a>
					</c:forEach>
					
					<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
					<a href="${pageContext.request.contextPath}/shop/shop_test?pageNum=${pageDTO.startPage+pageDTO.pageBlock}&productCategory_number=${shopListView.get(0).productCategory_number}">[다음]</a>
				</c:if>
			</div>
        </div>
    </section>
    <!-- Product Shop Section End -->

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