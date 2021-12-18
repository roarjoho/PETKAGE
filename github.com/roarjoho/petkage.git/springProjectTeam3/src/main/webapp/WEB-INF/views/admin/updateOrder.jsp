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
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/updateOrder">주문정보 수정</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->  
      <form action="${pageContext.request.contextPath}/admin/updateOrderPro" method="post" enctype="multipart/form-data">	
            <div class="row">
               <div class="col-sm-5">            
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-8 table-responsive">                                                    							
  							<div class="form-group row">
								    <label for="orderInfo_status" class="col-xs-4 col-form-label form-control-label">배송 처리상태</label>
								    <div class="col-sm-5" id="user_address">
								    	<select id="orderInfo_status" name="orderInfo_status">								    		
								    		<c:if test="${orderDetail.orderInfo_status eq '1'}">
								    			<option></option>
								    			<option value="1" selected>결제 완료</option>
								    			<option value="2">상품 준비중</option>
								    			<option value="3">배송 준비중</option>
								    			<option value="4">배송중</option>
								    			<option value="5">배송 완료</option>
								    		</c:if>
								    		
								    		<c:if test="${orderDetail.orderInfo_status eq '2'}">
								    			<option value="1">결제 완료</option>
								    			<option value="2" selected>상품 준비중</option>
								    			<option value="3">배송 준비중</option>
								    			<option value="4">배송중</option>
								    			<option value="5">배송 완료</option>
								    		</c:if>
								    		
								    		<c:if test="${orderDetail.orderInfo_status eq '3'}">
								    			<option value="1">결제 완료</option>
								    			<option value="2">상품 준비중</option>
								    			<option value="3" selected>배송 준비중</option>
								    			<option value="4">배송중</option>
								    			<option value="5">배송 완료</option>
								    		</c:if>
								    		
								    		<c:if test="${orderDetail.orderInfo_status eq '4'}">
								    			<option value="1">결제 완료</option>
								    			<option value="2">상품 준비중</option>
								    			<option value="3">배송 준비중</option>
								    			<option value="4" selected>배송중</option>
								    			<option value="5">배송 완료</option>
								    		</c:if>
								    		
								    		<c:if test="${orderDetail.orderInfo_status eq '5'}">
								    			<option value="1">결제 완료</option>
								    			<option value="2">상품 준비중</option>
								    			<option value="3">배송 준비중</option>								    			
								    			<option value="4">배송중</option>
								    			<option value="5" selected>배송 완료</option>
								    		</c:if>
								    		
								    		<c:if test="${orderDetail.orderInfo_status eq '6'}">
								    			<option value="1">결제 완료</option>
								    			<option value="2">상품 준비중</option>
								    			<option value="3">배송 준비중</option>
								    			<option value="4">배송중</option>
								    			<option value="5" selected>배송 완료</option>
								    		</c:if>								    										    		
								    	</select>							    
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
               
               <div class="col-sm-5">                
                  <div class="card">
                    <div class="card-block">
                        <div class="row">
                           <div class="col-sm-8 table-responsive">                                                    							 							
								<div class="form-group row">
								    <label for="user_id" class="col-xs-4 col-form-label form-control-label">회원 아이디</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="user_id" name="user_id" value="${orderDetail.user_id }" readonly>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_receiverName" class="col-xs-4 col-form-label form-control-label">수령인 이름</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="orderInfo_receiverName" name="orderInfo_receiverName" value="${orderDetail.orderInfo_receiverName }">
								    </div>
								</div>
								<div class="form-group row">
								    <label for="orderInfo_receiverPhone" class="col-xs-4 col-form-label form-control-label">수령인 전화번호</label>
								    <div class="col-sm-5">
								        <input class="form-control" type="text" id="orderInfo_receiverPhone" name="orderInfo_receiverPhone" value="${orderDetail.orderInfo_receiverPhone }">
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
								        <input class="form-control" type="text" id="orderInfo_address2" name="orderInfo_address2" value="${orderDetail.orderInfo_address2 }" readonly> 
								        <input class="form-control" type="text" id="orderInfo_address3" name="orderInfo_address3" value="${orderDetail.orderInfo_address3 }">
								         <button type="button" class="btn btn-success waves-effect waves-light" onclick="search()">
  											<i class="icofont icofont-search-alt-2">주소 검색</i>
										</button>  								        
								    </div>
								</div> 							                           
                           </div>                        
                        </div>                   
                     </div>                   
                  </div> 
           	  	<input type="submit" class="btn btn-success waves-effect waves-light" value="주문정보 수정완료">               	                                                            
               </div>                                                                       
           	 </div>
           </form>           	
         </div>
      </div>
   </div>
</div>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
	       function search(){
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("orderInfo_address3").value = extraAddr;
	                
	                } else {
	                    document.getElementById("orderInfo_address3").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('orderInfo_address1').value = data.zonecode;
	                document.getElementById('orderInfo_address2').value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('orderInfo_address3').focus();
	            }
	        }).open();
	 }
	</script>

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
