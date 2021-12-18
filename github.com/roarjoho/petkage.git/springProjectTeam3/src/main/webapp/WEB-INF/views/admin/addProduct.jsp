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
                     <h4>상품</h4>
                     <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                        <li class="breadcrumb-item">
                           <a href="${pageContext.request.contextPath}/admin/index">
                              <i class="icofont icofont-home"></i>
                           </a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/orderList">상품 관리</a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/orderList">상품 등록</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->

      <form action="${pageContext.request.contextPath}/admin/addProductPro" method="post" enctype="multipart/form-data">	
            <div class="row">
               <div class="col-sm-10">                
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-10 table-responsive">     
                                                                           															
								<div class="form-group row">
								    <label for="productCategory_number" class="col-xs-2 col-form-label form-control-label">카테고리</label>
								    <div class="col-sm-5">
								        <input type="radio" id="productCategory_number" name="productCategory_number" value="1"> 강아지&nbsp;&nbsp;
			                            <input type="radio" id="productCategory_number" name="productCategory_number" value="2"> 고양이<br><br>
								    </div>
								</div>
								 
								<div class="form-group row">
								    <label for="product_name" class="col-xs-2 col-form-label form-control-label">상품명</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="product_name" name="product_name">
								        </div>
								</div>
								
								<div class="form-group row">
								    <label for="product_desc" class="col-xs-2 col-form-label form-control-label">상품 상세설명</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="product_desc" name="product_desc">
								        </div>
								</div>
																								 
								<div class="form-group row">
								    <label for="product_image" class="col-md-2 col-form-label form-control-label">상품 이미지</label>								    
								    <input type="file" id="product_image" name="file" value="file">
								   
								</div>    
													 
								<div class="form-group row">
							    	<label for="product_price" class="col-xs-2 col-form-label form-control-label">가격</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="text" id="product_price" name="product_price">
							    		</div>
								</div>

								<div class="form-group row">
							    	<label for="product_stock" class="col-xs-2 col-form-label form-control-label">수량</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="text" id="product_stock" name="product_stock">
							    		</div>
								</div>				 							                                         
                           </div>
                        </div>
                     </div>
                  </div>                      
               </div>                       
           	 </div>
               <input type="submit" class="btn btn-primary waves-effect waves-light" value="상품 정보 입력완료">
            
            </form>
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
</body>

</html>
