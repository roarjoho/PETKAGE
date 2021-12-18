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
	    <title>장바구니</title>
	
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
	                        <a href="#"><i class="fa fa-home"></i>메인</a>
	                        <a href="./shop.jsp">스토어</a>
	                        <span>장바구니</span>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>상품정보</th>
                                    <th class="p-name">상품명</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>total</th>
                                    <th><a href="${pageContext.request.contextPath}/shop/cartDeleteBtn"><i class="ti-close"></i></a></th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:if test="${cartSelectList ne null }">
	                            	<c:forEach var="cartSelectList" varStatus="status" items="${cartSelectList}">
		                                <tr>
		                                    <td class="cart-pic first-row"><img src="${pageContext.request.contextPath}/resources/upload/${cartSelectList.product_imagePath}" alt="" style="width: 200px; height: 200px"></td>
		                                    <td class="cart-title first-row">
		                                        <h5>${cartSelectList.product_name}</h5>
		                                    </td>
		                                    <td class="p-price first-row">${cartSelectList.product_price}</td>
		                                    <td class="qua-col first-row">
		                                        <div class="quantity">
		                                            <div class="pro-qty">
		                                                <input type="text" value="${cartSelectList.cart_count }">
		                                            </div>
		                                        </div>
		                                    </td>
		                                    <td class="total-price first-row"><label id="productPrice${status.count }"><c:set var="total" value="${cartSelectList.product_price*cartSelectList.cart_count }"/><c:out value="${total }"></c:out></label></td>
		                                    
		                                    <td class="close-td first-row"><a href="${pageContext.request.contextPath}/shop/cartDeleteBtn?product_number=${cartSelectList.product_number}"><i class="ti-close"></i></a></td>
		                                </tr>
		                            </c:forEach>
                                </c:if>
                                <c:if test="${empty cartSelectList}">
                                	<tr>
                                		<td colspan="6">상품이 없습니다</td>
                                	</tr>
                                </c:if>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="cart-buttons">
                                <a href="#" class="primary-btn continue-shop">다른 상품보러가기</a>
                                <a href="#" class="primary-btn up-cart">새로고침</a>
                            </div>
<!--                             <div class="discount-coupon">
                                <h6>Discount Codes</h6>
                                <form action="#" class="coupon-form">
                                    <input type="text" placeholder="Enter your codes">
                                    <button type="submit" class="site-btn coupon-btn">Apply</button>
                                </form>
                            </div> -->
                            
                            <!-- 할인코드? 넣는 곳 -->
                        </div>
                        <div class="col-lg-4 offset-lg-4">
                            <div class="proceed-checkout">
                                <ul>
                                    <li class="cart-total">total <span id="totalPrice">
                                    									<c:if test="${!empty cartSelectList}">
                                    											<c:forEach var="i" begin="0" end="${cartSelectList.size()-1 }" step="1">
                                    												<c:set var="total2" value="${total2+cartSelectList.get(i).product_price*cartSelectList.get(i).cart_count }"/>
                                    											</c:forEach>
                                    											<c:out value="${total2 }"></c:out>
                                    									</c:if>
                                    							</span>
                                   	</li>
                                </ul>
                                <c:if test="${!empty cartSelectList}">
                               	 <a href="${pageContext.request.contextPath}/shop/check-out2" class="proceed-btn">결제하기</a>
                               	</c:if>
                                <c:if test="${empty cartSelectList}">
                                	<a href="#" class="proceed-btn">결제하기</a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
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