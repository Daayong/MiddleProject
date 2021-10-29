<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	
	
	<title>쿡킷</title>
	
	
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="./resources/js/menu/slider_js/lightslider.js"></script>
	
	<link href="./resources/css/menu/slider/lightslider.css" type="text/css" rel="stylesheet"/>
	
	<style>	
		
		.wrapper{
			position:relative;
			width:100%;
		}

		#container{
			width:1180px;
			margin: 0 auto;
		}
		
	</style>
</head>
<body>
<div class="wrapper">
	<c:import url="./temp/boot_nav.jsp"></c:import>	
	
	<div class="slider_wrap">
		
		<ul class="slider_container">
			<li>
				<div class="flag_txt">웹매거진 오픈</div>
				<div class="title_txt">글램핑하기 좋은 날</div>
				<div class="sub_txt">쿡킷이 발행하는 웹 매거진 VOL.10</div>
				<img alt="20211007145504248" src="${pageContext.request.contextPath}/resources/images/main/20211007145504248.jpg">
			</li>
			<li>
				<div class="flag_txt">댓글 이벤트 오픈!</div>
				<div class="title_txt">슬기로운 산촌생활</div>
				<div class="sub_txt">댓글 이벤트 참여하고, 선물 받아 가세요!</div>
				<img alt="20211007145504248" src="${pageContext.request.contextPath}/resources/images/main/20211008100208556.jpg">
			</li>
			<li>
				<div class="flag_txt">기획전 오픈</div>
				<div class="title_txt">가을타는 입맛을 위한 요리비책</div>
				<div class="sub_txt">가을 타는 요즘, 쿡킷으로 마음의 허기를 달래보세요.</div>
				<img alt="20211007145504248" src="${pageContext.request.contextPath}/resources/images/main/20211014141421792.jpg">
			</li>
		</ul>
	
	</div>
	
	<section id="container">
		<div class="row_grid">
            <!-- 배송 로그인 전/구매이력이 없을 경우 -->
            <div class="ma_no_delivery mbrOrderNoDataArea">
                <a href="javascript:cj.addr.open('','true','true', 'dlv_search_addr');">
                    <strong>우리집도 COOKIT 배송이 되나요?</strong>
                    <p>배송이 가능한지 알려드려요.</p>

                    <span class="link_map"><span>배송지 검색</span></span>
                </a>
            </div>

            <!-- 배송 : 로그인 후 구매이력이 있는 경우 -->
            <div class="ma_delivery mbrOrderListArea" style="display:none;">
                <div class="login_delivery"></div>
            </div>

            <!-- 쿠폰 발급이 안된 케이스 -->
            <div class="ma_no_coupon mbrCpnNoDataArea">
                <a href="javascript:void(0);">
                    <strong>10월 30일(금)에 받을 수 있어요</strong>
                    <p>오전 7시까지 주문하시면 다음날 배송됩니다.</p>

                    <span class="link_time"><span>00:00:00</span>남은시간</span>
                </a>
            </div>

            <!-- 쿠폰 발급된 케이스 -->
            <div class="ma_coupon mbrCpnListArea" style="display:none;">
                <div class="coupon_wrap">
                    <div class="list_slide ui_carousel">
                        <!-- indigator -->
                        <div class="indigator silde_arrow_wrap">
                            <button class="prev ui_carousel_prev ui_carousel_arrow" style="display: inline-block;"><span class="hide">쿠폰 이전보기</span></button>
                            <span class="count_wrap">
                                <span class="num"><em>1</em>/3</span>
                                <span class="hide">총 페이지 3 페이지 중 현재 1번째 페이지</span>
                            </span>
                            <button class="next ui_carousel_next ui_carousel_arrow" style="display: inline-block;"><span class="hide">쿠폰 다음보기</span></button>
                        </div>

                        <!-- list -->
                        <div class="coupon_list ui_carousel_list">
                            <ul class="ui_carousel_track dataListArea">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

	</section>
	
	<!-- 중단 이벤트 배너 -->
	
	<div class="slider_wrap">
		
		<ul class="slider_container_banner">
			<li>
				<img alt="event_banner" src="${pageContext.request.contextPath}/resources/images/main/main_banner1.jpg">
			</li>
			<li>
				<img alt="event_banner" src="${pageContext.request.contextPath}/resources/images/main/main_banner2.jpg">
			</li>
			<li>
				<img alt="event_banner" src="${pageContext.request.contextPath}/resources/images/main/main_banner3.jpg">
			</li>
		</ul>
	
	</div>
	
	
	<section id="container2">
	
		<!-- 실시간 베스트 상품 -->
		
		<div class="best_wrap">
		
			<h2 class="tit">실시간 베스트</h2>
			
			<div class="item_wrap">
				
				<!-- c:foreach -->
				
				<c:forEach items="${prd_mDTO}" var="m_dto" varStatus="num" begin="0" end="5">
				<a href="./menu/menu_detail?product_id=${m_dto.product_id}">
					<div class="item">
						<div class="img_wrap">
							<img alt="test" src="./resources/upload/menu/main/${m_dto.product_id}/${m_dto.product_name}.jpg">
						</div>
						<div class="rank_txt">0${num.count}</div>
						<div class="item_bottom">
							<div class="item_name">
								<span class="name_elps">${m_dto.product_name}</span>
							</div>
							<div class="item_price">
								<span class="price_elps"><fmt:formatNumber value="${m_dto.product_price}" type="number" maxFractionDigits="3"/>원</span>
							</div>
							<div class="cart_btn_wrap">
								<button type="button" class="cart_btn"></button>
							</div>
						</div>
					</div>
				</a>
				</c:forEach>
						
				<!-- c:foreach end -->
			</div>
		</div>
		
	</section>
	
	<!-- 생생 리뷰 -->
	
	<div class="main_review">
		<div class="review_tit">
			<h2 class="tit">생생한 리뷰</h2>
			<!-- reive  페이지 이동 -->
			<a href="${pageContext.request.contextPath}/review/reviewMain" class="link_txt">View All</a>
		</div>
		<div class="mr_slider_wrap">
			<div class="mr_slide_container">
				<div class="slide_arrow_wrap">
					<button type="button" class="prev btn_arrow" id="prev"></button>
					<span class="count_wrap">
						<span class="num">
							<strong>1</strong> / 5
						</span>
					</span>
					<button type="button" class="next btn_arrow" id="next"></button>
				</div>
				<div class="slide_list">
					<div class="review_content">
						<!-- button 클릭시 해당 번호의 li opacity 1 나머지 0 -->
						<ul>
							<c:forEach var="i" begin="0" end="5">
							
							<li>
								<div class="rv_mod">
									<a href="#">
										<strong class="tit">얼큰 닭 한마리</strong>
										
										<div class="txt_wrap">
											양도 풍성해서 다음날 또 먹을 수 있을 정도였어요 칼국수가 일품이네요.
										</div>
										<div class="rating_wrap">
											<span class="rating_star">
												<span class="star">
													
												</span>
											</span>
										</div>
									</a>
								</div>
							</li>
							
							</c:forEach>
						</ul>
					</div>
					<div class="review_img">
						<ul class="slide_track" style="opacity: 1; width: 25000px; transform: translate3d(-720px, 0px, 0px);">
							<c:forEach var="i" begin="0" end="9">
								<li class="slide_item" data-item-index="${i}" aria-hidden="true">
									<div class="rv_mod">
										<div class="img_wrap">
											<img src="${pageContext.request.contextPath}/resources/images/temp/main_review_temp${i % 5}.jpg">
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="review_sub_img">
						<ul class="slide_track" style="opacity: 1; width: 25000px; transform: translate3d(-720px, 0px, 0px);">
							<c:forEach var="i" begin="0" end="9">
								<li class="slide_item_sub" data-item-index="${i}" aria-hidden="true">
									<div class="rv_mod">
										<div class="sub_img_wrap">
											<img src="${pageContext.request.contextPath}/resources/images/temp/temp${i % 5}.png">
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 상품 나열 prd -->
	
	<div class="main_product">
		<div class="float_left">
			<div class="left_box" style="margin-top: 0px;">
				<div class="img_major">
					<img alt="p_l" src="${pageContext.request.contextPath}/resources/images/main/product_left_main.jpg">
				</div>
				<h2 class="prd_tit">
					쿡킷 메뉴보기<br>
					Premium Mealkit
				</h2>
				<p class="desc_txt">
					장보기, 재료손질, 레시피검색
					<b>번거로움 OUT!</b>
					<br>
					초간편함은 물론, 완벽한 맛 쿡킷이 다~ 했네
				</p>
				
				<!-- prd list -->
				
				<div class="main_product_list">
					<ul>
						<c:forEach items="${prd_mDTO}" var="m_dto" begin="0" end="8">
						<a href="./menu/menu_detail?product_id=${m_dto.product_id}">
							<li class="item">
								<div class="item_module">
									<div class="img_wrap">
										<img src="./resources/upload/menu/main/${m_dto.product_id}/${m_dto.product_name}.jpg">
									</div>
									<div class="txt_wrap">
										<div class="tit_info">
											<span class="tit">${m_dto.product_name}</span>
										</div>
										<div class="price_info">
											<p class="sale">
												<fmt:formatNumber value="${m_dto.product_price}" type="number" maxFractionDigits="3"/>원
											</p>
										</div>
										
									</div>
									<div class="act_btn_wrap">
										<button type="button" class="btn btn_cart"></button>
									</div>
								</div>
							</li>
						</a>
						</c:forEach>
					</ul>
				</div>
				
			</div>
		</div>
		<div class="float_right">
			<div class="right_box" style="margin-top: 0px;">
				<div class="img_major">
					<img alt="p_l" src="${pageContext.request.contextPath}/resources/images/main/product_right_main.jpg">
				</div>
				<h2 class="prd_tit">
					놓칠 수 없는 기회<br>
					한정 수량 MD의 추천
				</h2>
				<p class="desc_txt">
					파격적인 가격으로
					<br>
					쿡킷을 경험할 수 있는 기회를 잡으세요.
				</p>
				
				<!-- prd list -->
				
				<div class="main_product_list">
					<ul>
						<c:forEach begin="0" end="0">

						</c:forEach>
					</ul>
				</div>
				
				<div class="main_event_banner">
					<ul>
						
						<li>
							<div class="event_banner_box">
								<a href="#">
									<div class="thumb_img">
										<img src="${pageContext.request.contextPath}/resources/images/main/product_event_banner1.jpg">
									</div>
									<h2 class="prd_tit"></h2>
									<p class="desc_txt"></p>
									<span class="btn_view">자세히 보기</span>
								</a>
							</div>
						</li>
						
					</ul>
				</div>
				
			</div>
		</div>
	</div>
 	
 	
 	<!-- 공지사항 -->
	 	
    <div class="ma_notice">
        <div class="not_m_wrap">
        	
             <a href="/pc/cs/noticeView?ntcSeq=3834&wid1=notice">
                 <dl>
                     <dt>공지사항</dt>
                     <dd class="txt"><p class="st_elps">CJ제일제당 서비스 이용약관 변경 고지 [2021.10.28 시행]</p></dd>
                 </dl>
             </a>
            
        </div>
    </div>
    
 	<c:import url="./temp/boot_footer.jsp"></c:import>
</div>

	<script type="text/javascript">

	/* =================== home 페이지 ============== */
	
	$(".slide_item:eq(1) .img_wrap").addClass("on");
	$(".slide_item_sub:eq(1) .sub_img_wrap").addClass("on");
	
	$('.btn_arrow').click(function() {
	
	//	transform 값 계산
		const slide_list = $(this).parent().next();
		const slide_track = slide_list.find('.slide_track');
		const slide_track_sub = slide_list.find('.slide_track:eq(1)');
		let transformVal = slide_track.css('transform').split(',')[4];
	
	/* slideContentsSize : 슬라이드 거리 계산 (slide_contents width, margin-right 합) */
		let slide_item = slide_track.children('.slide_item_sub');
		let width = parseInt(slide_item.css('width').split('px')[0]);
		let margin_right = parseInt(slide_item.css('margin-right').split('px')[0]);
		let slideContentsSize = width + margin_right;
	
	//	slide_contents 개수 계산
		let slideContentsCnt = 5;
		
	//	if : 중복클릭 방지용
		if(transformVal % slideContentsSize == 0) {		
			
	//		슬라이드 네비 넘버
			slide_nav_num = Number($(".slide_arrow_wrap").find(".num > strong").text());
			
	//		슬라이드 방향 체크 및 네비 넘버 값 증감
			if ($(this).attr('id') == "next") {
				transformVal -= slideContentsSize;
				slide_nav_num++;
			} else {
				transformVal -= -slideContentsSize;		
				slide_nav_num--;
			}
			
	//		슬라이드
			slide_track.css( 'transition', 'transform 1200ms ease 0s' );
			slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
			
			slide_track_sub.css( 'transition', 'transform 1300ms ease 0s' );
			
			let indexNum = $(".slide_item:eq(" + slide_nav_num + ")").data("itemIndex");
			
			// 메인 이미지
			$(".slide_item .img_wrap").not(".slide_item:eq(" + slide_nav_num + ") .img_wrap").removeClass("on").css("transition", "1s");
			$(".slide_item:eq(" + slide_nav_num + ") .img_wrap").addClass("on").css("transition", "1s");
			
			// 서브 이미지
			$(".slide_item_sub .sub_img_wrap").not(".slide_item_sub:eq(" + slide_nav_num + ") .sub_img_wrap").removeClass("on").css("transition", "0.5s");
			$(".slide_item_sub:eq(" + slide_nav_num + ") .sub_img_wrap").addClass("on").css("transition", "1s");
		
//			한바퀴 돌았을 경우 rePosition();
			if (transformVal < slideContentsCnt * -slideContentsSize) {
				transformVal = -slideContentsSize;
				$(".slide_item:eq(1) .img_wrap").addClass("on");
				$(".slide_item_sub:eq(1) .sub_img_wrap").addClass("on");
				slide_nav_num = 1
				rePosition();
			}
			else if (transformVal > -slideContentsSize) {
				transformVal = slideContentsCnt * -slideContentsSize;
				slide_nav_num = slideContentsCnt
				$(".slide_item:eq(5) .img_wrap").addClass("on");
				$(".slide_item_sub:eq(5) .sub_img_wrap").addClass("on");
				rePosition();
			}
			function rePosition() {
				setTimeout(function(){
					slide_track.css( 'transition', '' );
					slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
				}, 1200);
			}
			
//		슬라이드 네비 넘버 대입
			$(".slide_arrow_wrap").find(".num > strong").html(slide_nav_num);
			//slide_list.find('.num > em').html(slide_nav_num);
			
			console.log(slide_nav_num);
		}
	
	});

	
	
	$(".slider_container").lightSlider({
	        item: 1,
	        autoWidth: true,
	        slideMove: 1, // slidemove will be 1 if loop is true
	        slideMargin: 0,
	 
	        addClass: '',
	        mode: "slide",
	        useCSS: true,
	        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
	        easing: 'linear', //'for jquery animation',////
	 
	        speed: 3000, //ms'
	        auto: true,
	        loop: true,
	        slideEndAnimation: false,
	        pause: 5000,
	 
	        keyPress: false,
	        controls: true,
	        prevHtml: '',
	        nextHtml: '',
	 
	        rtl:false,
	        adaptiveHeight:false,
	 
	        vertical:false,
	        verticalHeight:500,
	        vThumbWidth:100,
	 
	        thumbItem:10,
	        pager: false,
	        gallery: false,
	        galleryMargin: 5,
	        thumbMargin: 5,
	        currentPagerPosition: 'top',
	 
	        enableTouch:false,
	        enableDrag:false,
	        freeMove:false,
	        swipeThreshold: 40,
	 
	        responsive : [],
	 
	        onBeforeStart: function (el) {},
	        onSliderLoad: function (el) {},
	        onBeforeSlide: function (el) {},
	        onAfterSlide: function (el) {},
	        onBeforeNextSlide: function (el) {},
	        onBeforePrevSlide: function (el) {}
	    });
	
	$(".slider_container_banner").lightSlider({
        item: 1,
        autoWidth: true,
        slideMove: 1, // slidemove will be 1 if loop is true
        slideMargin: 0,
 
        addClass: '',
        mode: "slide",
        useCSS: true,
        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
        easing: 'linear', //'for jquery animation',////
 
        speed: 2000, //ms'
        auto: false,
        loop: true,
        slideEndAnimation: false,
        pause: 5000,
 
        keyPress: false,
        controls: false,
        prevHtml: '',
        nextHtml: '',
 
        rtl:false,
        adaptiveHeight:false,
 
        vertical:false,
        verticalHeight:500,
        vThumbWidth:100,
 
        thumbItem:10,
        pager: true,
        gallery: false,
        galleryMargin: 5,
        thumbMargin: 5,
        currentPagerPosition: 'top',
 
        enableTouch:false,
        enableDrag:false,
        freeMove:false,
        swipeThreshold: 40,
 
        responsive : [],
 
        onBeforeStart: function (el) {},
        onSliderLoad: function (el) {},
        onBeforeSlide: function (el) {},
        onAfterSlide: function (el) {},
        onBeforeNextSlide: function (el) {},
        onBeforePrevSlide: function (el) {}
    });

	</script>
	
</body>

</html> 

