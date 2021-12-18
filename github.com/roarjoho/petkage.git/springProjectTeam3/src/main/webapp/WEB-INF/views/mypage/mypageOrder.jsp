<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>����������-�ֹ�����</title>
    
    <!-- Font-awesome -->
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

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
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
</head>
<body>
			<!-- ��� -->
        	<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- body ���� -->

	<section class="blog-section spad">
		<div class="container">			
				<div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
					<div class="blog-sidebar1" style="position: relative; left: 200px;">
						<div class="blog-category1">
							<ul>
								<li><a href="${pageContext.request.contextPath}/mypage/mypage" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/order3.png" width="60px" height="60px"><br>�ֹ�����</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageBoard" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/board.png" width="60px" height="60px"><br>�� �Խñ� ����</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageUserUpdate" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/user.png" width="60px" height="60px"><br>ȸ����������</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypagePetUpdate" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/pet.png" width="60px" height="60px"><br>�ݷ�������������</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageInquiry" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/qa.png" width="60px" height="60px"><br>1:1 ����</a></li>								
								<li><a href="${pageContext.request.contextPath}/mypage/mypageUserDelete" class="font1">
								<img src="${pageContext.request.contextPath}/resources/img/category/unsubscribe.png" width="60px" height="60px"><br>ȸ��Ż��</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 order-1 order-lg-2" style="position: relative; left: 180px;">
					<div class="container">
					<h3 class="font1">�ֹ�����</h3><br>
								<div class="table">
			                        <table style="width: 800px;">
			                            <thead>
			                                <tr align="center">
			                                    <th width="80px">��ȣ</th>
			                                    <th width="200px">��ǰ��</th>
			                                    <th width="80px">����</th>
			                                    <th width="80px">����</th>
			                                    <th width="120px">�ֹ���</th>
			                                    <th width="100px">�����Ȳ</th>
			                                </tr>
			                            </thead>
			                            <tbody>
				                            <c:if test="${orderInfoList ne null }">
				                             	<c:forEach var="orderInfoList" varStatus="status" items="${orderInfoList}">
				                             		<tr align="center" style="height: 0px">
				                             			<td>${orderInfoList.orderInfo_number }</td>
				                             			<td>${orderInfoList.orderInfo_productName}</td>
				                             			<td>${orderInfoList.orderInfo_price}</td>
				                             			<td>${orderInfoList.orderInfo_count}</td>
				                             			<td>${orderInfoList.orderInfo_date}</td>
				                             			<td>
				                             				<c:choose>
				                             					<c:when test="${orderInfoList.orderInfo_status eq '1'}">
				                             						���� �Ϸ�
				                             					</c:when>
				                             					<c:when test="${orderInfoList.orderInfo_status eq '2'}">
				                             						��ǰ �غ���
				                             					</c:when>
				                             					<c:when test="${orderInfoList.orderInfo_status eq '3'}">
				                             						��� �غ���
				                             					</c:when>
				                             					<c:when test="${orderInfoList.orderInfo_status eq '4'}">
				                             						 �����
				                             					</c:when>
				                             					<c:when test="${orderInfoList.orderInfo_status eq '5'}">
				                             						��� �Ϸ�
				                             					</c:when>
				                             				</c:choose>
				                             			</td>
				                             		</tr>
				                             	</c:forEach>
				                             </c:if>
				                             
				                             <c:if test="${empty orderInfoList}">
			                             		<tr align="center">
			                             			<td colspan="6">�ֹ������� �����ϴ�</td>
			                             		</tr>
			                             	</c:if>
			                             	<tr class="pageNumber">
			                             		<td colspan="6" align="center">
			                             			<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
													<a href="${pageContext.request.contextPath}/mypage/mypage?pageNum=${pageDTO.startPage-pageDTO.pageBlock}">[����]</a>
													</c:if>
													
													<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
														<a href="${pageContext.request.contextPath}/mypage/mypage?pageNum=${i}">${i} </a>
													</c:forEach>
													
													<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
													<a href="${pageContext.request.contextPath}/mypage/mypage?pageNum=${pageDTO.startPage+pageDTO.pageBlock}">[����]</a>
													</c:if>
			                             		</td>
			                             	</tr>
			                            </tbody>
			                        </table>
			                    </div>
							</div>
						</div>
					</div>
	</section>
	<!-- Blog Section End -->

 
<!-- body �� -->

			<!-- Ǫ�� -->
			<jsp:include page="../inc/bottom.jsp"></jsp:include>
    
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