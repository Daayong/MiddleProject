<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myPage.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberDelete.css" rel="stylesheet">
	
	<title>배송지관리 - 집밥을 특별하게,쿡킷</title>
	
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
		
		<c:import url="../temp/myPage_nav.jsp"></c:import>		
	
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
		<div id="main">
				<div id="delete_top">
					<h3>배송지 관리</h3>
					<div class="top_comment type02">
						<strong>
							배송지를 관리하세요
						</strong>				
					</div>
					<div class="dinfo_box">
						<strong class="title">적립금, 쿠폰 및 포인트 소멸 안내</strong>
						<ul class="bul_list">
							<li class="bul_dot">
								<i class="bullet"></i>
								회원 탈퇴 시 보유하고 계신 CJ기프트카드,더마켓 기프트카드,
								쿡킷 기프트카드, 쿡킷 스탬프, 쿠폰 등은 자동 소멸되며 복원되지 않습니다.
							</li>
						</ul>				
					</div>
					
					<div class="btn_wrap">
					<button type="button" class="btn pop green" id="InsertAddress" name="InsertAddress">신규배송지 추가</button>
					</div>
				</div>
			</div>
		
		</div>
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>
	
	<script type="text/javascript">
	
	
	
	</script>
 
	
</body>
</html>