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
    <title>주문페이지</title>
	
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    
    <script type="text/javascript">

    $(function(){

        
    	$('#apibtn').click(function(){
    		var name = $("input[name='name']");
			var zip = $("input[name='zip']");
			var address = $("input[name='address']");
			var address2 = $("input[name='address2']");
			var phone = $("input[name='phone']");
			
			var product_number = $("input[name='product_number']");
			var sessionScopeId = $("input[name='sessionScopeId']");
			var product_name = $("input[name='product_name']");
			var priceTotal = $("input[name='priceTotal']");
			var product_stock = $("input[name='product_stock']");
			
			var getPhoneNumber = RegExp(/^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})$/);
			
			if(!name.val()){
				alert("이름을 입력하세요");
				name.focus();
				return false;
			}			
			 if(!zip.val()){
				alert("우편번호를 입력하세요");
				zip.focus();
				return false;
			}
			 if(!address.val()){
				alert("주소를 입력하세요");
				address.focus();
				return false;
			}
			 if(!address2.val()){
				alert("상세주소를 입력하세요");
				address2.focus();
				return false;
			}
			 if(!phone.val()){
				alert("휴대폰번호를 입력하세요");
				phone.focus();
				return false;
			}
			else if (phone.val().length > 0) {
				if (!getPhoneNumber.test(phone.val())) {
					alert("폰넘버 형식에 맞게 입력하세요 ('-'포함하여 입력바랍니다)");
					phone.val("");
					phone.focus();
					return false;
				}
			}

			// 배송정보 값을 json형태로 컨트롤러로 전송
    		$.ajax({
    			url:'${pageContext.request.contextPath}/kakaopay',
				data:{name:$('#name').val(),
					zip:$('#zip').val(),
					address:$('#address').val(),
					address2:$('#address2').val(),
					phone:$('#phone').val(),
					product_number:$('#product_number').val(),
					sessionScopeId:$('#sessionScopeId').val(),
					product_name:$('#product_name').val(),
					priceTotal:$('#priceTotal').val(),
					product_stock:$('#product_stock').val(),
				},
    			dataType:'json',
    			success:function(data){
    				var box = data.next_redirect_pc_url;
    				location.href=box;
    			},
    			error:function(error){
    				alert(error);
    			}
    		});
    	});
    });

    
	
    function addressSearch() {
    	window.open("${pageContext.request.contextPath}/shop/addressSearch", "checkForm", "width=1200,height=600");
    }
	
			
    </script>

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

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="${pageContext.request.contextPath}/resources/index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.jsp">스토어</a>
                        <span>결제페이지</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="checkout-section spad">
        <div class="container">
<!--             <form action="#" class="checkout-form" method="post"> -->
            <div class="checkout-form">
                <div class="row">
                    <div class="col-lg-6">
                        <h4>배송지 정보</h4>
                        <div class="row">
<!--                             <div class="col-lg-6"> -->
<!--                                 <label for="fir">외국식<span>*</span></label> -->
<!--                                 <input type="text" id="fir"> -->
<!--                             </div> -->
                            <div class="col-lg-12">
                                <label for="last">이름<span>*</span></label>
                                <input type="text" id="name" name="name">
                            </div>
<!--                             <div class="col-lg-12"> -->
<!--                                 <label for="cun-name">회사명?</label> -->
<!--                                 <input type="text" id="cun-name"> -->
<!--                             </div> -->
<!--                             <div class="col-lg-12"> -->
<!--                                 <label for="cun">국가<span>*</span></label> -->
<!--                                 <input type="text" id="cun"> -->
<!--                             </div> -->
                            <div class="col-lg-12">
                                <label for="town">우편번호<span>*</span></label>
                                <input type="text" id="zip" name="zip" readonly="readonly">
                            </div>
                            <div class="col-lg-12">
                                <label for="zip">주소<span>*</span></label>
                                <input type="text" id="address" name="address" readonly="readonly">
                            </div>
                            <div class="col-lg-12">
                                <label for="street">상세주소<span>*</span></label>
                                <input type="text" id="address2" name="address2" class="street-first" readonly="readonly">
                            </div>
                            <div class="col-lg-12">
                            	<input type="button" onclick="addressSearch()" value="우편번호 찾기">
                            </div>
<!--                             <div class="col-lg-6"> -->
<!--                                 <label for="email">이메일주소<span>*</span></label> -->
<!--                                 <input type="text" id="email"> -->
<!--                             </div> -->
                            <div class="col-lg-12">
                                <label for="phone">핸드폰<span>*</span></label>
                                <input type="text" id="phone" name="phone">
                            </div>
                            <div class="col-lg-12">
                                <div class="create-item">
                                    <label for="acc-create">
<!--                                         회원가입(이쪽을 체크하면 가입시켜 주는듯) -->
<!--                                         <input type="checkbox" id="acc-create"> -->
<!--                                         <span class="checkmark"></span> -->
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                    
<!--                     orderinfo 테이블로 전달할 값 -->
                    <input type="hidden" value="${product_number}" name="product_number" id="product_number">
                    <input type="hidden" value="${sessionScope.id }" name="sessionScopeId" id="sessionScopeId">
                    <input type="hidden" value="${product_name}" name="product_name" id="product_name">
                    <input type="hidden" value="${priceTotal}" name="priceTotal" id="priceTotal">
                    <input type="hidden" value="${product_stock}" name="product_stock" id="product_stock">

                        <div class="place-order">
                            <h4>주문정보</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>상품명 <span>가격</span></li>
                                    <li class="fw-normal">${product_name} X ${product_stock}<span id="price">${product_price}</span></li>
                                    <li class="total-price">Total <span>${priceTotal}</span></li>
                                </ul>
                                <div class="payment-check">
                                    <div class="pc-item">
                                        <label for="pc-check">
<!--                                             결제수단 -->
<!--                                             <input type="checkbox" id="pc-check"> -->
<!--                                             <span class="checkmark"></span> -->
                                        </label>
                                    </div>
                                    <div class="pc-item">
                                        <label for="pc-paypal">
<!--                                            체크박스 -->
<!--                                             <input type="checkbox" id="pc-paypal"> -->
<!--                                             <span class="checkmark"></span> -->
                                        </label>
                                    </div>
                                </div>
                                <div class="order-btn">
<!--                                     <button type="submit" class="site-btn place-btn" style="height: 60px; width: 150px">주문하기</button> -->
                                    <button name="apibtn" id="apibtn" style="height: 60px; width: 150px"><img src="${pageContext.request.contextPath}/resources/img/payment_icon_yellow_large.png"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
<!--             </form> -->
        </div>
    </section>
    <!-- Shopping Cart Section End -->

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