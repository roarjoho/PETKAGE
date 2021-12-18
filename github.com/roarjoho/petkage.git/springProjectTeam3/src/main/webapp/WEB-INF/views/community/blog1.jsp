<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>커뮤니티-상품후기</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<!-- Font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Sunflower:wght@500&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- Header Section Begin -->
	<section class="blog-section spad">
		<div class="container">

			<div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
				<div class="blog-sidebar" style="position: relative; left: 400px;">
					<div class="blog-category">
						<ul>
							<li><a href="${pageContext.request.contextPath}/community/blog1?boardCategory_number=1"
								class="font1"><img src="${pageContext.request.contextPath}/resources/img/category/order1.png" width="60px" height="60px"><br>상품후기</a></li>
							<li><a href="${pageContext.request.contextPath}/community/blog2?boardCategory_number=2"
								class="font1"><img src="${pageContext.request.contextPath}/resources/img/category/information.png" width="60px" height="60px"><br>정보공유</a></li>
							<li><a href="${pageContext.request.contextPath}/community/blog3?boardCategory_number=3"
								class="font1"><img src="${pageContext.request.contextPath}/resources/img/category/pet.png" width="60px" height="60px"><br>사진한컷</a></li>
						</ul>
					</div>

				</div>


				<div style="width: 1200px;">
					<hr style="border: 0px; height: 2px; width: 1200px; background-color: #eeeeee">
					<div class="card"
						style="width: 370px; height: 620px; padding: 10px; margin: 40px 15px; text-align: center; float: left;">
						<h5>
							<i class="far fa-user"></i>꿀팁전달
						</h5>
						<br> <img
							src="${pageContext.request.contextPath}/resources/upload/1.jpg"
							class="card-img-top" alt="..." style=" height: 340px;">
						<div class="card-body" style="text-align: center;">
							<h4 class="font1">강아지가 발을 깨무는 이유</h4>
							<br>안녕하세요, 예동그리입니다... ​<br> <br> <i class="far fa-edit"></i><br> <i class="far fa-eye"></i>1232<br>
							<div class="nice">추천글</div>
						</div>
					</div>
					<div class="card"
						style="width: 370px; height: 620px; padding: 10px; margin: 40px 15px; text-align: center; float: left;">
						<h5>
							<i class="far fa-user"></i>꿀팁전달
						</h5>
						<br>  <img
							src="${pageContext.request.contextPath}/resources/upload/3.jpg"
							class="card-img-top" alt="..." style=" height: 340px;">
						<div class="card-body" style="text-align: center;">
							<h4 class="font1">강아지 이갈이 언제부터?</h4>
							<br>안녕하세요. 어느덧 7개월이 된 동백이..<br> <br> <i class="far fa-edit"></i>2021-09-14
							<br> <i class="far fa-eye"></i>1113<br>
							<div class="nice">추천글</div>
						</div>
					</div>
					<div class="card"
						style="width: 370px; height: 620px; padding: 10px; margin: 40px 15px; text-align: center; float: left;">
						<h5>
							<i class="far fa-user"></i>꿀팁전달
						</h5>
						<br>  <img
							src="${pageContext.request.contextPath}/resources/upload/2.png"
							class="card-img-top" alt="..." style=" height: 340px;">
						<div class="card-body" style="text-align: center;">
							<h4 class="font1">강아지 갸우뚱 하는 이유는?</h4>
							<br> 강아지를 키우는 보호자님이라면...<br> <br> <i class="far fa-edit"></i>2021-10-04
							<br> <i class="far fa-eye"></i>865 <br>
							<div class="nice">추천글</div>
						</div>
					</div>
					
					<br>
				</div>



				<div class="col-lg-9 order-1 order-lg-2">
					<div class="container">
						<div>

							<table class="table"
								style="height: 720px; width: 1200px; margin: 0px auto 70px;">
								<tr>

								

								<!-- 리스트 하나씩 불러올 곳 -->

								<c:if test="${boardListView ne null}">
									<c:forEach var="boardListView" varStatus="status"
										items="${boardListView }">
										<tr class="boardList" style="text-align: left; height: 50px;"
											onclick="location.href='${pageContext.request.contextPath}/community/blogContent?board_numberID=${boardListView.board_numberID }'">
											<td colspan="1" style="width: 250px"><img
												src="${pageContext.request.contextPath}/resources/upload/${boardListView.board_imagePath}"
												class="card-img-top" alt="..."
												style="width: 200px; height: 200px;"></td>
											<td colspan="4">${boardListView.board_number }<br>
												<h3>${boardListView.board_title }</h3> <br>
												${boardListView.board_contents }<br>
											<br> <i class="far fa-user"></i> ${boardListView.user_id }
												/ <i class="far fa-edit"></i>${boardListView.board_createDate }
												/ <i class="far fa-eye"></i> ${boardListView.board_hit }

											</td>

										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty boardListView}">
									<tr>
										<td colspan="5">등록된 글이 없습니다</td>
									</tr>
								</c:if>



								<tr class="pageNumber">
									<td colspan="5" align="center"><c:if
											test="${pageDTO.startPage > pageDTO.pageBlock }">
											<a href="${pageContext.request.contextPath}/community/blog1?boardCategory_number=${boardDTO.boardCategory_number}&pageNum=${pageDTO.startPage-pageDTO.pageBlock}">[이전]</a>
										</c:if> <c:forEach var="i" begin="${pageDTO.startPage }"
											end="${pageDTO.endPage }" step="1">
											<a href="${pageContext.request.contextPath}/community/blog1?boardCategory_number=${boardDTO.boardCategory_number}&pageNum=${i}">${i}
											</a>
										</c:forEach> <c:if test="${pageDTO.endPage < pageDTO.pageCount }">
											<a href="${pageContext.request.contextPath}/community/blog1?boardCategory_number=${boardDTO.boardCategory_number}&pageNum=${pageDTO.startPage+pageDTO.pageBlock}">[다음]</a>
										</c:if></td>
									<td colspan="5" align="right" style="border-bottom: 0"><input
										type="button" class="writeBtn" value="Write!"
										onclick="location.href='${pageContext.request.contextPath}/community/blogWriteForm'">
									</td>
								</tr>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>




	<!-- Footer Section Begin -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.zoom.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>

</html>