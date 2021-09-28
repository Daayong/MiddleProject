<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link href="${pageContext.request.contextPath}/resources/css/eventMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

<html>
<head>
	<title>Event Page</title>
	<style>
		
		html,body{
			height:100%;
			margin:0; 
		}
		
		.wrapper{
			position:relative;
			width: 100%;
			
			
		}
		
		#container{
			width: 1180px;
			min-height:100%;
			margin: -117 auto -290;
			padding: 117 0 290;
		}
		
	</style>
		

	
</head>
<body>

<c:import url="../temp/boot_nav.jsp"></c:import>


<div class="wrapper">		
<!-- 여기에 페이지 작업 -->

	
	<section id="container">
	
		<div id="content">
		
			<div class="event_wrap">
			
				<div class="title">
					<h1>이벤트</h1>
				</div>
				
				<div class="tab_wrap">
						<ul class="tabs">
							<li>
								<a href="javascript:getListData('EVENT');"><span>진행중</span></a>
							</li>
							<li>
								<a href="javascript:getListData('WINNER');"><span>당첨자 발표</span></a>
							</li>
						</ul>
					
					<!-- 이벤트 목록 페이지 -->
					
					<div class="event_list" style="display: block"> 
						<ul class="eventListArea">
						
						<!-- 첫번째 이벤트 -->
							<li>
								<div class="pro_module">
									<div class="img_wrap">
										<a href="#" class="more_detail"><!--상세페이지 이동 링크 -->
											<img alt="[쿡킷] 신선한 가을 캠핑, 따뜻한 요리" src="${pageContext.request.contextPath}/resources/images/20210923114226512.jpg" onerror="cj.com.noImg(this,'P')">
										</a>
									</div>
									<div class="txt_wrap">
										<div class="conts">
											<div class="flag_wrap">
												<span class="flag cate">EVENT</span>
												<span class="date">2021.09.24~2021.10.07</span>
											</div>
											
											<div class="mini_info">
												<span class="mini">[쿡킷] 선선한 가을 캠핑, 따뜻한 요리</span>
											</div>
										</div>
									</div>		
								</div>
							</li>
						
						<!-- 두번째 이벤트 -->
							<li>
								<div class="pro_module">
									<div class="img_wrap">
										<a href="#" class="more_detail"><!--상세페이지 이동 링크 -->
											<img alt="스탬프 찍으면, 쿡킷 신메뉴가 무료(7월-9월)" src="${pageContext.request.contextPath}/resources/images/20210707104453308.jpg" onerror="cj.com.noImg(this,'P')">
										</a>
									</div>
									<div class="txt_wrap">
										<div class="conts">
											<div class="flag_wrap">
												<span class="flag cate">EVENT</span>
												<span class="flag dday">D-3</span>
												<span class="date">2021.07.01~2021.09.30</span>
											</div>
											
											<div class="mini_info">
												<span class="mini">스탬프 찍으면, 쿡킷 신메뉴가 무료(7월-9월)</span>
											</div>
										</div>
									</div>		
								</div>
							</li>
						
						<!-- 세번째 이벤트 -->
							<li>
								<div class="pro_module">
									<div class="img_wrap">
										<a href="#" class="more_detail"><!--상세페이지 이동 링크 -->
											<img alt="첫구매 1만원 할인 & 무료배송 쿠폰 혜택" src="${pageContext.request.contextPath}/resources/images/20201030163116494.jpg" onerror="cj.com.noImg(this,'P')">
										</a>
									</div>
									<div class="txt_wrap">
										<div class="conts">
											<div class="flag_wrap">
												<span class="flag cate">EVENT</span>
												<span class="flag dday">D-??</span>
												<span class="date">2020.04.08~2021.12.31</span>
											</div>
											
											<div class="mini_info">
												<span class="mini">첫구매 1만원 할인 & 무료배송 쿠폰 혜택</span>
											</div>
										</div>
									</div>		
								</div>
							</li>
						
						<!-- 네번째 이벤트 -->	
							
							<li>
								<div class="pro_module">
									<div class="img_wrap">
										<a href="#" class="more_detail"><!--상세페이지 이동 링크 -->
											<img alt="[쿡킷] 9월 카드사 기획전" src="${pageContext.request.contextPath}/resources/images/20210901162458876.jpg" onerror="cj.com.noImg(this,'P')">
										</a>
									</div>
									<div class="txt_wrap">
										<div class="conts">
											<div class="flag_wrap">
												<span class="flag cate">EVENT</span>
												<span class="flag dday">D-3</span>
												<span class="date">2021.09.01~2021.09.30</span>
											</div>
											
											<div class="mini_info">
												<span class="mini">[쿡킷]9월 카드사 기획전</span>
											</div>
										</div>
									</div>		
								</div>
							</li>
						</ul>
					
						<!-- eventList paging -->
						<div id="eventPaging" class="pagination">
							<span class="page_num">
								<strong>
									1
								</strong>							
							</span>						
						</div>
					</div>
				</div>
			</div>			
		</div>
	
		
</section>


</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>


<!-- javaScript -->

</html>
