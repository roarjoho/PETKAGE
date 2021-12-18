<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>커뮤니티-게시글</title>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
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


</head>

<script type="text/javascript">
// function deleteBtn(){
// 	var result = confirm("정말로 삭제 하시겠습니까?");
// 	if(result){
// 		location.href="../community/blogDeletePro";
		
// 	}else{
// 		return false;
// 	}
// }
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

						<table class="table" style="width: 1200px; margin: 0px auto 0;">
						<tr><td rowspan="4" style="width: 600px;"><img src="${pageContext.request.contextPath}/resources/upload/${BoardContentView.board_imagePath }" class="card-img-top" alt="..." style=" width:550px; height: 650px;"></td>
							<td style="height: 50px;"><h5><i class="far fa-user"></i>  ${BoardContentView.user_id }</h5></td>
							<td><i class="far fa-edit"></i>  ${BoardContentView.board_createDate } / <i class="far fa-eye"></i> ${BoardContentView.board_hit }</td></tr>
						<tr><td colspan="3" style="height: 50px;"><h4>${BoardContentView.board_title }</h4></td></tr>
						<tr><td colspan="3"><div style="white-space:pre-line;">${BoardContentView.board_contents }</div></td></tr>
							<tr>
								<td colspan="3">
									
									<!-- 댓글 폼 시작 -->
									<div class="container" style="padding-top: 30px">
										<form:form name="form" id="form" role="form" modelAttribute="replyDTO" method="post">
										<form:hidden path="board_numberID" id="board_numberID"/>
										<form:hidden path="reply_number" id="reply_number"/>
										<form:hidden path="reply_createDate" id="reply_createDate"/>
									<div class="row">
										<div class="col-sm-10">
											<form:textarea path="reply_contents" id="reply_contents" class="form-control" rows="3" placeholder="댓글을 입력해 주세요!"></form:textarea>
										</div>
										<div class="col-sm-2">
										<%-- 					<input type="text" path="user_id" class="form-control" id="user_id"  value="${sessionScope.id }" readonly="true"></input> --%>
										<%-- 					${sessionScope.id } --%>
											<button type="button" class="btn btn-sm btn-primary" id="btnReplySave"> 입력 </button>
										</div>
									</div>
									</form:form>
								</div>
								<!-- 댓글 폼 끝  -->
									
									<!-- 댓글 목록 시작-->
									<div class="container" style="padding-top: 30px">
										<h6 class="border-bottom pb-2 mb-0"></h6>
										<div id="replyList"></div>
									</div> <!-- 댓글 목록 끝 -->
								</td>
							</tr>


							<tr>
							<td colspan="4" align="right" valign="middle" style="height: 8px;border-bottom: 0">
							<c:if test="${sessionScope.id eq BoardContentView.user_id}">
								<input type="button" value="수정" class="listBtn1" 
								onclick="location.href='${pageContext.request.contextPath}/community/blogUpdateForm?board_numberID=${BoardContentView.board_numberID }'">
								<input type="button" value="삭제" class="listBtn1" 
								onclick="location.href='${pageContext.request.contextPath}/community/blogDeletePro?board_numberID=${BoardContentView.board_numberID }&boardCategory_number=${BoardContentView.boardCategory_number }'">
								<%-- 			onclick="location.href='${pageContext.request.contextPath}/community/blogDeletePro'"> --%>
							</c:if>
							<input type="button" value="글목록" class="listBtn1" 
							onclick="location.href='${pageContext.request.contextPath}/community/blog${BoardContentView.boardCategory_number }?boardCategory_number=${BoardContentView.boardCategory_number }'">
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

	<!-- 댓글 목록 showReplyList() 함수 실행 -->
	<script>
		$(document).ready(function(){
			showReplyList('${sessionScope.id}');
		});
	</script>
    
 	<!-- 댓글 보기 스크립트 -->
    <script type="text/javascript">
    
		function showReplyList(id){
			
			
			var url = "${pageContext.request.contextPath}/restBoard/getReplyList";
			var paramData = {"board_numberID" : "${BoardContentView.board_numberID}"};
	
			$.ajax({
	            type: 'POST',
	            url: url,
	            data: paramData,
	            dataType: 'json',
	            success: function(result) {
	               	var htmls = "";
				if(Object.keys(result).length < 1) {
// 					htmls.push("등록된 댓글이 없습니다.");
				} else {
                    $(result).each(function(){
                    	
                    var date = new Date(this.reply_createDate);
                    	
                     htmls += '<div class="media text-muted pt-3" id="reply_number' + this.reply_number + '">';
                     htmls += '<svg aria-hidden="true" focusable="false" class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="2em" height="1em" fill="#72E15E"><!-- Font Awesome Free 5.15.4 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) --><path d="M532 386.2c27.5-27.1 44-61.1 44-98.2 0-80-76.5-146.1-176.2-157.9C368.3 72.5 294.3 32 208 32 93.1 32 0 103.6 0 192c0 37 16.5 71 44 98.2-15.3 30.7-37.3 54.5-37.7 54.9-6.3 6.7-8.1 16.5-4.4 25 3.6 8.5 12 14 21.2 14 53.5 0 96.7-20.2 125.2-38.8 9.2 2.1 18.7 3.7 28.4 4.9C208.1 407.6 281.8 448 368 448c20.8 0 40.8-2.4 59.8-6.8C456.3 459.7 499.4 480 553 480c9.2 0 17.5-5.5 21.2-14 3.6-8.5 1.9-18.3-4.4-25-.4-.3-22.5-24.1-37.8-54.8zm-392.8-92.3L122.1 305c-14.1 9.1-28.5 16.3-43.1 21.4 2.7-4.7 5.4-9.7 8-14.8l15.5-31.1L77.7 256C64.2 242.6 48 220.7 48 192c0-60.7 73.3-112 160-112s160 51.3 160 112-73.3 112-160 112c-16.5 0-33-1.9-49-5.6l-19.8-4.5zM498.3 352l-24.7 24.4 15.5 31.1c2.6 5.1 5.3 10.1 8 14.8-14.6-5.1-29-12.3-43.1-21.4l-17.1-11.1-19.9 4.6c-16 3.7-32.5 5.6-49 5.6-54 0-102.2-20.1-131.3-49.7C338 339.5 416 272.9 416 192c0-3.4-.4-6.7-.7-10C479.7 196.5 528 238.8 528 288c0 28.7-16.2 50.6-29.7 64z"/></svg>';
                     htmls += '<title>Placeholder</title>';
                     htmls += '</svg>';
                     htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
                     htmls += '<span class="d-block">';
                     htmls += '<strong class="text-gray-dark">' + this.user_id + '</strong>';
                     htmls += '</span>';
                     htmls += this.reply_contents;
                     htmls += '<span class="d-block" style="font-size: 8pt; color: gray;">';
	                 htmls += date.toLocaleString();
	                 htmls += '</span>';
                     if(id==this.user_id){
                   	 htmls += '<span class="d-block">';
                     htmls += '<span style="font-size: 9pt">';
                     htmls += '<a href="javascript:void(0)" onclick="editReply(' + this.reply_number + ', \'' + this.user_id + '\', \'' + this.reply_contents + '\' )" style="padding-right:5px; color:#72E15E; font-weight:700">수정</a>';
                     htmls += '<a href="javascript:void(0)" onclick="deleteReply(' + this.reply_number + ')" style="color:#72E15E; font-weight:700" class="">삭제</a>';
                     }
                     htmls += '</span>';
                     htmls += '</span>';
                     htmls += '</p>';
                     htmls += '</div>';
                });	
				}
	
				$("#replyList").html(htmls);
	
	            }
			});
		}
		
	</script>
	
	<!-- 댓글 저장 스크립트 -->
	<script type="text/javascript">
		$(document).on('click', '#btnReplySave', function(){
			
			var replyContent = $('#reply_contents').val();
// 			var replyReg_id = $('#user_id').val();
			var replyReg_id = '${sessionScope.id}';
			var paramData = JSON.stringify({"reply_contents": replyContent
					, "user_id": replyReg_id
					, "board_numberID":'${BoardContentView.board_numberID}'
			});
			var headers = {"Content-Type" : "application/json"
					, "X-HTTP-Method-Override" : "POST"};
			$.ajax({
				url: "${pageContext.request.contextPath}/restBoard/saveReply"
				, headers : headers
				, data : paramData
				, type : 'POST'
				, dataType : 'text'
				, success: function(result){
					showReplyList('${sessionScope.id}');
					$('#reply_contents').val('');
					$('#user_id').val('');
				}
				, error: function(error){
					console.log("에러 : " + error);
				}
			});
		});
		
	</script>
	
	<!-- 댓글 수정 스크립트 -->
	<script type="text/javascript">
	
		function editReply(reply_number, user_id, reply_contents){
			
			var htmls = "";
			
			htmls += '<div class="media text-muted pt-3" id="reply_number' + reply_number + '">';
			htmls += '<svg aria-hidden="true" focusable="false" class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="2em" height="1em" fill="#72E15E"><!-- Font Awesome Free 5.15.4 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) --><path d="M532 386.2c27.5-27.1 44-61.1 44-98.2 0-80-76.5-146.1-176.2-157.9C368.3 72.5 294.3 32 208 32 93.1 32 0 103.6 0 192c0 37 16.5 71 44 98.2-15.3 30.7-37.3 54.5-37.7 54.9-6.3 6.7-8.1 16.5-4.4 25 3.6 8.5 12 14 21.2 14 53.5 0 96.7-20.2 125.2-38.8 9.2 2.1 18.7 3.7 28.4 4.9C208.1 407.6 281.8 448 368 448c20.8 0 40.8-2.4 59.8-6.8C456.3 459.7 499.4 480 553 480c9.2 0 17.5-5.5 21.2-14 3.6-8.5 1.9-18.3-4.4-25-.4-.3-22.5-24.1-37.8-54.8zm-392.8-92.3L122.1 305c-14.1 9.1-28.5 16.3-43.1 21.4 2.7-4.7 5.4-9.7 8-14.8l15.5-31.1L77.7 256C64.2 242.6 48 220.7 48 192c0-60.7 73.3-112 160-112s160 51.3 160 112-73.3 112-160 112c-16.5 0-33-1.9-49-5.6l-19.8-4.5zM498.3 352l-24.7 24.4 15.5 31.1c2.6 5.1 5.3 10.1 8 14.8-14.6-5.1-29-12.3-43.1-21.4l-17.1-11.1-19.9 4.6c-16 3.7-32.5 5.6-49 5.6-54 0-102.2-20.1-131.3-49.7C338 339.5 416 272.9 416 192c0-3.4-.4-6.7-.7-10C479.7 196.5 528 238.8 528 288c0 28.7-16.2 50.6-29.7 64z"/></svg>';
			htmls += '<title>Placeholder</title>';
// 			htmls += '<rect width="100%" height="100%" fill="#72E15E"></rect>';
// 			htmls += '<text x="50%" fill="#72E15E" dy=".3em">32x32</text>';
			htmls += '</svg>';
			htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
			htmls += '<span class="d-block">';
			htmls += '<strong class="text-gray-dark">' + user_id + '</strong>';
			htmls += '<span style="padding-left: 7px; font-size: 9pt">';
			htmls += '<a href="javascript:void(0)" onclick="updateReply(' + reply_number + ', \'' + user_id + '\')" style="padding-right:5px;">저장</a>';
			htmls += '<a href="javascript:void(0)" onClick="showReplyList(\''+user_id+'\')">취소<a>';
			htmls += '</span>';
			htmls += '</span>';		
			htmls += '<textarea name="editContent" id="editContent" class="form-control" rows="3">';
			htmls += reply_contents;
			htmls += '</textarea>';
			htmls += '</p>';
			htmls += '</div>';
			$('#reply_number' + reply_number).replaceWith(htmls);
			$('#reply_number' + reply_number + ' #editContent').focus();
			
		}
		
	</script>
		
	<!-- 댓글 수정 내용 저장 스크립트 -->
	<script type="text/javascript">
	
		function updateReply(reply_number, user_id){
			var replyEditContent = $('#editContent').val();
			var paramData = JSON.stringify({"reply_contents": replyEditContent
					, "reply_number": reply_number
			});
			var headers = {"Content-Type" : "application/json"
					, "X-HTTP-Method-Override" : "POST"};
			$.ajax({
				url: "${pageContext.request.contextPath}/restBoard/updateReply"
				, headers : headers
				, data : paramData
				, type : 'POST'
				, dataType : 'text'
				, success: function(result){
	                console.log(result);
					showReplyList('${sessionScope.id}');
				}
				, error: function(error){
					console.log("에러 : " + error);
				}
			});
		}
		
	</script>
		
	<!-- 댓글 삭제 스크립트 -->
	<script type="text/javascript">
		function deleteReply(reply_number){
			var paramData = {"reply_number": reply_number};
			var deleteCheck = confirm("댓글을 삭제 하시겠습니까?");
			
			if(deleteCheck){
				$.ajax({
					url: "${pageContext.request.contextPath}/restBoard/deleteReply"
					, data : paramData
					, type : 'POST'
					, dataType : 'text'
					, success: function(result){
						showReplyList('${sessionScope.id}');
					}
					, error: function(error){
						console.log("에러 : " + error);
					}
				});
			} else {
				return false;
			}
			
		}
		
	</script>
	
</body>
</html>