<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/cs/formCounsel.css" rel="stylesheet">
	
	<title>1:1 - 문의 집밥을 특별하게, 쿡킷</title>
	
	<style>		
		.wrapper{
			position:relative;
			width:100%;
		}
		
		#container{
			width:1180px;
			min-height:100%;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/boot_nav.jsp"></c:import>	
	<section id="container">
	
	<!-- 전체 영역  -->
	<div id="my_wrapper">
		<!-- 왼쪽 메뉴탭 -->
		<div id="left_menu">
				<div id="my_order">
					<h2>MY쿡킷</h2>
					<ul>
						<li class="tab_title" style="margin-bottom:10px;">나의 주문정보</li>
						<li><a href="#">주문/배송 조회</a></li>
						<li><a href="#">취소/반품 조회 </a></li>
						<li><a href="#">선물내역</a></li>
						<li><a href="#">세금계산서 신청</a></li>
						<li><a href="#">배송지 관리</a></li>
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
						<li><a href="#">쇼핑찜</a></li>
						<li><a href="#">1:1 문의</a></li>
					</ul>
				</div>
				<div id="my_info" class="pd">
					<ul>
						<li class="tab_title"style="margin-bottom:10px;">나의 정보</li>
						<li><a href="#">개인정보 변경</a></li>
						<li><a href="#">SNS로그인 관리</a></li>
						<li><a href="#">회원탈퇴</a></li>
					</ul>
				</div>
		
		</div>
		
		
		
		
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
		
		
		
		
		
		
		
		</div>
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

</body>
</html>