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
		function deleteBtn(){
			var result = confirm("상품을 삭제 하시겠습니까?");			
			var product_number = document.getElementById("product_number").value;			
			if(result){
				location.href='${pageContext.request.contextPath}/admin/deleteProductPro?product_number='+product_number;						
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
               <div class="col-sm-15 p-0">
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
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/orderList">상품 상세정보</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->  
      <form method="post" enctype="multipart/form-data">	
            <div class="row">
               <div class="col-sm-4">            
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-4 table-responsive">                                                                              							
  								<div class="form-group row">
								    <label for="product_number" class="col-xs-4 col-form-label form-control-label">상품 번호</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="number" id="product_number" name="product_number" value="${productDTODetail.product_number }" readonly>
								    </div>
								</div>								
								<div class="form-group row">
								    <label for="productCategory_number" class="col-xs-4 col-form-label form-control-label">카테고리</label>
								    <div class="col-sm-5">
								    	<c:if test="${productDTODetail.productCategory_number eq '1'}" >
								        	<input class="form-control" type="text" id="productCategory_number" name="productCategory_number" value="강아지 용품" readonly>								    	
								    	</c:if>								    	
								    	<c:if test="${productDTODetail.productCategory_number eq '2'}">
								    		<input class="form-control" type="text" id="productCategory_number" name="productCategory_number" value="고양이 용품" readonly>								    									    	
								    	</c:if>
								    </div>
								</div>																				
								<div class="form-group row">
								    <label for="product_name" class="col-xs-4 col-form-label form-control-label">상품명</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="product_name" name="product_name" value="${productDTODetail.product_name }" readonly>
								        </div>
								</div>						
								<div class="form-group row">
							    	<label for="product_price" class="col-xs-4 col-form-label form-control-label">가격</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="number" id="product_price" name="product_price" value="${productDTODetail.product_price }" readonly>
							    		</div>
								</div>	
								<div class="form-group row">
								    <label for="product_date" class="col-xs-4 col-form-label form-control-label">상품 등록일</label>
								    <div class="col-sm-6">
								        <input class="form-control" type="text" id="product_date" name="product_date" value="${productDTODetail.product_date }" readonly>
								    </div>
								</div>                           
                           </div>
                        </div>
                     </div>
                  </div>                      
				<input type="button" value="상품 수정" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/admin/updateProduct?product_number=${productDTODetail.product_number }'">
				<input type="button" value="상품 삭제" class="btn btn-danger waves-effect waves-light" onclick="deleteBtn();">	                                          
               </div> 
               
               <div class="col-sm-6">                
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-6 table-responsive">                                                                               							 								
								
								<div class="form-group row">
								    <label for="product_desc" class="col-xs-4 col-form-label form-control-label">상품 상세설명</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="product_desc" name="product_desc" value="${productDTODetail.product_desc }" readonly>
								        </div>
								</div>
								<div class="form-group row">
								    <label for="product_image" class="col-md-3 col-form-label form-control-label">상품 이미지</label>
 								    <img src="${pageContext.request.contextPath}/resources/upload/${productDTODetail.product_imagePath }" alt="상품 이미지" style="width:300px; height: 300px;" id="product_image">								    						   
								</div>								     
                           </div>                        
                        </div>                   
                     </div>                   
                  </div> 
               </div>                                                                       
           	 </div>
           </form>           	
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
