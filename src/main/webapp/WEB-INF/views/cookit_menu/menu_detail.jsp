
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>쿡킷 상세페이지</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="./resources/js/menu/slider_js/lightslider.js"></script>
	<link href="./resources/css/menu/slider/lightslider.css" type="text/css" rel="stylesheet"/>
	<link href="./resources/css/menu/menu_detail.css" rel="stylesheet">
	
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
</body>

<script src="./resources/js/menu/menu_js.js"></script>

</html>
