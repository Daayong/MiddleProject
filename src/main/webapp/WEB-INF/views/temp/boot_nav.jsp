<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/import_nav.css" rel="stylesheet">


<nav id="header">
	<div class="gnb_wrap">
	<!--First nav-->
		<div id="info">
			<div class="info_wrap">
				<ul id="info_ul">			
					<li class="info_li">
						<a class="f" href="${pageContext.request.contextPath}/member/join">회원가입</a>
					</li>
					<li class="info_li">
						<a class="f" href="${pageContext.request.contextPath}/member/login">로그인</a>
					</li>
					<li class="info_li">
						<a class="f" href="${pageContext.request.contextPath}/notice/fnq">고객행복센터</a>
					</li>
					<li class="info_li">
						<a class="f" href="${pageContext.request.contextPath}/">배송지역검색</a>
					</li>
					<li class="info_li">
						<a class="f" href="${pageContext.request.contextPath}/">기프트카드 등록</a>
					</li>
				</ul>
			</div>
		</div>
		
	<!--Second nav-->
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
					<a href="#">COOKIT 메뉴</a>
				</li>
				<li class="menu_li">
					<a href="#">리뷰</a>
				</li>
				<li class="menu_li">
					<a href="#">이벤트</a>
				</li>
				<li class="menu_li">
					<a href="#">MY쿡킷</a>
				</li>
			</ul>
	
	<!--Second nav_right-->
			<div class="my_gmenu">  
				<ul>
					<li class="my_gmenu_cart">
						<a class="sr" href="#">
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