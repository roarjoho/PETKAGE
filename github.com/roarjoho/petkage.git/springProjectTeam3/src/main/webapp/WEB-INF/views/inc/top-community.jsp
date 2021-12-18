<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <header class="header-section">
        <div class="header-top">
            <div class="container">               
                <div class="ht-right">
                    <a href="../member/login.jsp" class="login-panel"><i class="fa fa-user"></i>로그인</a>                
                	<a href="../member/register.jsp" class="join-panel">│&nbsp;&nbsp;회원가입</a>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="../index.html">
                                <img src="../img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7">
                        <div class="advanced-search">
                            <form action="#" class="input-group">
                                <input type="text" placeholder="통합 검색">
                                <button type="button"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 text-right col-lg-3">
                        <ul class="nav-right">
                            <li class="heart-icon"><a href="#">
                                    <i class="icon_heart_alt"></i>
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="cart-icon"><a href="#">
                                    <i class="icon_bag_alt"></i>
                                    <span>3</span>
                                </a>
                                <div class="cart-hover">
                                    <div class="select-items">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="si-pic"><img src="../img/select-product-1.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>60,000원 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="si-pic"><img src="../img/select-product-2.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>60,000원 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="select-total">
                                        <span>총금액:</span>
                                        <h5>120,000원</h5>
                                    </div>
                                    <div class="select-button">
                                        <a href="#" class="primary-btn view-card">장바구니 보기</a>
                                        <a href="#" class="primary-btn checkout-btn">구매하기</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span class="">카테고리</span>
                        <ul class="depart-hover">
                            <li><a href="../community/blog.jsp">커뮤니티</a></li>
                            <li><a href="../shop/shop.jsp">스토어</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li><a href="../index.html">홈</a></li>
                        <li class="active"><a href="../community/blog.jsp">댕냥 한 컷</a></li>
                         <li><a href="#">댕냥 경험기</a>
                            <ul class="dropdown">
                                <li><a href="#">강아지</a></li>
                                <li><a href="#">고양이</a></li>
                                <li><a href="#">OTHERS</a></li>
                            </ul>
                        </li>
                        <li><a href="#">댕냥 노하우</a></li>
                        <li><a href="../shop/shop.jsp">이벤트</a></li>
                        <li><a href="#">사이트맵</a>
                            <ul class="dropdown">
                                <li><a href="./blog-details.html">기능</a></li>
                                <li><a href="./shopping-cart.html">장바구니</a></li>
                                <li><a href="./check-out.html">구매하기</a></li>
                                <li><a href="./faq.html">자주 묻는 질문</a></li>
                                <li><a href="./register.html">비회원 로그인</a></li>
                                <li><a href="./login.html">회원 로그인</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->