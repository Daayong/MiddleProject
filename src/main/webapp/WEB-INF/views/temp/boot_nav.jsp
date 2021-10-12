<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/css/import_nav.css" rel="stylesheet">

<!-- navBar -->
<nav id="header">
	
<!-- ===== ===== ===== gnb_wrap ===== ===== ===== -->
	<div class="gnb_wrap">
		<div class="gnb_info">
			<div class="info_wrap">


				<ul>			
					<c:choose>
						<c:when test="${not empty member}">
				    		<li><a class="f" href="#">${member.member_name}님</a></li>
							<li><a class="f" href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
				    	</c:when>	
				      	<c:otherwise>						
							<li><a href="${pageContext.request.contextPath}/member/check">회원가입</a></li>
							<li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
				      	</c:otherwise>
					</c:choose>
					
					<li><a href="${pageContext.request.contextPath}/cs/csMain">고객행복센터</a></li>
					<li><a href="${pageContext.request.contextPath}/">배송지역검색</a></li>
					<li><a href="index/">기프트카드 등록</a></li>



				</ul>
			</div>
		</div>
		
<!-- ===== ===== ===== menu_wrap ===== ===== ===== -->
		<div class="menu_wrap">
			<div id="logo">
				<a href="${pageContext.request.contextPath}/" >
				</a>
			</div>
			
			<ul class="menu_ul">
				<li class="menu_li">
					<a href="#">COOKIT소개</a>
				</li>
				<li class="menu_li">
					<a href="${pageContext.request.contextPath}/cookit_menu/menu_main">COOKIT 메뉴</a>
				</li>
				<li class="menu_li">
					<a href="${pageContext.request.contextPath}/review/reviewMain">리뷰</a>
				</li>
				<li class="menu_li">
					<a href="${pageContext.request.contextPath}/event/eventMain">이벤트</a>
				</li>
				<li class="menu_li">
					<a href="${pageContext.request.contextPath}/member/myPage">MY쿡킷</a>
				</li>
			</ul>
	
	<!--Second nav_right-->
			<div class="my_gmenu">  
				<ul>
					<li class="my_gmenu_cart">
						<a class="sr" href="${pageContext.request.contextPath}/order/cartList">
							<span class="txt">장바구니</span>
						</a>
					</li>
					<li class="my_gmenu_find">
						<a class="sr" href="#">
							<span class="txt">메뉴찾기</span>
						</a>
					</li>
				</ul> 
			</div>
		</div>
	</div>
</nav> 