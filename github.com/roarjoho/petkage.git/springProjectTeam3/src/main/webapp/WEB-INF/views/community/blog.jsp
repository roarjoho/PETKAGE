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
    <title>Fashi - 댕냥 한 컷</title>

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

	<section class="blog-section spad">
		<div class="container">			
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
					<div class="blog-sidebar">
						<div class="blog-catagory">
							<h4>Categories</h4>
							<ul>
								<li><a href="${pageContext.request.contextPath}/community/blog">후기게시판</a></li>
								<li><a href="${pageContext.request.contextPath}/community/blog2">정보공유게시판</a></li>
								<li><a href="${pageContext.request.contextPath}/community/blog3">자랑게시판</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				
	<div class="col-lg-9 order-1 order-lg-2">
		<div class="container">
		<div>
                
                <table class="table" style="height: 720px; width: 800px; margin: 0px auto 70px;">
				<tr>
					<td colspan="3" style="height: 5px"><h3>후기게시판</h3></td>
					<td colspan="2" align="right" valign="bottom"><lable class="allData"></lable>
<!-- 						<form action="boardSearch.jsp" method="post"> -->
<!-- 							<input type="text" name="searchSubject" class="input_box">  -->
<!-- 							<input type="submit" value="검색" class="btn btn-primary"> -->
<!-- 						</form> -->
						<form action="#" method="post" class="d-flex" onsubmit="return searchCheck();">
<!-- 							<select name = "searchSelect"> -->
<!-- 								<option value="subject">제목</option> -->
<!-- 								<option value="name">작성자</option> -->
<!-- 							</select> -->
					        <input class="form-control me-2" name="searchSubject" type="search" placeholder="Search" aria-label="Search" width="100px">
					        <button class="btn btn-outline-primary" type="submit" style="width:80px">검색</button>
    					</form>
					</td>
				</tr>
				<tr style="text-align: center;">
					<th class="tno" style="height: 30px" width="100px">번호</th>
					<th class="ttitle">제목</th>
					<th class="twrite" width="100px">작성자</th>
					<th class="tdate" width="250px">작성일</th>
					<th class="tread" width="100px">조회</th>
				</tr>
				
					
					
					<!-- 리스트 하나씩 불러올 곳 -->
					<tr class="boardList" style="text-align: center;">
						<td style="height: 30px"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					
					
					
				<tr>
					<td colspan="3" valign="top" style="border-bottom: 0">
<!-- 						<ul class="pagination" style="margin-left: 50%"> -->
						
<!-- 							<li class="page-item"><a class="page-link" href="board.jsp?viewPage=" style="width: 60px">이전</a> -->
<!-- 							</li> -->
							
<!-- 							<li class="page-item active"><a class="page-link" href="board.jsp?viewPage="></a></li> -->
							
<!-- 							<li class="page-item"><a class="page-link" href="board.jsp?viewPage=" style="width: 60px">다음</a> -->
<!-- 							</li> -->
						
<!-- 						</ul> -->
					</td>
					<td colspan="5" align="right" style="border-bottom: 0">
						<input type="button" class="btn btn-primary" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/community/blogWriteForm'">
						
					</td>
				</tr>
			</table>
                
                
                
                
                
                
                
                
            </div>
        </div>
    </div>			
								
				
	</section>
				



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