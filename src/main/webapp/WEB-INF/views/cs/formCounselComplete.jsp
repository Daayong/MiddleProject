<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/cs/formCounselComplete.css" rel="stylesheet">
	
	<title>My쿡킷 - 집밥을 특별하게,쿡킷</title>
	
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
	<div id="my_wrapper" class="my_wrap">
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
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
			
			<div class="order_view my_activity">
				<h3>1:1 문의</h3>
			<div class="top_sec">
				<div class="tab_menu">
					<ul>
						<li class="on"><a nohref="">1:1 문의 작성</a></li>
						 <!-- 선택된 메뉴에 on클래스 추가 -->
						<li><a href="#">1:1 문의 내역</a></li>
					</ul>
				</div>
			</div>
			
			<!-- 문의완료-->
			<div class="complete_wrap">
					<i></i>
					<strong>1:1문의 접수가 완료되었습니다.</strong>
					<p class="txt">고객님의 문의사항을 빠른 시간 안에 처리하도록 노력하겠습니다. <br>고객행복센터는 일요일/공휴일 운영을 하지 않습니다.</p>
					<div class="btn_wrap">
						<a href="javascript:goCounselList();" class="rec_link"><span>1:1 문의 내역 조회</span></a>
					</div>
				</div>
		</div>
		
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

</body>
</html>