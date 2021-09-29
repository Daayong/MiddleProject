
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Home</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="./resources/js/lightslider.js"></script>
	<link type="text/css" rel="stylesheet" href="./resources/css/lightslider.css" />
	<link href="./resources/css/menu_detail.css" rel="stylesheet">
	<style>
	ul, li {
		margin:0;
		padding:0;
		list-style:none
	}
	</style>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

<div class="wrapper">		
<!-- 여기에 페이지 작업 -->
	<div class="content_wrapper">
			<div class="top_info">
				<div class="left_con">
					<!-- 이미지 슬라이드 및 바뀔시 큰 이미지 들어가게 만들기 -->
					<div class="image_in">
						<ul id="lightSlider2">
							<!-- c:foreach -->
							<li><img alt="in" src="./resources/images/menu/image_in1.png"></li>
							<li><img alt="in" src="./resources/images/menu/menu_detail/snowcheese1.jpg"></li>
							<li><img alt="in" src="./resources/images/menu/menu_detail/snowcheese2.jpg"></li>
							<li><img alt="in" src="./resources/images/menu/menu_detail/snowcheese3.jpg"></li>
							<li><img alt="in" src="./resources/images/menu/menu_detail/snowcheese4.jpg"></li>
							<li><img alt="in" src="./resources/images/menu/menu_detail/snowcheese5.jpg"></li>
							<!-- c:foreach -->
						</ul>
					</div>
					<div class="slider_wrapper">
						<div class="slider_btn prev_btn" id="prev">
							<div class="ico_set prev_img"></div>
						</div>
						<div class="slider_btn next_btn" id="next">
							<div class="ico_set next_img"></div>
						</div>
						<ul id="lightSlider">
							<!-- c:foreach -->
							<li class="slide_item" value="0"><img alt="in" src="./resources/images/menu/image_in1.png" width="90px" height="90px"></li>
							<li class="slide_item" value="1"><img alt="in" src="./resources/images/menu/menu_detail/snowcheese1.jpg" width="90px" height="90px"></li>
							<li class="slide_item" value="2"><img alt="in" src="./resources/images/menu/menu_detail/snowcheese2.jpg" width="90px" height="90px"></li>
							<li class="slide_item" value="3"><img alt="in" src="./resources/images/menu/menu_detail/snowcheese3.jpg" width="90px" height="90px"></li>
							<li class="slide_item" value="4"><img alt="in" src="./resources/images/menu/menu_detail/snowcheese4.jpg" width="90px" height="90px"></li>
							<li class="slide_item" value="5"><img alt="in" src="./resources/images/menu/menu_detail/snowcheese5.jpg" width="90px" height="90px"></li>
							<!-- c:foreach -->
						</ul>
					</div>
					<div class="etc_info">
						<!-- 리뷰 및 레시피공유하는 박스 -->
					</div>
				</div>
				<div class="right_con">
					<div class="title_info">
						<div class="sub_title">
							달콤 갈릭버터의 풍미와 통통새우🍤
						</div>
						<div class="title">
							* 갈릭버터쉬림프
						</div>
						<p class="prd_origin">원산지 : 상품참조</p>
					</div>
					<div class="prd_cookinfo">
						<span>3인분</span>
						<span>조리 20분</span>
						<span>준비 30분</span>
					</div>
					<div class="prd_price">
						판매가 : 26,800원
					</div>
					<div class="addme">
					</div>
					<div class="prd_cnt">
						<span class="cnt">수량 0개</span>
						<span class="price">0원</span>
					</div>
					<div class="utiLBox_wrap">
						<div class="zzim">
							<button type="button" class="zzim_btn"></button>
						</div>
						<div class="cart">
							<button type="button" class="cart_btn">장바구니 담기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- =============================== 상 하단 구분선 ======================================  -->
		
		<div class="detail_wrapper">
			<div class="detail_menubox">
				<div class="detail_menu">
					<ul>
						<li class="menuLi"><a id="description">상세설명</a></li>
						<li class="menuLi"><a id="productInfo">상품정보</a></li>
						<li class="menuLi"><a id="review">리뷰</a></li>
						<li class="menuLi"><a id="orderHelp">배송/반품/문의</a></li>
					</ul>
				</div>
			</div>
			<div class="detail_info">
				<div class="left_detail">
					<!-- 상품 설명 박스 -->
					<div class="description">
						<div class="description_box1">
							<div class="leftbox_banner">
								<img alt="banner" src="./resources/images/menu/menu_detail/leftbox_banner.png">
							</div>
						</div>
						<div class="description_box2">
							<img alt="main" src="./resources/images/menu/menu_detail/snowcheeze_main.png">
							<img alt="sub1" src="./resources/images/menu/menu_detail/snowcheeze_sub1.png">
							<img alt="sub2" src="./resources/images/menu/menu_detail/snowcheeze_sub2.png">
							<img alt="sub3" src="./resources/images/menu/menu_detail/snowcheeze_sub3.png">
							<img alt="sub4" src="./resources/images/menu/menu_detail/snowcheeze_sub4.png">
						</div>
					</div>
					<!-- 상품 정보 박스 -->
					<div class="productInfo">
						<h1>상품정보란 입니다.</h1>
						<h3>상품코드: 11111111</h3>
					</div>
					<!-- 상품 리뷰 박스 -->
					<div class="reviews">
						<h1>상품 리뷰란입니다.</h1>
					</div>
					<!-- 배송 문의 박스 -->
					<div class="orderHelp">
						<h1>상품 주문 관련 문의사항 신청하기</h1>
					</div>
				</div>
				<div class="border_hauto"><!-- border auto -->
					<div class="right_detail">
						<div class="right_box1">
						</div>
						<div class="right_box2">
						</div>
						<div class="right_box3">
							<div class="prdCnt">
								수량 0개 0원
							</div>
							<div class="detailCart_btn">
								장바구니 담기
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- 여기까지 -->
<div class="push"></div>
</div>
<c:import url="../temp/boot_footer.jsp"></c:import>

<!-- ======= script area ======= -->
	<script type="text/javascript">
	
		/* detail_menu */
		$("#description").click(function() {
			$(".description").show();
			$(".productInfo").hide();
			$(".reviews").hide();
			$(".orderHelp").hide();
			
			$(".menuLi:first").css("border-bottom","solid 2px black");
			$(".menuLi:eq(1)").css("border-bottom","none");
			$(".menuLi:eq(2)").css("border-bottom","none");
			$(".menuLi:last").css("border-bottom","none");
		});
		
		$("#productInfo").click(function() {
			$(".description").hide();
			$(".productInfo").show();
			$(".reviews").hide();
			$(".orderHelp").hide();
			
			$(".menuLi:first").css("border-bottom","none");
			$(".menuLi:eq(1)").css("border-bottom","solid 2px black");
			$(".menuLi:eq(2)").css("border-bottom","none");
			$(".menuLi:last").css("border-bottom","none");
		});
		
		$("#review").click(function() {
			$(".description").hide();
			$(".productInfo").hide();
			$(".reviews").show();
			$(".orderHelp").hide();
			
			$(".menuLi:first").css("border-bottom","none");
			$(".menuLi:eq(1)").css("border-bottom","none");
			$(".menuLi:eq(2)").css("border-bottom","solid 2px black");
			$(".menuLi:last").css("border-bottom","none");
		});
		
		$("#orderHelp").click(function() {
			$(".description").hide();
			$(".productInfo").hide();
			$(".reviews").hide();
			$(".orderHelp").show();
			
			$(".menuLi:first").css("border-bottom","none");
			$(".menuLi:eq(1)").css("border-bottom","none");
			$(".menuLi:eq(2)").css("border-bottom","none");
			$(".menuLi:last").css("border-bottom","solid 2px black");
		});
		
		/* detail_menu 선택한거 아래밑줄표시 */
		/* 페이지 로드시 상세설명 기본값 */
		$(document).ready(function() {
			$(".menuLi:first").css("border-bottom","solid 2px black");
			$(".productInfo").hide();
			$(".reviews").hide();
			$(".orderHelp").hide();
		});
		
		/* 슬라이더 */
		$(document).ready(function() {
			let number;
		    $("#lightSlider").lightSlider({
		        item: 5,
		        autoWidth: 90,
		        slideMove: 1, // slidemove will be 1 if loop is true
		        slideMargin: 10,
		 
		        addClass: '',
		        mode: "slide",
		        useCSS: true,
		        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
		        easing: 'linear', //'for jquery animation',////
		 
		        speed: 400, //ms'
		        auto: false,
		        loop: false,
		        slideEndAnimation: true,
		        pause: 2000,
		 
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
		        currentPagerPosition: 'middle',
		 
		        enableTouch:true,
		        enableDrag:true,
		        freeMove:true,
		        swipeThreshold: 40,
		 
		        responsive : [],
		 
		        onBeforeStart: function (el) {},
		        onSliderLoad: function (el) {},
		        onBeforeSlide: function (el) {},
		        onAfterSlide: function (el) {},
		        onBeforeNextSlide: function (el) {},
		        onBeforePrevSlide: function (el) {}
		    });
		    
		    let slider2 = $("#lightSlider2").lightSlider({
		        item: 1,
		        autoWidth: 600,
		        slideMove: 1, // slidemove will be 1 if loop is true
		        slideMargin: 0,
		 
		        addClass: '',
		        mode: "slide",
		        useCSS: true,
		        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
		        easing: 'linear', //'for jquery animation',////
		 
		        speed: 400, //ms'
		        auto: false,
		        loop: false,
		        slideEndAnimation: true,
		        pause: 2000,
		 
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
		        pager: false,
		        gallery: false,
		        galleryMargin: 5,
		        thumbMargin: 5,
		        currentPagerPosition: 'middle',
		 
		        enableTouch:true,
		        enableDrag:true,
		        freeMove:true,
		        swipeThreshold: 40,
		 
		        responsive : [],
		 
		        onBeforeStart: function (el) {},
		        onSliderLoad: function (el) {},
		        onBeforeSlide: function (el) {},
		        onAfterSlide: function (el) {},
		        onBeforeNextSlide: function (el) {},
		        onBeforePrevSlide: function (el) {}
		    });
		    
		    $(".slide_item:first").children().css({
		    	"border": "5px solid #bdd61a",
		    	"opacity": "1"
		    });
		    
		    $(".slide_item").on("click", function () {
		    	let select = $(this);
		    	number = $(this).val();
		    	slider2.goToSlide(number);
		    	
		    	$(".slide_item").children().not(select).css({
		    		"border": "none",
			    	"opacity": "0.5"
		    	})
		    	$(this).children().css({
		    		"border": "5px solid #bdd61a",
			    	"opacity": "1"
		    	});
			});
		});
		
		
		/* 작은 슬라이더 클릭시 위에 이미지 바꾸는 스크립트 */
		/* 디폴트 */
		

	</script>
</body>
</html>

<%-- <div class="slide_wrap ">
	<div class="slide_list">
		<div class="slide_track" style="opacity: 1; width: 25000px; transform: translate3d(-568px, 0px, 0px); transition: transform 1200ms ease 0s;">
		<c:forEach begin="1" end="5">
		
		
			<div class="slide_contents" data-slide_contents_index = "1" aria-hidden = "false">
				<div class="item">
					<a>
						<div class="img_wrap">
							<div class="best_flag">
								<span class="flag_txt">Best</span>
						 	</div>
						 	<img alt="select product_name from product" src="/mp/resources/images/temp/review_temp.jpg">
						</div>
						
						<div class="txt_wrap">
						
							<span class="tit">product_name
							</span>
							<div class="etc_info">	
													
								<div class="rating_star">
									<span class="star"> <!-- background image 커스텀 영역 -->
										<span style="width:100.0%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
										</span>
									</span>
								</div>
								
								<div class="user_id">
									member_userId****
								</div>
								
							</div>
							
							<div class="txt">
								select contents from review where bestReview;select contents from review where bestReview<br>select contents from review where bestReview;
							</div>
							
						</div>
					</a>
				</div>
			</div>
		
		
		</c:forEach>
		</div>
		<div class="slide_nav_count">
			<span class="num">
				<em>1</em>/5
			</span>
		</div>
		<div class="slide_nav_arrow">
			<div class="arr_area">
				<button type="button" class="btn_arrow prev" style="display: block;">
				</button>
				<button type="button" class="btn_arrow next" style="display: block;">
				</button>
			</div>
		</div>
	</div>
</div> --%>


<!-- $('.btn_arrow.next').click(function() {
	
	let transformVal = $('.slide_track').css('transform');
	let arr = transformVal.split(',');
	
	let slideContentsWidth = 568;
	let slideContentsCnt = 5;
	
	if(arr[4] % slideContentsWidth == 0) {
		switch (arr[4] / -slideContentsWidth) {
			case slideContentsCnt	: arr[4] = -slideContentsWidth; break;
							default	: arr[4] -= slideContentsWidth;
		}
	console.log($(this).parents('.slide_list').children('.slide_track'));
	$(this).parents('.slide_list').children('.slide_track').css(
		'transform', 'translate3d(' + arr[4] + 'px, 0px, 0px)',
	);
		
	}
}); -->
