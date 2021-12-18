<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		function deleteBtn(){
			var result = confirm("글을 삭제 하시겠습니까?");			
			var board_numberID = document.getElementById("board_numberID").value;
			var boardCategory_number = document.getElementById("boardCategory_number").value;
			if(result){
				location.href='${pageContext.request.contextPath}/admin/deleteBoardPro?board_numberID='+board_numberID+'&boardCategory_number='+boardCategory_number;						
			}else{
				return false;
			}
		}
	</script>   
</head>

<body class="sidebar-mini fixed">
	<div class="loader-bg">
		<div class="loader-bar">
	</div>
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
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/boardList${boardContentDTO.boardCategory_number }">${categoryName } 게시판 관리</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->
    
            <div class="row">
               <div class="col-sm-10">                
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                        <input type="hidden" id="boardCategory_number" value="${boardContentDTO.boardCategory_number }">
                        <input type="hidden" id="board_numberID" value="${boardContentDTO.board_numberID }">
                           <div class="col-sm-10 table-responsive">  
                              <table class="table">
                              	<thead>
                                    <tr>
                                       <th>게시글 번호</th><th>${boardContentDTO.board_number }</th>
                                       <th>게시판 분류</th><th>${categoryName }</th>
                                       <th>작성일</th><th>${boardContentDTO.board_createDate }</th>
                                    </tr>
                                    <tr>   
                                       <th>제목</th><th>${boardContentDTO.board_title }</th>
                                       <th>아이디</th><th>${boardContentDTO.user_id }</th>
                                       <th>조회수</th><th>${boardContentDTO.board_hit }</th>
                                    </tr>
                                 </thead>
                                    <tr>
                                       <th>첨부 이미지</th>
                                       <td><img src="${pageContext.request.contextPath}/resources/upload/${boardContentDTO.board_imagePath }" alt="첨부파일 없음" style=" width:550px; height: 650px;"></td>
                                    </tr>
                                    <tr>
                                      <th>본문</th><td>${boardContentDTO.board_contents }</td>
                                    </tr>                            
                              </table>
              				</div>						                                        
                          </div>
                       </div>
                    </div>
                 </div>                      
              </div>
              <input type="button" value="글 삭제" class="btn btn-danger waves-effect waves-light" onclick="deleteBtn();">	                       
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
