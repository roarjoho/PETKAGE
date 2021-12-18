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
    <title>마이페이지-문의글</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <!-- Font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

</head>

<script type="text/javascript">

function deleteBtn(){

	var result = confirm("정말로 삭제 하시겠습니까?");

	if(result){

		location.href='${pageContext.request.contextPath}/mypage/mypageInquiryDeletePro?board_numberID=${InquiryContentView.board_numberID}';

		
	}else{
		return false;
	}
}

</script>

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
				
		<div class="container">
		<div>				
                
	<table class="table" style="width: 800px; margin: 0px auto 0;">
		<tr>
			<td colspan="4" style="height: 5px"><h3 class="font1">1:1문의글 보기</h3></td>
		</tr>
		<tr>
			<th style="height: 5px">번호</th>
			<td>${InquiryContentView.board_number }</td>
			<th>날짜</th>
			<td>${InquiryContentView.board_createDate }</td>
		</tr>
		<tr>
			<th style="height: 5px">작성자</th>
			<td>${InquiryContentView.user_id }</td>
			<th></th>
			<td></td>
		</tr>
		<tr>
			<th style="height: 5px">제목</th>
			<td colspan="3">${InquiryContentView.board_title }</td>			
		</tr>
		<tr>
			<th style="height: 400px">내용</th>
			<td colspan="3" height="250px" class="textContent">${InquiryContentView.board_contents }</td>
		</tr>
		<tr>
			<td colspan="4" align="right" valign="middle" style="height: 8px;border-bottom: 0">
			<input type="button" value="수정" class="listBtn1" 
			onclick="location.href='${pageContext.request.contextPath}/mypage/mypageInquiryUpdateForm?board_numberID=${InquiryContentView.board_numberID }'">
			<input type="button" value="삭제" class="listBtn1"  
			onclick="deleteBtn();">
			<input type="button" value="글목록" class="listBtn1" 
			onclick="location.href='${pageContext.request.contextPath}/mypage/mypageInquiry'">
			</td>
		</tr>
	</table>
                
            </div>
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