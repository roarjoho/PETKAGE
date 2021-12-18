<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>

<head>
   <title>펫키지 관리자페이지</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="description" content="Quantum Able Bootstrap 4 Admin Dashboard Template by codedthemes">
   <meta name="keywords" content="appestia, Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
   <meta name="author" content="codedthemes">
   <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin_images/favicon.png" type="image/x-icon">
   <link rel="icon" href="${pageContext.request.contextPath}/resources/admin_images/favicon.ico" type="image/x-icon"> 
   <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/themify-icons/themify-icons.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/icofont/css/icofont.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/simple-line-icons/css/simple-line-icons.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_plugins/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_css/main.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_css/responsive.css">
	<script type="text/javascript">
		//1. 게시글 삭제함수
		function deleteBtn(){
			var result = confirm("해당 게시글을 삭제 하시겠습니까?");
			var board_numberID = document.getElementById("board_numberID").value;
			if(result){
				location.href='${pageContext.request.contextPath}/admin/deleteBoardPro?board_numberID='+board_numberID;						
			}else{
				return false;
			}
		}
		
		//2. 카테고리 바꾸기
		function categoryFilter(){
			var seletedCategory = document.getElementById("categoryFilter");
			var categoryNum = seletedCategory.options[document.getElementById("categoryFilter").selectedIndex].value;
			location.href='${pageContext.request.contextPath}/admin/boardList' + categoryNum;			
		}

	</script> 
</head>

<body class="sidebar-mini fixed">
   <div class="wrapper">        
    <jsp:include page="../inc/admin_top.jsp"></jsp:include>
      <div class="content-wrapper">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12 p-0">
                  <div class="main-header">
                     <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                        <li class="breadcrumb-item">
                           <a href="${pageContext.request.contextPath}/admin/index">
                              <i class="icofont icofont-home"></i>
                           </a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/boardList">게시판 관리</a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/boardList4">1:1 문의게시판 관리</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>

           <!-- 카테고리 선택 -->
 			<div class="row">
				<div class="col-sm-2">
				        <select class="form-control" id="categoryFilter" onchange="categoryFilter();">
				            <option value="1">상품 후기 게시판</option>
				            <option value="2">정보공유 게시판</option>
				            <option value="3">반려동물 사진게시판</option>
				            <option value="4"  selected>1:1 문의게시판</option>
				        </select>
				</div>
			</div>    
				
			 <div class="row">	        
               <div class="col-sm-12">					                                
                  <div class="card">          
						    <div class="tab-pane active" id="reviewBoard" role="tabpanel">
						        <div class="card-block">
			                        <div class="row">
			                        <input type="hidden" id="boardCategory_number" value="${boardDTO.boardCategory_number }">
			                        <input type="hidden" id="board_numberID" value="${boardDTO.board_numberID }">				                        
			                           <div class="col-sm-12 table-responsive">			                           
			                              <table class="table table-hover">
			                                 <thead>
			                                    <tr>
			                                       <th>게시글 번호</th>
			                                       <th>회원 아이디</th>
			                                       <th>제목</th>
			                                       <th>조회수</th>
			                                       <th>작성일</th>
			                                    </tr>
			                                 </thead>
			                              
				                              <tbody>
				                               <c:forEach var="boardDTO" items ="${filterBoard}">
				                                 <input type="hidden" id="board_numberID" value="${boardDTO.board_numberID }">
				                                    <tr>
				                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/boardContent?board_numberID=${boardDTO.board_numberID}'">${boardDTO.board_number }</td>
				                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/boardContent?board_numberID=${boardDTO.board_numberID}'">${boardDTO.user_id }</td>
				                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/boardContent?board_numberID=${boardDTO.board_numberID}'">${boardDTO.board_title }</td>
				                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/boardContent?board_numberID=${boardDTO.board_numberID}'">${boardDTO.board_hit }</td>
				                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/boardContent?board_numberID=${boardDTO.board_numberID}'">${boardDTO.board_createDate }</td>				                                       				                                       
				                                    </tr>
				                                 </c:forEach>
				                               </tbody>                                    
				                            </table>		                              
			                           </div>
			                        </div>
			                     </div>		        
						      </div>						                                     	 	                                                
               				</div>
							<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
								<a href="${pageContext.request.contextPath}/admin/boardList4?pageNum=${pageDTO.startPage-pageDTO.pageBlock}">[이전]</a>
							</c:if>
							<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
								<a href="${pageContext.request.contextPath}/admin/boardList4?pageNum=${i}">${i} </a>
							</c:forEach>
							<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
								<a href="${pageContext.request.contextPath}/admin/boardList4?pageNum=${pageDTO.startPage+pageDTO.pageBlock}">[다음]</a>
							</c:if>                 				
            			</div>
         			</div>
      			</div>
   			</div>
		</div>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery/dist/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery-ui/jquery-ui.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/tether/dist/js/tether.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/bootstrap/js/bootstrap.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/Waves/waves.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery.nicescroll/jquery.nicescroll.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/classie/classie.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/notification/js/bootstrap-growl.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin_js/main.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin_pages/elements.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_js/menu.min.js"></script>
   
	<script>
	var $window = $(window);
	var nav = $('.fixed-button');
	$window.scroll(function(){
	    if ($window.scrollTop() >= 200) {
	       nav.addClass('active');
	    }
	    else {
	       nav.removeClass('active');
	    }
	});
	</script>
</body>

</html>
