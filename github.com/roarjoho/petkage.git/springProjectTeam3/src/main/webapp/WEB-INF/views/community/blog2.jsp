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
<title>커뮤니티-정보공유</title>

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
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">

</head>



<body>
	<!--     Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!--     Header Section Begin -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!--     Header Section Begin -->

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
				
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="container">
					

							<table class="table"
								style="height: 720px; width: 1200px; margin: 0px auto 70px;">

								<tr>
									<td colspan="6"><c:if test="${boardListView ne null}">
											<c:forEach var="boardListView" varStatus="status"
												items="${boardListView }">

												<ul style="list-style-type: none; float: left;">
													<li style="list-style-type: none; margin: 25px;">
														<div class="card" style="width: 300px; height: 600px; padding: 10px; text-align: center;">
															<h5><i class="far fa-user"></i> ${boardListView.user_id }</h5>
															<br> <img src="${pageContext.request.contextPath}/resources/upload/${boardListView.board_imagePath}"
																class="card-img-top" alt="..." style="height: 300px;">
															<div class="card-body" style="text-align: center; text-overflow: ellipsis;">
																<a href="${pageContext.request.contextPath}/community/blogContent?board_numberID=${boardListView.board_numberID}">
																	<div class="delete1"><h4 class="font1">${boardListView.board_title}</h4></div>
																</a><br>
																<div class = "delete">${boardListView.board_contents}</div>
																...<br> <i class="far fa-edit"></i>${boardListView.board_createDate }
																<br>
																<i class="far fa-eye"></i> ${boardListView.board_hit }
															</div>
														</div>

													</li>
												</ul>

												<!-- 							<tr class="boardList" style="text-align: center;" height="50px"> -->
												<%-- 		
					<td>${boardListView.board_number }</td> --%>
												<%-- 								<td>${boardListView.board_title }</td> --%>
												<%-- 								<td>${boardListView.user_id }</td> --%>
												<%-- 								<td>${boardListView.board_createDate }</td> --%>
												<%-- 								<td>${boardListView.board_hit }</td> --%>
												<!-- 							</tr> -->
											</c:forEach>
										</c:if> <c:if test="${empty boardListView}">
											<tr>
												<td colspan="5">등록된 글이 없습니다</td>
											</tr>
										</c:if></td>
								</tr>


								<tr class="pageNumber">
									<td colspan="7" align="center">
										<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
											<a href="${pageContext.request.contextPath}/community/blog2?boardCategory_number=${boardDTO.boardCategory_number}&pageNum=${pageDTO.startPage-pageDTO.pageBlock}">[이전]</a>
										</c:if> <c:forEach var="i" begin="${pageDTO.startPage }"
											end="${pageDTO.endPage }" step="1">
											<a href="${pageContext.request.contextPath}/community/blog2?boardCategory_number=${boardDTO.boardCategory_number}&pageNum=${i}">${i}
											</a>
										</c:forEach> <c:if test="${pageDTO.endPage < pageDTO.pageCount }">
											<a href="${pageContext.request.contextPath}/community/blog2?boardCategory_number=${boardDTO.boardCategory_number}&pageNum=${pageDTO.startPage+pageDTO.pageBlock}">[다음]</a>
										</c:if></td>
									<td colspan="5" align="right" style="border-bottom: 0"><input type="button" class="writeBtn" value="Write!"
										onclick="location.href='${pageContext.request.contextPath}/community/blogWriteForm'">
									</td>
								</tr>
							</table>


						
					</div>
				</div>

			</div>
		</div>
	</section>


	<!--     Footer Section Begin -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!--     Footer Section End -->

	<!--     Js Plugins -->
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