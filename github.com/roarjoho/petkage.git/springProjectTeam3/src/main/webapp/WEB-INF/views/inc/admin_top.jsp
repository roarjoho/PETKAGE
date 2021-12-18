<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 --%>
<!-- 상단 내비게이션 바 -->
      <header class="main-header-top hidden-print">
         <a href="${pageContext.request.contextPath}/admin/index" class="logo"><img class="img-fluid able-logo" src="${pageContext.request.contextPath}/resources/admin_images/logo.png" alt="Theme-logo"></a>
         <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <!--<a href="#!" data-toggle="offcanvas" class="sidebar-toggle"></a>-->

            <!-- 관리자 프로필 클릭시 드롭다운 메뉴 -->
            <div class="navbar-custom-menu f-right">
               <ul class="top-nav">                                    
                  <li class="dropdown">                  	 
                     <a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle drop icon-circle drop-image">
                        <span><img class="img-circle " src="${pageContext.request.contextPath}/resources/admin_images/avatar-1.png" style="width:40px;" alt="User Image"></span>
                        <span>펫키지 <b>관리자</b></span>
                     </a> 
                     <a href="${pageContext.request.contextPath}/admin/logout"><i class="icon-logout"></i>로그아웃</a>                  
                  </li>
               </ul>
            </div>
         </nav>
      </header>
      
<!-- 왼쪽 내비게이션 바 -->
      <aside class="main-sidebar hidden-print ">
         <section class="sidebar" id="sidebar-scroll">
            <!-- Sidebar Menu-->
            <ul class="sidebar-menu">           
                <li class="nav-level">--- 관리자 메인</li>
                <li class="active treeview">
                    <a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/admin/index">
                        <i class="icon-chart"></i><span> 메인페이지</span>
                    </a>                
                </li>
                
                <li class="nav-level">--- 주문</li>
                <li class="active treeview">
                    <a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/admin/sellStatus"><i class="icon-chart"></i><span> 매출 현황</span></a>                                                                               
                    <a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/admin/orderList"><i class="icon-chart"></i><span> 주문 관리</span></a>                                               
                </li>
                
                <li class="nav-level">--- 상품</li>
                <li class="active treeview">
                    <a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/admin/productList"><i class="icon-chart"></i><span> 상품 관리</span></a>                                              
                </li>
                
                <li class="nav-level">--- 사용자</li>
                <li class="active treeview">
                    <a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/admin/userList"><i class="icon-chart"></i><span> 회원 관리</span></a>
                </li>
                <li class="active treeview">
                    <a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/admin/boardList1"><i class="icon-chart"></i><span> 게시판 관리</span></a>
                </li>                                                                        
            </ul>
         </section>
      </aside>
