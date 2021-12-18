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
			var result = confirm("주문을 취소하시는 것이 맞습니까?");			
			var orderInfo_number = document.getElementById("orderInfo_number").value;			
			if(result){
				location.href='${pageContext.request.contextPath}/admin/deleteOrderPro?orderInfo_number='+orderInfo_number;						
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
                     <h4>주문</h4>
                     <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                        <li class="breadcrumb-item">
                           <a href="${pageContext.request.contextPath}/admin/index">
                              <i class="icofont icofont-home"></i>
                           </a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/orderList">주문 관리</a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/orderDetail">주문 상세정보</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->  
      <form method="post" enctype="multipart/form-data">	
            <div class="row">
               <div class="col-sm-6">            
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-6 table-responsive">                                                    							
  								<div class="form-group row">
								    <label for="orderInfo_status" class="col-xs-4 col-form-label form-control-label">배송 처리상태</label>
								    <div class="col-sm-5" id="orderInfo_status">															
		 								<c:if test="${orderDetail.orderInfo_status eq '1'}">
		 									<input class="form-control" type="text" id="orderInfo_status" name="orderInfo_status" value="결제 완료" readonly>		 									                                	
		                                 </c:if>
		                               	 <c:if test="${orderDetail.orderInfo_status eq '2'}">
		                               	 	<input class="form-control" type="text" id="orderInfo_status" name="orderInfo_status" value="상품 준비중" readonly>		 									                                	                        	
		                               	</c:if>
		                                
		                             	<c:if test="${orderDetail.orderInfo_status eq '3'}">
		                               	 	<input class="form-control" type="text" id="orderInfo_status" name="orderInfo_status" value="배송 준비중" readonly>		 									                                	                        		
		                         	    </c:if>
		                          	    <c:if test="${orderDetail.orderInfo_status eq '4'}">
		                          	 		<input class="form-control" type="text" id="orderInfo_status" name="orderInfo_status" value="배송중" readonly>		 									                                	                        		                         	    	
		                           	    </c:if>
		                           	    <c:if test="${orderDetail.orderInfo_status eq '5'}">
		                          	 		<input class="form-control" type="text" id="orderInfo_status" name="orderInfo_status" value="배송 완료" readonly>		 									                                	                        		                         	    			                           	    		                           	    	
		                           	    </c:if>					
									</div>
								</div>
								
								
								
								<div class="form-group row">
								    <label for="orderInfo_number" class="col-xs-4 col-form-label form-control-label">주문번호</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="orderInfo_number" name="orderInfo_number" value="${orderDetail.orderInfo_number }" readonly>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_date" class="col-xs-4 col-form-label form-control-label">주문 날짜</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="orderInfo_date" name="orderInfo_date" value="${orderDetail.orderInfo_date }" readonly>
								        </div>
								</div>
								<div class="form-group row">
								    <label for="product_number" class="col-xs-4 col-form-label form-control-label">상품 번호</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="number" id="product_number" name="product_number" value="${orderDetail.product_number }" readonly>
								        </div>
								</div>
								
								<div class="form-group row">
								    <label for="orderInfo_productName" class="col-xs-4 col-form-label form-control-label">상품명</label>
								        <div class="col-sm-5">
								            <input class="form-control" type="text" id="orderInfo_productName" name="orderInfo_productName" value="${orderDetail.orderInfo_productName }" readonly>
								        </div>
								</div>							
								<div class="form-group row">
							    	<label for="orderInfo_count" class="col-xs-4 col-form-label form-control-label">수량</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="number" id="orderInfo_count" name="orderInfo_count" value="${orderDetail.orderInfo_count }" readonly>
							    		</div>
								</div>	
								<div class="form-group row">
							    	<label for="orderInfo_price" class="col-xs-4 col-form-label form-control-label">가격</label>
							    		<div class="col-sm-5">
							        		<input class="form-control" type="number" id="orderInfo_price" name="orderInfo_price" value="${orderDetail.orderInfo_price }" readonly>
							    		</div>
								</div>                            
                           </div>
                        </div>
                     </div>
                  </div>                      
               </div> 
               
               <div class="col-sm-6">                
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-6 table-responsive">                                                    							 							
								<div class="form-group row">
								    <label for="user_id" class="col-xs-4 col-form-label form-control-label">회원 아이디</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="user_id" name="user_id" value="${orderDetail.user_id }" readonly>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_receiverName" class="col-xs-4 col-form-label form-control-label">수령인 이름</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="orderInfo_receiverName" name="orderInfo_receiverName" value="${orderDetail.orderInfo_receiverName }" readonly>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_receiverPhone" class="col-xs-4 col-form-label form-control-label">수령인 전화번호</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="orderInfo_receiverPhone" name="orderInfo_receiverPhone" value="${orderDetail.orderInfo_receiverPhone }" readonly>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_address1" class="col-xs-4 col-form-label form-control-label">우편번호</label>
								    <div class="col-sm-5" id="user_address">
								        <input class="form-control" type="text" id="orderInfo_address1" name="orderInfo_address1" value="${orderDetail.orderInfo_address1 }" readonly> 
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_address2" class="col-xs-4 col-form-label form-control-label">주소</label>
								    <div class="col-sm-8">
								        <input class="form-control" type="text" id="user_id" name="user_id" value="${orderDetail.orderInfo_address2 }" readonly> 
								        <input class="form-control" type="text" id="user_id" name="user_id" value="${orderDetail.orderInfo_address3 }" readonly> 								        
								    </div>
								</div> 							                           
                           </div>                        
                        </div>                   
                     </div>                   
                  </div> 
				<input type="button" value="주문 수정" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/admin/updateOrder?orderInfo_number=${orderDetail.orderInfo_number }'">
				<input type="button" value="주문 취소" class="btn btn-danger waves-effect waves-light" onclick="deleteBtn();">	                                         
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
