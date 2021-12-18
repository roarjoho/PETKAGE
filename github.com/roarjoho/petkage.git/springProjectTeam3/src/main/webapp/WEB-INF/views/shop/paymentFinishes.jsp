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
	<script src="https://kit.fontawesome.com/6722a99e85.js" crossorigin="anonymous"></script>
	
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
    
</head>


<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    	<jsp:include page="../inc/top.jsp"></jsp:include>
    <!-- Header Section Begin -->

		<div style="margin: 200px auto; width: 600px; text-align: center;">
			<i class="far fa-check-circle" style="color: #F15F5F; font-size: 50px;"></i><br><br>
			<label style="color: #F15F5F; font-size: 20px; font-weight: bold;">구매가 완료되었습니다.</label>
			<table style="width: 100%; text-align: left;">
				<tr>
					<th width="100px" height="50px" style="color: #F15F5F;">결제 ID</th>
					<td>${sessionScope.id}</td>
				</tr>			
				<tr>
					<th height="50px" style="color: #F15F5F;">상품명</th>
					<td>${product_name }</td>
				</tr>			
				<tr>
					<th height="50px" style="color: #F15F5F;">결제 금액</th>
					<td>${priceTotal }</td>
				</tr>		
				<tr>
					<th colspan="2" style="text-align: center; color: #F15F5F;">배송지 정보</th>
				</tr>		
				<tr>
					<th height="50px" style="color: #F15F5F;">이름</th>
					<td>${name }</td>
				</tr>	
				<tr>
					<th height="50px" style="color: #F15F5F;">휴대폰 번호</th>
					<td>${phone }</td>
				</tr>	
				<tr>
					<th height="50px" style="color: #F15F5F;">주소</th>
					<td style="overflow: hidden; height: 20px;">${zip } ${address } ${address2 }</td>
				</tr>
				<tr>
					<td colspan="2" height="100px"><input type="button" value="계속 쇼핑하기" class="btn btn-danger" style="width: 100%;"
					onclick="location.href='${pageContext.request.contextPath}/shop/shop_test?productCategory_number=1'"></td>
				</tr>	
			</table>
		</div>


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