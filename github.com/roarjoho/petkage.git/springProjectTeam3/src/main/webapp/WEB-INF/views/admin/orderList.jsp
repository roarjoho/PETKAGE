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
   <div class="wrapper">        
    <jsp:include page="../inc/admin_top.jsp"></jsp:include>
      <div class="content-wrapper">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12 p-0">
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
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/orderList">주문 내역 조회</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->
            <div class="row">
               <div class="col-sm-12">
                 
                  <div class="card">
                     <div class="card-block">
                        <div class="row">
                           <div class="col-sm-12 table-responsive">
                           
                              <table class="table table-hover">
                                 <thead>
                                    <tr>
                                       <th>주문 번호</th>
        							   <th>처리상태</th>                                                                          
                                       <th>주문 날짜</th>
                                       <th>상품 번호</th>
                                       <th>상품명</th>                                    
                                       <th>수량</th>
                                       <th>가격</th>
                                       <th>회원 아이디</th>                                      
                                       <th>수령인 이름</th>
                                       <th>수령인 전화번호</th>
                                    </tr>
                                 </thead>                                 
								<c:forEach var="orderInfoDTO" items="${orderList }">
 	                            	<input type="hidden" value="${orderInfoDTO.orderInfo_number}" id="orderInfo_number">									                              
	                               		<tr>
	                                   	   <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_number }</td>	

	                                   	    <c:if test="${orderInfoDTO.orderInfo_status eq '1'}">
	                                   	    	<td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">결제 완료</td>
	                                   	    </c:if>
	                                   	    <c:if test="${orderInfoDTO.orderInfo_status eq '2'}">
	                                   	    	<td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">상품 준비중</td>
	                                   	    </c:if>
	                                   	    <c:if test="${orderInfoDTO.orderInfo_status eq '3'}">
	                                   	    	<td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">배송 준비중</td>
	                                   	    </c:if>
	                                   	    <c:if test="${orderInfoDTO.orderInfo_status eq '4'}">
	                                   	    	<td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">배송중</td>
	                                   	    </c:if>
	                                   	    <c:if test="${orderInfoDTO.orderInfo_status eq '5'}">
	                                   	    	<td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">배송 완료</td>
	                                   	    </c:if>
	                                   	          	                                  		
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_date }</td>
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.product_number }</td>
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_productName }</td>
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_count }</td>
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_price }</td>                                       
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.user_id }</td>
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_receiverName }</td>
	                                       <td onclick="location.href='${pageContext.request.contextPath }/admin/orderInfo?orderInfo_number=${orderInfoDTO.orderInfo_number}'">${orderInfoDTO.orderInfo_receiverPhone }</td>
	                                   </tr>                                                     
	                             </c:forEach>
                              </table>                              
                           </div>
                        </div>
                     </div>
                  </div>                                        
               <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
						<a href="${pageContext.request.contextPath}/admin/orderList?pageNum=${pageDTO.startPage - pageDTO.pageBlock}"> [이전] </a>
					</c:if>
					<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
						<a href="${pageContext.request.contextPath}/admin/orderList?pageNum=${i}">  ${i}  </a>
					</c:forEach>
					<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
						<a href="${pageContext.request.contextPath}/admin/orderList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}"> [다음] </a>
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
