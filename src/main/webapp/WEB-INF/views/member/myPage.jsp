<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myPage.css" rel="stylesheet">
	
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
	<div id="my_wrapper">
		<!-- 왼쪽 메뉴탭 -->
		
		<c:import url="../temp/myPage_nav.jsp"></c:import>
		
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
			<div id="main" class="open">
				<div id="myInfo">
					<div class="info_top">
						<div class="log_name">
							${member.member_name}님
						</div>
						<div class="log_address">
							<a href="${pageContext.request.contextPath}/member/myaddress">
								<span id="dAddress">
									<c:choose>
									    <c:when test="${address.address eq null}">
									        배송지 설정하러 가기
									    </c:when>
									    <c:otherwise>
									        ${address.address}
									    </c:otherwise>
									</c:choose>
								</span>
							</a>
						</div>
					</div>
					<div id="pointWrap">
						<div class="myPoint">
							<a href="#" style="border-right:solid 1px #ccc;">
							<span class="pt">CJ ONE 포인트</span>
							<span class="i_have">
								<%-- db연결후 작업 ${member.point}P --%>
								<fmt:formatNumber value="${member.member_point}" pattern="#,###"/>P
							</span>
							</a>
						</div>
						<div class="myCoupon">
							<a href="#">
							<span class="pt">보유 쿠폰</span>
							<span class="i_have" style="font-size:24px;">
								<%-- db연결후 작업 ${member.couponCount}장 --%>
								0장
							</span>
							</a>
						</div>
					</div>
				</div>
				
				<div id="alarm_wrap">
						<div class="alarm_state off">			
						<ul>	
							<li><a href="#">신메뉴 출시 알림</a> SMS <span class="state">OFF</span></li>
							<li><a href="#">마케팅 수신 동의</a> SMS <span class="state">OFF</span>Email<span class="state">OFF</span></li>
						</ul>
						</div>
				</div>
				
				
			<!-- 주문/배송 조회 -->
				<div id="myOrder" class="rpd">
					<div id="top_os">
						<div id="lt_os">
							<span>주문/배송조회</span>
							<span>(최근 1개월 기준)</span>
						</div>
						<div id="rt_os">
							<a href="#">더보기</a>
						</div>
					</div>
					<div id="order_state">
						<ul>
							<li class="item">
								<span class="circle">
									<i class="ico ico02"></i>
									<span class="num">
										0
										<span class="hide">개</span>
									</span>
								</span>
								<span class="tit">주문/결제</span>
							</li>
							<li class="item">
								<span class="circle">
									<i class="ico ico03"></i>
									<span class="num">
										0
										<span class="hide">개</span>
									</span>
								</span>
								<span class="tit">재료준비</span>
							</li>
							<li class="item">
								<span class="circle">
									<i class="ico ico04"></i>
									<span class="num">
										0
										<span class="hide">개</span>
									</span>
								</span>
								<span class="tit">배송준비</span>
							</li>
							<li class="item">
								<span class="circle">
									<i class="ico ico05"></i>
									<span class="num">
										0
										<span class="hide">개</span>
									</span>
								</span>
								<span class="tit">배송중</span>
							</li>
							<li class="item">
								<span class="circle">
									<i class="ico ico06"></i>
									<span class="num">
										0
										<span class="hide">개</span>
									</span>
								</span>
								<span class="tit">배송완료</span>
							</li>
	
						</ul>
											
					</div>
				
				</div>
				
				<div id="info_box" class="rpd">
					<div class="stamp_event_wrap type_renew2">
						<div class=" left_cont re_pose">
							<div class="inner">
								<span class="ico">나의 스탬프는?</span>
								<h5 class="h5_tit">COOKIT STAMP</h5>
								<p class="txt">
									스탬프 완성하고, 최대 쿡킷 신메뉴를
									<strong>무료</strong>
									로 받으세요!
								</p>
							</div>
						</div>
						<span class="date">2021.10.01~2021.12.31</span>
						<a href="#" class="btn_link">쿡킷 스탬프 바로가기</a>
					</div>
				</div>
				
<!-- 최근 구매한 메뉴 -->				
				<div id="recentBuy" class="rpd box">
				<!-- 개발 요청 사항 : 메뉴 내역이 없을 경우 .no_data_box 클래스 추가 -->
					<h4 class="h4_tit">
						최근 구매한 메뉴
						<a href="#" class="btn_link">더보기</a>
					</h4>
					<div class="no_data_txt">
						<strong>최근 구매한 메뉴가 없습니다.</strong>
					</div>
				</div>
<!-- 나의 쇼핑찜 -->				
				<div id="shopPick" class="rpd box">
					<h4 class="h4_tit">
						쇼핑찜
						<a href="#" class="btn_link">더보기</a>
					</h4>
					
					<c:if test="${empty zzim}">
						<div class="no_data_txt">
							<strong>찜목록에 담긴 메뉴가 없습니다.</strong>
						</div>	
					</c:if>
					<!-- 수빈 찜목록 추가 -->
					<div class="zzim_wrap">

						<c:forEach items="${zzim}" var="zzim" begin="0" end="3">
							<a href="../menu/menu_detail?product_id=${zzim.product_id}">
								<div class="zzim_item">
									<div class="zzim_imgwrap">
										<img src="../resources/upload/menu/main/${zzim.product_id}/${zzim.product_name}.jpg">
									</div>
									<div class="zzim_infowrap">
										<span class="zzim_tit">
											${zzim.product_name}
										</span>
										<span class="zzim_price">
											<fmt:formatNumber value="${zzim.product_price}" type="number" maxFractionDigits="3"/>원
										</span>
									</div>
								</div>
							</a>
						</c:forEach>
						
					</div>
					
				</div>
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
			
		</div>	
	</div>
	</div>	
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

</body>
</html>