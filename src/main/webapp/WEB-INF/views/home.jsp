<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	
	
	<title>쿡킷</title>
	
	
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	
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
		
		#container2{
			width:1180px;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
		
		.slider_wrap{
			width: 1920px;
			margin: 0 auto;
		}
		.slider_container{
			width: 1920px;
			position: relative;
		}
		.lSAction > a {
			width: 60px;
			height: 80px;
			background-image: none;
		}
		.lSAction > .lSPrev{
			background: url('./resources/images/main/img_main.png') no-repeat 0 -457px;
			background-size: 800px 800px;
			top: 50%;
			left: 250px;
			transform: translate(0, -50%);
		}
		.lSAction > .lSNext{
			background: url('./resources/images/main/img_main.png') no-repeat -69px -457px;
			background-size: 800px 800px;
			top: 50%;
			right: 250px;
			transform: translate(0, -50%);
		}
		
		
		.slider_container li{
			position: relative;
		}
		.flag_txt{
			position: absolute;
			padding: 10px 16px 10px 16px;
			background-color: white;
			top: 80px;
			left: 375px;
			text-align: center;
			font-size: 22px;
			font-weight: 700;
			color: black;
		}
		.title_txt{
			position: absolute;
			top: 180px;
			left: 375px;
			color: white;
			font-size: 68px;
			
		}
		.sub_txt{
			position: absolute;
			top: 250px;
			left: 375px;
			color: white;
			font-size: 24px;
		}
		
		.row_grid {width:1180px; margin:60px auto 100px;}
		.row_grid:after{content:'';display:table;clear:both;}
		
		/* 배송 로그인 전/구매이력이 없을 경우 */
		.ma_delivery .link_map,
		.ma_no_delivery .link_map {display:inline-block; position:relative; padding-left:24px; }
		.ma_delivery .link_map:before,
		.ma_no_delivery .link_map:before {content:''; position:absolute; left:0; bottom:3px; width:20px; height:20px; background:url('${pageContext.request.contextPath}/resources/images/main/img_main.png') no-repeat -660px -40px; background-size:800px 800px;}
		.ma_delivery .link_map span,
		.ma_no_delivery .link_map span {color:#101010; font-weight:500; font-size:18px; line-height:27px;}
		.ma_no_delivery {position:relative; float:left; width:578px; margin-right:24px; background:#F2F2F2;}
		.ma_no_delivery a {display:block; height:165px; padding:24px 168px 0 32px;}
		.ma_no_delivery a:after {content:''; position:absolute; right:32px; top:31px; width:104px; height:104px; background:url('${pageContext.request.contextPath}/resources/images/main/img_main.png') no-repeat -476px -200px; background-size:800px 800px;}
		.ma_no_delivery strong {display:block; color:#101010; font-weight:700; font-size:24px; line-height:34px }
		.ma_no_delivery p {padding:8px 0 21px; color:#101010; font-size:15px; line-height:23px;}
		
		/* 배송 : 로그인 후 구매이력이 있는 경우 */
		.ma_delivery {float:left; width:578px; margin-right:24px; background:#F2F2F2;}
		.ma_delivery .login_delivery {position:relative;}
		.ma_delivery .login_delivery a {display:block; height:165px; padding:24px 168px 0 32px;}
		.ma_delivery .login_delivery a::before {content:''; position:absolute; right:32px; top:24px; width:117px; height:117px; border-radius:50%; background-color:#fff;}
		.ma_delivery .login_delivery .hd {padding-bottom:8px;}
		.ma_delivery .login_delivery .hd strong {margin-right:8px; font-weight:700; font-size:24px; line-height:34px}
		.ma_delivery .login_delivery .hd .state01,
		.ma_delivery .login_delivery .hd .state05,
		.ma_delivery .login_delivery .hd .state06 {color:#008A00;}
		.ma_delivery .login_delivery .hd .state02,
		.ma_delivery .login_delivery .hd .state03,
		.ma_delivery .login_delivery .hd .state04 {color:#0379A6;}
		.ma_delivery .login_delivery .info {padding-bottom:21px;}
		.ma_delivery .login_delivery .info p {display:inline-block; padding-right:8px; color:#101010; font-size:15px; line-height:23px}
		.ma_delivery .login_delivery .info p span {font-weight:700;}
		.ma_delivery .login_delivery .info p:before {content:''; display:inline-block; position:relative; top:-2px; width:1px; height:14px; margin-right:8px; background-color:#D0D0D0; vertical-align:middle;}
		.ma_delivery .login_delivery .info p:first-child:before {display:none}
		.ma_delivery .login_delivery .img_wrap {position:absolute; right:28px; top:20px; width:125px; height:125px; }
		.ma_delivery .login_delivery .img_wrap:before {content:''; position:absolute; z-index:2; left:0; top:0; width:125px; height:125px; background:url('${pageContext.request.contextPath}/resources/images/main/img_main.png') -640px -320px no-repeat; background-size:800px 800px;}
		.ma_delivery .login_delivery .img_wrap img {width:100%;}
		.ma_delivery .login_delivery .btn_link {font-weight:500;}
		
		/* 쿠폰 발급된 케이스 */
		.ma_coupon {position:relative; float:left; width:578px; height:165px; padding-right:216px; background-color:#31A331;}
		.ma_coupon:before {content:''; position:absolute; right:0; top:0; width:216px; height:165px; background:url('${pageContext.request.contextPath}/resources/images/main/img_main.png') -250px 0 no-repeat; background-size:800px 800px;}
		.ma_coupon .coupon_wrap {}
		.ma_coupon .coupon_wrap .indigator {position:absolute; right:32px; top:auto; bottom:16px;}
		.ma_coupon .coupon_wrap .list_slide .indigator span {color:#fff;}
		.ma_coupon .coupon_wrap .list_slide .indigator .prev {background-position:-540px -24px;}
		.ma_coupon .coupon_wrap .list_slide .indigator .next {background-position:-564px -24px;}
		.ma_coupon .coupon_wrap .coupon_list {width:100%; overflow:hidden;}
		.ma_coupon .coupon_wrap .coupon_list:after{content:'';display:table;clear:both;}
		.ma_coupon .coupon_wrap .coupon_list li {float:left; width:362px;}
		.ma_coupon .coupon_wrap .coupon_list a.cont {display:block; height:165px;}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap {padding:16px 0 0 32px;}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap .major {display:block; margin-bottom:2px; color:#fff; font-weight:500; font-size:36px; line-height:52px; vertical-align:bottom;}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap .major.ko {font-size:32px;}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap .major .unit {margin-left:2px; font-weight:700; font-size:20px; line-height:30px; vertical-align:0;}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap p.txt {color:#fff; font-size:15px; line-height:23px}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap .bottom_txt {margin-top:21px;}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap .bottom_txt .date {display:inline-block; color:#fff; font-weight:500; font-size:18px; line-height:30px}
		.ma_coupon .coupon_wrap .coupon_list .con_wrap .bottom_txt .dday {display:inline-block; min-width:64px; height:30px; margin-left:4px; padding:0 13px; border-radius:19px; background-color:rgba(32, 32, 32, 0.2); color:#fff; font-weight:500; font-size:18px; line-height:30px;}
		
		/* 쿠폰 발급이 안된 케이스 */
		.ma_no_coupon {position:relative; float:left; width:578px; height:165px; background:#F2F2F2;}
		.ma_no_coupon .link_time {display:inline-block; position:relative; padding-left:24px; color:#606060; font-size:13px; line-height:27px}
		.ma_no_coupon .link_time:before {content:''; position:absolute; left:0; bottom:5px; width:20px; height:20px; background:url('${pageContext.request.contextPath}/resources/images/main/img_main.png') no-repeat -580px 0; background-size:800px 800px;}
		.ma_no_coupon .link_time span {margin-right:8px; color:#101010; font-weight:500; font-size:18px; line-height:27px;}
		.ma_no_coupon a {display:block; height:165px; padding:24px 168px 0 32px;}
		.ma_no_coupon a:after {content:''; position:absolute; right:32px; top:31px; width:104px; height:104px; background:url('${pageContext.request.contextPath}/resources/images/main/img_main.png') no-repeat -600px -200px; background-size:800px 800px;}
		.ma_no_coupon strong {display:block; color:#101010; font-weight:700; font-size:24px; line-height:34px }
		.ma_no_coupon p {padding:8px 0 20px; color:#101010; font-size:15px; line-height:23px;}
		
		
		/* 베스트 상품 */
		.best_wrap{
			margin-top: 100px;
		}
		.best_wrap .tit{
			color: #101010;
			font-weight: 700;
			font-size: 40px;
			line-height: 56px;
		}
		.item_wrap{
			margin-top: 30px;
			display: inline-grid;
			width: 100%;
			grid-template-columns: repeat(3, 1fr);
			column-gap: 36px;
			row-gap : 60px;
		}
		.item_wrap .item{
			width: 366px;
			height: 440px;
			margin: 0 auto;
			position: relative;
		}
		.item_wrap .item .img_wrap{
			width: 366px;
			height: 366px;
		}
		.item_wrap .item .img_wrap img{
			width: 366px;
			height: 366px;
		}
		.rank_txt{
			position: absolute;
			left: 16px;
			top: 16px;
			width: 48px;
			height: 48px;
			padding-top: 11px;
			background: #202020;
			color: white;
			font-size: 16px;
			line-height: 24px;
			letter-spacing: 0;
			text-align: center;
		}
		.item_bottom{
			position: relative;
		}
		.item_name{
			margin-top: 10px;
		}
		.name_elps{
			color: black;
			font-weight: 500;
			font-size: 17px;
			word-break : break-all;
		}
		.item_price{
			margin-top: 10px;
		}
		.price_elps{
			color: black;
			font-weight: 700;
			font-size: 18px;
		}
		.cart_btn_wrap{
			position: absolute;
			right: 0;
			top: auto;
			bottom: 2px;
		}
		.cart_btn{
			display: inline-block;
			background: url("${pageContext.request.contextPath}/resources/images/main/img_main.png") no-repeat -610px -74px;
			background-size: 800px 800px;
			width: 48px;
			height: 48px;
		}

		/* main-review */
		.main_review{
			position: relative;
			max-width: 1920px;
			max-height: 508px;
			margin: 180px auto -60px;
			overflow: hidden;
		}
		.review_tit{
			position: relative;
			width: 1180px;
			margin: 0 auto;
		}
		.review_tit .tit{
			color: #101010;
			font-weight: 700;
			font-size: 40px;
			line-height: 56px;
		}
		.review_tit .link_txt{
			position: absolute;
			right: 0;
			bottom: 10px;
			color: #202020;
			font-weight: 700;
			font-size: 18px;
			line-height: 27px;
		}
		/* mr : main_review */
		.mr_slider_wrap{
			position: relative;
			width: 1180px;
			height: 421px;
			margin: 31px auto 0;
		}
		.mr_slider_wrap:before{
			content: '';
			z-index: 11;
			position: absolute;
			left: 961px;
			top: -80px;
			width: 111px;
			height: 138px;
			background: url("${pageContext.request.contextPath}/resources/images/main/img_main.png") no-repeat 0 -240px;
			background-size: 800px 800px;
		}
		.mr_slider_wrap .slide_arrow_wrap{
			position: absolute;
			z-index: 9;
			left: 0;
			bottom: 92px;
			right: auto;
			top: auto;
		}
		.slide_arrow_wrap .prev{
			display: inline-block;
			margin-right: 12px;
			margin-top: -2px;
			background: url("${pageContext.request.contextPath}/resources/images/common/ico_set.png") no-repeat -540px 0;
			background-size: 800px 800px;
			vertical-align: middle;
			width: 24px;
			height: 24px;
		}
		.slide_arrow_wrap .next{
			display: inline-block;
			margin-left: 12px;
			margin-top: -2px;
			background: url("${pageContext.request.contextPath}/resources/images/common/ico_set.png") no-repeat -564px 0;
			background-size: 800px 800px;
			vertical-align: middle;
			width: 24px;
			height: 24px;
		}
		.slide_arrow_wrap span{
			font-size: 18px;
			line-height: 27px;
			color: #101010;
		}
		
		/* main_review 내용 */
		.mr_slider_wrap .slide_list{
			height: 421px;
		}
		.slide_list .review_content{
			position: absolute;
			left: 0;
			top: 0;
			width: 330px;
			height: 284px;
			overflow: hidden;
		}
		.review_content:before{
			content: '';
			position: absolute;
			left: 0;
			top: 0;
			width: 25px;
			height: 19px;
			background: url("${pageContext.request.contextPath}/resources/images/main/img_main.png") no-repeat -680px 0;
			background-size: 800px 800px;
		}
		.review_content ul li{
			position: absolute;
			left: 0;
			top: 31px;
			width: 100%;
			height: 259px;
			opacity: 1;
		}
		/* change 'on' */
		.review_content ul li.on{
			position: absolute;
			left: 0;
			top: 31px;
			width: 100%;
			height: 259px;
			opacity: 1;
		}		
		.review_content ul li a{
			display: block;
			color: inherit;
			text-decoration: none;
		}	
		.review_content ul li .tit{
			color: #101010;
			font-weight: 700;
			font-size: 20px;
			line-height: 30px;
		}	
		.review_content ul li .txt_wrap{
			padding-top: 20px;
		}
		.review_content .rating_wrap{
			margin-top: 24px;
			display: inline-block;
			vertical-align: top;
		}
		.rating_wrap .rating_star{
			padding: 0;
			display: inline-block;
			vertical-align: middle;
		}
		.rating_star span{
			display: block;
			width: 123px;
			height: 21px;
			background: url("${pageContext.request.contextPath}/resources/images/main/img_main.png") no-repeat -202px -418px;
			background-size: 800px 800px;
		}
		
		.slide_list .review_img{
			position: absolute;
			left: 407px;
			top: 0;
			width: 1372px;
			height: 360px;
			overflow: hidden;
		}
		.slide_track .slide_item{
			float: left;
			width: 720px;
			height: 420px;
		}
		.slide_item .img_wrap{
			position: relative;
			width: 520px;
			height: 324px;
			overflow: hidden;
			opacity: 0.1;
		}
		.slide_item .img_wrap.on{
			position: relative;
			width: 520px;
			height: 324px;
			overflow: hidden;
			opacity: 1;
		}
		
		.slide_list .review_sub_img{
			position: absolute;
			z-index: 1;
			left: 747px;
			top: 80px;
			width: 340px;
			height: 340px;
		}
		.slide_track .slide_item_sub{
			float: left;
			width: 720px;
			height: 340px;
		}
		.slide_item_sub .sub_img_wrap{
			position: relative;
			width: 340px;
			height: 340px;
			overflow: hidden;
			opacity: 0;
		}
		.slide_item_sub .sub_img_wrap.on{
			position: relative;
			width: 340px;
			height: 340px;
			overflow: hidden;
			opacity: 1;
		}
		
		/* 메인 상품 정렬 부분 */
		.main_product{
			width: 1180px;
			margin: 200px auto 0 auto;
		}
		.main_product:after{
			content: '';
			display: table;
			clear: both;
		}
		.main_product .img_major{
			position: relative;
		}
		.main_product .prd_tit{
			margin-top: 32px;
			color: #101010;
			font-weight: 700;
			font-size: 36px;
			line-height: 50px;
		}
		.main_product .desc_txt{
			margin-top: 16px;
			color: #606060;
			font-size: 15px;
			line-height: 23px;
		}
		/* left */
		.float_left{
			float: left;
			width: 500px;
		}
		
		.main_product .main_product_list{
			margin-top: 32px;
		}
		.main_product_list ul{
			display: table;
			table-layout: fixed;
			width: 100%;
			border-top: 1px solid #e0e0e0;
		}
		.main_product_list li.item{
			display: table-row;
		}
		.item_module{
			position: relative;
			margin-top: 0;
		}
		.main_product_list .item_module{
			border-bottom: 1px solid #e0e0e0;
		}
		.main_product_list .img_wrap{
			position: static;
			display: table-cell;
			width: 132px;
			height: 132px;
			background-color: #f2f2f2;
			vertical-align: middle;
		}
		.main_product_list .txt_wrap{
			position:relative;
			display: table-cell;
			width: 308px;
			height: 132px;
			padding: 18px 0 17px 18px;
			vertical-align: middle;
		}
		.main_product_list .act_btn_wrap{
			position: static;
			margin-top: 24px;
			font-size: 0;
			display: table-cell;
			width: 60px;
			height: 132px;
			padding-bottom: 18px;
			text-align: right;
			vertical-align: bottom;
		}
		
		
		/* right */
		.float_right{
			float: right;
			width: 500px;
		}
		.main_event_banner{
			margin-top: 98px;
			position: relative;
		}
		.main_event_banner .event_banner_box a{
			display: block;
			color: inherit;
			text-decoration: none;
		}
		
		/* 공지사항 */
		.ma_notice {width:100%; min-width:1260px; height:64px; margin-top:140px; border-top:1px solid #e0e0e0;}
		.ma_notice .not_m_wrap {width:1180px; margin:0 auto; padding-top:20px;}
		.ma_notice .not_m_wrap a {display:block}
		.ma_notice .not_m_wrap dl {}
		.ma_notice .not_m_wrap dl:after{content:'';display:table;clear:both;}
		.ma_notice .not_m_wrap dt {float:left; width:300px; color:#101010; font-weight:700; font-size:17px; line-height:24px}
		.ma_notice .not_m_wrap dd {float:left; padding-right:24px; color:#606060; font-size:15px; line-height:23px}
		.ma_notice .not_m_wrap dd time {color:#606060; font-size:15px; line-height:23px}
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
                    <strong>1월 1일(월)에 받을 수 있어요</strong>
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
				
				<c:forEach begin="0" end="5">
					<div class="item">
						<div class="img_wrap">
							<img src="${pageContext.request.contextPath}/resources/images/temp/review_temp0.jpg">
						</div>
						<div class="rank_txt">01</div>
						<div class="item_bottom">
							<div class="item_name">
								<span class="name_elps">토마토비프스튜</span>
							</div>
							<div class="item_price">
								<span class="price_elps">30,000원</span>
							</div>
							<div class="cart_btn_wrap">
								<button type="button" class="cart_btn"></button>
							</div>
						</div>
					</div>
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
										<strong class="tit">Product_name</strong>
										
										<div class="txt_wrap">
											my cookit
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
						<c:forEach begin="0" end="5">
							<li class="item">
								<div class="item_module">
									<div class="img_wrap"></div>
									<div class="txt_wrap"></div>
									<div class="act_btn_wrap"></div>
								</div>
							</li>
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
						<c:forEach begin="0" end="5">
							<li class="item">
								<div class="item_module">
									<div class="img_wrap"></div>
									<div class="txt_wrap"></div>
									<div class="act_btn_wrap"></div>
								</div>
							</li>
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

