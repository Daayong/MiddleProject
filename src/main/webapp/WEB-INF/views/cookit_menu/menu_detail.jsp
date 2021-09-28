
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Home</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		.wrapper{
			min-height:100%;
			margin-top:85px;
			margin-bottom:-290px;
			}
		.push{
			height:290px;		
			}
		.content_wrapper{
			width: 1190px;
			margin: 0 auto;
		}
		
		/* 상단 큰 박스 */
		.top_info{
			width: 1190px;
			display: flex;
			margin-top: 50px;
		}
		
		.left_con{
			width: 600px;
			display: flex;
			flex-direction: column;
		}
		.right_con{
			width: 500px;
			display: flex;
			flex-direction: column;
			margin-left: 80px;
			padding-top: 50px;
		}
		
		/* left_con 영역 */
		.image_slide{
			display: flex;
			flex-direction: row;
			margin-top: 10px;
		}
		.image_slide div{
			width: 90px;
			height: 90px;
			margin-right: 10px;
			background-color: blue;
			opacity: 0.5; /* 임시 박스 이미지들어가는곳임 */
		}
		.image_slide::before{
			content: "<";
			font-size: 90px;
		}
		.image_slide::after{
			content: ">";
			font-size: 90px;
		} /* 버튼 수정해야함. */
		
		.etc_info{
			width: 100%;
			height: 80px;
			margin-top: 10px;
		}
		
		/* right_con 영역 */
		
		/* 메뉴 상품 이름 타이틀 */
		.title_info{
		}
		.sub_title{
			font-size: 30px;
			font-weight: 700;
		}
		.title{
			font-size: 30px;
			font-weight: 700;
			margin-top: 10px;
		}
		.prd_origin{
			font-size: 30px;
			font-weight: 300;
			margin-top: 10px;
		}
		
		/* 조리법 정보 */
		.prd_cookinfo{
			border-bottom: 1px solid #D5D5D5;
			margin-top: 30px;
			padding-bottom: 20px;
			font-size: 16px;
		}
		.prd_cookinfo span::after{
			content: "|";
			color: #D5D5D5;
			padding-left: 10px;
		}
		.prd_cookinfo span:last-child::after {
			content: "※";
		}
		
		/* 상품 가격 */
		.prd_price{
			border-bottom: 1px solid #D5D5D5;
			margin-top: 20px;
			padding-bottom: 20px;
			font-size: 20px;
			font-weight: 700;
		}
		
		/* 추후 추가할 배송 및 쿠폰등등 */
		.addme{
			height: 100px;
			border-bottom: 2px solid black;
		}
		
		/* 상품 디테일 박스 */
		.detail_wrapper{
			width: 100%;
		}
		
		/* detail 메뉴 박스 상품정보 등등 */
		.detail_menubox{
			width: 100%;
			border-bottom: 1px solid #D5D5D5;
			position: sticky;
			background-color: white;
			z-index: 3;
			top:0;
		}
		.detail_menu{
			width: 1190px;
			margin: 0 auto;
		}
		.detail_menu ul li{
			display: inline-block;
			width: 195px;
			height: 64px;
			line-height: 62px;
			font-size: 20px;
			font-weight: 700;
			text-align: center;
		}
		.detail_menu ul li a{
			cursor: pointer;
		}
		
		/* detail_info 부분 설명 내용같은거 */
		.detail_info{
			width: 1190px;
			min-height: 100vh;
			margin: 0 auto;
			display: flex;
			flex-direction: row;
		}
		
		/* 상세설명, 정보, 리뷰, 배송문의 */
		.left_detail{
			width: 850px;
			display: flex;
			flex-direction: column;
			padding-right: 35px;
		}
		.description_box1{	
			width:100%;
			margin-top: 20px;
			height: 100px;
			text-align: center;
		}
		.description_box2 img{
			width: 100%;
			margin-top:20px;
		}
		
		/* 상세설명 오른쪽박스 장바구니, 선물하기?*/
		.right_detail{
			position: sticky;
			display: flex;
			flex-direction: column;
			z-index: 1;
			top: 64px;
			width: 340px;
			height: 910px;
			border-left: 1px solid #D5D5D5;
			border-right: 1px solid #D5D5D5;
		}
		.right_box1{
			width:100%;
			height:100px;
			border-bottom: 1px solid #D5D5D5;
		}
		.right_box2{
			width:100%;
			height:600px;
		}
		.right_box3{
			width:100%;
			height:210px;
			text-align: center;
			border-top: 1px solid #D5D5D5;
		}
		.prdCnt{
			margin-top: 80px;
		}
		.cart_btn{
			width: 200px;
			height: 50px;
			line-height: 50px;
			font-size: 20px;
			margin: 20px auto 0 auto;
			background-color: violet;
			opacity: 0.5;
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
						<img alt="in" src="./resources/images/menu/image_in1.png">
					</div>
					<div class="imgSlider_wrap">
						<div class="image_slide">
							<div></div>
							<div></div>
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
					<div class="etc_info">
						리뷰 및 레시피공유하는 박스
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
					<div class="">
					</div>
				</div>
			</div>
		</div>
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
				<div class="right_detail">
					<div class="right_box1">
					</div>
					<div class="right_box2">
					</div>
					<div class="right_box3">
						<div class="prdCnt">
							수량 0개 0원
						</div>
						<div class="cart_btn">
							장바구니 담기
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
	</script>
</body>
</html>
