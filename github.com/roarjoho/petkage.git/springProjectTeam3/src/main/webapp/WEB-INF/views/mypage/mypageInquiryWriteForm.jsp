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
    <title>마이페이지-문의글작성</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <!-- Font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<script type="text/javascript">

	$(document).ready(function () {
		 $(document).on("click", "button[name='btnSave']", function () {

			var title = $("input[name='title']");
			var content = $("textarea[name='content']");

			if(!title.val()){
				alert("제목을 입력하세요");
				title.focus();
				return false;
			}
			else if(!content.val()){
				alert("내용을 입력하세요");
				content.focus();
				return false;
			}
			
		 });

	});
	
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
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

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
							

		<div class="container">
		<div>
				
                
				     <article>
	
						<div class="container" role="main">
			
							<h3 class="font1">1:1문의글 작성</h3><br>
							<form method="post" action="${pageContext.request.contextPath}/mypage/InquiryWritePro">
				
								<div class="mb-3">
				
									<label for="title" class="font1">제목</label><label style="color:red;">*</label>
				
									<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
									<input type="hidden" name="boardCategory_number" value="4">
								</div>
				
								<div class="clear"></div>
				
								<div class="mb-3">
				
									<label for="reg_id" class="font1">작성자</label>
				
									<input type="text" class="form-control" name="id" id="id" readonly="readonly" value="${sessionScope.id }">
				
								</div>
								
								<div class="clear"></div>
								
								<div class="mb-3">
				
									<label for="content" class="font1">내용</label><label style="color:red;">*</label>
				
									<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
				
								</div>
								<div class="clear"></div>
								<div >
					
									<button type="submit" class="listBtn" id="btnSave" name="btnSave">저장</button>
					
									<button type="button" class="listBtn" id="btnList" onclick="history.back();">목록</button>
					
								</div>
				
							</form>
				
				
						</div>
				
					</article>
                
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