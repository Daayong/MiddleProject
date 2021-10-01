<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link href="${pageContext.request.contextPath}/resources/css/eventMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>

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

<div class="wrapper">		

<c:import url="../temp/boot_nav.jsp"></c:import>
<!-- 여기에 페이지 작업 -->

	
	<section id="container">
	
		<div id="content">
		
			<div class="event_wrap">
			
				<div class="title">
					<h1>이벤트</h1>
				</div>
				
				<div class="tab_wrap">
						<ul class="tabs">
							<li class="on" id="pros" >
								<a style="cursor: pointer;"><span>진행중</span></a>
							</li>
							<li class="" id="pres">
								<a style="cursor: pointer;"><span>당첨자 발표</span></a>
							</li>
						</ul>
					
		<!-- 이벤트 목록 페이지 -->
					
		<div class="event_list" style="display:block;">
			<ul id="eventListArea">
	
		<li>
			<!-- 이미지 케이스 -->
			<div class="pro_module">
				<div class="img_wrap">							
								
					<a href="#" class="link_more">

						<img src="/mp/resources/images/20210928163004637.jpg" alt="스탬프 찍으면, 쿡킷 인기메뉴가 무료(10월-12월)" onerror="cj.com.noImg(this,'P')">				
						<span class="dim"></span>
					</a>
				</div>
				<div class="txt_wrap">
					<a href="javascript:goExtDevUrl('')" class="conts">
						<div class="prd_flag_wrap">
							<span class="flag cate">EVENT</span><!-- 개발 요청 사항 : EVENT/기획전 경우 .flag에 cate 클래스 추가  -->
							
							
							
							<span class="date">2021.10.01 ~ 2021.12.31</span>
						</div>
						<div class="tit_info">
							<span class="tit mt_elps">스탬프 찍으면, 쿡킷 인기메뉴가 무료(10월-12월)</span>
						</div>
					</a>
				</div>
			</div>
			<!-- //이미지 케이스 -->
		</li>		
	
		<li>
			<!-- 이미지 케이스 -->
			<div class="pro_module">
				<div class="img_wrap">				

								
					<a href="#" class="link_more">

					
						<img src="/mp/resources/images/20210923114226512.jpg" alt="[쿡킷] 선선한 가을 캠핑, 따뜻한 요리" onerror="cj.com.noImg(this,'P')">				
						<span class="dim"></span>
					</a>
				</div>
				<div class="txt_wrap">
					<a href="#" class="conts">
						<div class="prd_flag_wrap">
							<span class="flag cate">EVENT</span><!-- 개발 요청 사항 : EVENT/기획전 경우 .flag에 cate 클래스 추가  -->
	
								<span class="flag dday">D-6</span>

							
							<span class="date">2021.09.24 ~ 2021.10.07</span>
						</div>
						<div class="tit_info">
							<span class="tit mt_elps">[쿡킷] 선선한 가을 캠핑, 따뜻한 요리</span>
						</div>
					</a>
				</div>
			</div>
			<!-- //이미지 케이스 -->
		</li>		
	
		<li>
			<!-- 이미지 케이스 -->
			<div class="pro_module">
				<div class="img_wrap">				
		
		<a href="#" class="link_more">
			<img src="/mp/resources/images/20201030163116494.jpg" alt="첫구매 1만원 할인 &amp; 무료배송 쿠폰 혜택" onerror="cj.com.noImg(this,'P')">				
						<span class="dim"></span>
					</a>
				</div>
				<div class="txt_wrap">
					<a href="javascript:goExtDevUrl('')" class="conts">
						<div class="prd_flag_wrap">
							<span class="flag cate">EVENT</span><!-- 개발 요청 사항 : EVENT/기획전 경우 .flag에 cate 클래스 추가  -->
				
							<span class="date">2020.04.08 ~ 2021.12.31</span>
						</div>
						<div class="tit_info">
							<span class="tit mt_elps">첫구매 1만원 할인 &amp; 무료배송 쿠폰 혜택</span>
						</div>
					</a>
				</div>
			</div>
			<!-- //이미지 케이스 -->
		</li>		
	
		<li>
			<!-- 이미지 케이스 -->
			<div class="pro_module">
				<div class="img_wrap">				
	
			<a href="#" class="link_more">
						<img src="/mp/resources/images/20210928090806903.jpg" alt="[쿡킷] 10월 카드사 기획전" onerror="cj.com.noImg(this,'P')">				
						<span class="dim"></span>
					</a>
				</div>
				<div class="txt_wrap">
					<a href="#" class="conts">
						<div class="prd_flag_wrap">
							<span class="flag cate">EVENT</span>
							
							<span class="date">2021.10.01 ~ 2021.10.31</span>
						</div>
						<div class="tit_info">
							<span class="tit mt_elps">[쿡킷] 10월 카드사 기획전</span>
						</div>
					</a>
				</div>
			</div>
			<!-- //이미지 케이스 -->
		</li>		
	
		<li>
			<!-- 이미지 케이스 -->
			<div class="pro_module">
				<div class="img_wrap">				
					<a href="#" class="link_more">			
						<img src="/mp/resources/images/20210217142045591.jpg" alt="[쿡킷]현대카드 M포인트 사용혜택" onerror="cj.com.noImg(this,'P')">				
						<span class="dim"></span>
					</a>
				</div>
				<div class="txt_wrap">
					<a href="#" class="conts">
						<div class="prd_flag_wrap">
							<span class="flag cate">EVENT</span><!-- 개발 요청 사항 : EVENT/기획전 경우 .flag에 cate 클래스 추가  -->
									
							<span class="date">2021.02.18 ~ 2021.12.31</span>
							</div>
						<div class="tit_info">
						<span class="tit mt_elps">[쿡킷]현대카드 M포인트 사용혜택</span>
						</div>
					</a>
				</div>		
				</div>		
			</li>		
		</ul>

	
				<!-- paging -->
				<div id="eventPaging" class="pagination">

					<span class="page_num">
						<strong><span class="hide">현재 페이지</span>1</strong>
					</span>
				
				
				</div>
						</div>
					
					<!-- //이벤트 목록 페이지 -->
					
					
				<!-- 당첨자 발표 페이지 -->
					
				<div id="winnerListArea"  class="event_winner" style="display: block;">
					<div class="chk_wrap">
						<input type="checkbox" id="sorting_ev" ><label for="sorting_ev">내가 참여한 이벤트</label>
					</div>
				
				<!-- 참여한 이벤트 checkbox 눌렀을 시 -->
					<div class="no_data" style="display: none">
						<span class="ico"></span>
						<strong>참여한 이벤트가 없습니다.</strong>		
					</div>
					

				<!-- 당첨자 발표 table -->	
				<div class="tb_row" style="display: none">
					<table class="">
						<colgroup>
							<col width="10%">
							<col width="*">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th scope="row">번호</th>
								<th scope="row">제목</th>
								<th scope="row">당첨자 발표일자</th>
							</tr>
						</thead>
						<tbody>
							
								<tr>
									<td>6</td>
									<td class="tit"><a href="#">[당첨안내] 21년 추석 사전예약 10만원 이상 구매 고객 이벤트 당첨자 안내 </a></td>
									<td>2021-09-24</td>
								</tr> 
							
								<tr>
									<td>5</td>
									<td class="tit"><a href="#">[당첨자 발표] '7월 프라이빗 캠핑 기획전' 캠핑용품 증정 이벤트</a></td>
									<td>2021-08-04</td>
								</tr> 
							
								<tr>
									<td>4</td>
									<td class="tit"><a href="#">[당첨안내] 7월 쿡킷푸드페스타 &lt;기프트카드 리워드&gt; 이벤트 당첨자 안내 </a></td>
									<td>2021-07-26</td>
								</tr> 
							
								<tr>
									<td>3</td>
									<td class="tit"><a href="#">[당첨안내] 6월 쿡킷푸드페스타 &lt;기프트카드 리워드&gt; 이벤트 당첨자 안내 </a></td>
									<td>2021-06-25</td>
								</tr> 
							
								<tr>
									<td>2</td>
									<td class="tit"><a href="#">[당첨자 발표] '쿡킷x한샘몰' 콜라보레이션 이벤트</a></td>
									<td>2021-06-03</td>
								</tr> 
							
								<tr>
									<td>1</td>
									<td class="tit"><a href="#">[경품이벤트] 쿡킷X한강주조 전용잔 SET 당첨자 안내</a></td>
									<td>2021-05-11</td>
								</tr> 
							
						</tbody>
					</table>
				</div>
			
		 	<div id="winnerPaging" class="pagination">
				<span class="page_num">
					<strong><span class="hide">현재 페이지</span>1</strong>
				</span>
			
			</div> 
		<!-- 당첨자 발표 -->
	</div>
					
					
					
					<!--//당첨자 발표 -->
				</div>
			</div>			
		</div>
	
		
</section>


</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>


<!-- javaScript -->

<script type="text/javascript">
	$("#pros").click(function() {
		$(this).addClass("on");
		$("#pres").removeClass("on");
		$(".event_list").css("display","block");
		$(".tb_row").css("display","none");
	});
	
	$("#pres").click(function() {
		$(this).addClass("on");
		$("#pros").removeClass("on");
		$(".tb_row").css("display","block");
		$(".event_list").css("display","none");
	});
	
	
	
	

</script>

</html>
