<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	
	<style>
	/* 왼쪽 메뉴바 */
#left_menu{
	width:190px;
	display: inline-block;
}

#left_menu div ul li{
	padding-top:8px;
}

#left_menu div ul li a{
	font-size:14px;  
	font-weight:500;
	color:#606060;
}

#left_menu div ul li a:hover{
	color:#101010;
	text-decoration:underline; 
}

#left_menu div ul .tab_title{
	font-size:20px; 
	color:#101010;
	font-weight:700;
}

.pd{
	padding-top:30px; 
}

#my_order > h2{
	display:block; 
	color:#101010; 
	font-size:40px;
	line-height:30px; 
	padding:5px 0 35px 0; 
}

	</style>
	
	
	
</head>
<body>

		<!-- 왼쪽 메뉴탭 -->
		<div id="left_menu">
				<div id="my_order">
					<h2>MY쿡킷</h2>
					<ul>
						<li class="tab_title" style="margin-bottom:10px;">나의 주문정보</li>
						<li><a href="${pageContext.request.contextPath}/member/myOrderList">주문/배송 조회</a></li>
						<li><a href="#">취소/반품 조회 </a></li>
						<li><a href="#">선물내역</a></li>
						<li><a href="#">세금계산서 신청</a></li>
						<li><a href="${pageContext.request.contextPath}/member/myaddress">배송지 관리</a></li>
						<li><a href="#">환불계좌 관리</a></li>
						<li><a href="#">신메뉴/재입고 알림</a></li>
					</ul>
				</div>
				<div id="my_benefit" class="pd">
					<ul>
						<li class="tab_title"style="margin-bottom:10px;">나의 혜택</li>
						<li><a href="#">쿠폰</a></li>
						<li><a href="#">CJ ONE 포인트</a></li>
						<li><a href="#">기프트카드</a></li>
					</ul>
				</div>
				<div id="my_activity" class="pd">
					<ul>
						<li class="tab_title"style="margin-bottom:10px;">나의 활동</li>
						<li><a href="#">리뷰</a></li>
						<li><a href="#">나의 맛취향</a></li>
						<li><a href="${pageContext.request.contextPath}/member/myZzimList">쇼핑찜</a></li>
						<li><a href="${pageContext.request.contextPath}/cs/formCounsel">1:1 문의</a></li>
					</ul>
				</div>
				<div id="my_info" class="pd">
					<ul>
						<li class="tab_title"style="margin-bottom:10px;">나의 정보</li>
						<li><a href="${pageContext.request.contextPath}/member/memberUpdateConfirm">개인정보 변경</a></li>
						<li><a href="#">SNS로그인 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/member/memberDelete">회원탈퇴</a></li>
					</ul>
				</div>
		
		</div>


</body>
</html>