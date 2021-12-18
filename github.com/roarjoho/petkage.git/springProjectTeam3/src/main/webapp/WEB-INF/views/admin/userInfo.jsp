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
			var result = confirm("회원을 삭제 하시겠습니까?");
			var user_id = document.getElementById("user_id").value;			
			if(result){
				location.href='${pageContext.request.contextPath}/admin/deleteUserPro?user_id='+user_id;
						
			}else{
				return false;
			}
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
                     <h4>회원</h4>
                     <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                        <li class="breadcrumb-item">
                           <a href="${pageContext.request.contextPath}/admin/index">
                              <i class="icofont icofont-home"></i>
                           </a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/userList">회원 관리</a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/userInfo">회원 상세정보</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->
    
      <form method="post" enctype="multipart/form-data">	
            <div class="row">
               <div class="col-sm-10">                
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-10 table-responsive">    
                                                                           
  							<div class="form-group row">
								    <label for="user_id" class="col-xs-2 col-form-label form-control-label">아이디</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="user_id" name="user_id" value="${userDTODetail.user_id }" readonly>
								    </div>
								</div>
																
								<div class="form-group row">
								    <label for="user_pwd" class="col-xs-2 col-form-label form-control-label">비밀번호</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="password" id="user_pwd" name="user_pwd" value="${userDTODetail.user_pwd }" readonly>
								    </div>
								</div>
								 
								<div class="form-group row">
								    <label for="user_name" class="col-xs-2 col-form-label form-control-label">이름</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="user_name" name="user_name" value="${userDTODetail.user_name }" readonly>
								        </div>
								</div>
								
								<div class="form-group row">
								    <label for="user_phone" class="col-xs-2 col-form-label form-control-label">휴대폰번호</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="user_phone" name="user_phone" value="${userDTODetail.user_phone }" readonly>
								        </div>
								</div>
								
								
								<div class="form-group row">
								    <label for="user_email" class="col-xs-2 col-form-label form-control-label">이메일</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="user_email" name="user_email" value="${userDTODetail.user_email }" readonly>
								        </div>
								</div>  
													 
								<div class="form-group row">
							    	<label for="user_createDate" class="col-xs-2 col-form-label form-control-label">가입날짜</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="text" id="user_createDate" name="user_createDate" value="${userDTODetail.user_createDate }" readonly>
							    		</div>
								</div>

								<div class="form-group row">
							    	<label for="user_deleteCheck" class="col-xs-2 col-form-label form-control-label">회원 삭제여부</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="text" id="user_deleteCheck" name="user_deleteCheck" value="${userDTODetail.user_deleteCheck }" readonly>
							    		</div>
								</div>	
								
								<div class="form-group row">
							    	<label for="user_deleteDate" class="col-xs-2 col-form-label form-control-label">회원 삭제날짜</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="text" id="user_deleteDate" name="user_deleteDate" value="${userDTODetail.user_deleteDate }" readonly>
							    		</div>
								</div>				 							                                        
                           </div>
                        </div>
                     </div>
                  </div>                      
               </div>                       
           	 </div>        
     		</form>
     		
     		<input type="button" value="회원정보 수정" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/admin/updateUser?user_id=${userDTODetail.user_id }'">
			<input type="button" value="회원 삭제" class="btn btn-danger waves-effect waves-light" onclick="deleteBtn();">			
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
