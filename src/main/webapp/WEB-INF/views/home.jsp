<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Index</title>
		<meta charset="utf-8">
		<c:import url="./temp/head.jsp"></c:import>
		<style>
			#test{
				flex:1;
			}
			.content_wrapper{
				width: 1180px;
				min-height: 100%;
				margin: 0 auto;
			}
			
			/* 페이지 타이틀 */
			.title{
				width: 100%;
				height: 40px;
				margin-top: 60px;
			}
			.title h1{
				font-size: 40px;
				font-weight: 700;
			}
			
			/* 카테고리 선택 부분 */
			.cate_wrap{
				width: 100%;
				height: 95px;
				border-bottom: 1px solid #e0e0e0;
			}
			.cate{
				width: 230px;
				height: 35px;
				margin-top: 40px;
				float: left;
			}
			.cate ul li{
				display: inline-block;
				margin-right: 15px;
			}
			.cate ul li:first-child{
				border-bottom: 2px solid black;
				padding-bottom: 4px;
			}
			.cate ul li a{
				font-size: 24px;
				color: black;
				text-decoration: none;
			}
			
			/* 서브타이틀 및 정렬하는 부분 */
			.filter_wrap{
				box-sizing: border-box;
				width: 100%;
				height: 120px;
				padding-top: 48px;
				position: relative;
			}
			.filter_wrap p:first-child{
				font-size: 28px;
				font-weight: 700;
			}
			.filter_wrap p{
				padding-top: 10px;
				font-size: 18px;
				font-weight: 700;
			}
			
			.sort_wrap{
				position: absolute;
				right: 0;
				bottom: 8px;
			}
			.sortc_wrap{
				display: inline-block;
			}
			.sortc_wrap a{
				text-decoration: none;
				color: black;
			}
			.sortc_wrap a::after{
				content: "|";
				padding-left: 8px;
			}
			
			/* 메뉴 보이는 부분 */
			.menu_wrap{
				width: 100%;
				margin-top: 30px;
			}
			
			.item_wrap{
				display: inline-grid;
				grid-template-columns: repeat(4, 1fr);
				column-gap: 36px;
				row-gap : 100px;
			}
			.item_box{
				width: 268px;
				height: 548px;
				display: flex;
				flex-direction: column;
			}
			
			/* 메뉴 세부 박스들 */
			.item_image{
				width: 100%;
				height: 320px;
			}
			.etc_info{ /* 인분 및 조리시간 */
				padding-top: 8px;
				font-size: 14px;
				color: #BDBDBD;
			}
			.item_title{ /* item 이름 */
				padding-top: 5px;
				font-size: 17px;
			}
			.item_price{
				padding-top: 10px;
				font-size: 24px;
			}
			.item_review{ /* 별점 및 리뷰갯수 박스 */
				width: 100%;
				height: 40px;
				margin-top: 15px;
				background-color: gray;
				opacity: 0.5;
			}
			.item_btnbox{
				width: 100%;
				height: 40px;
				margin-top: 20px;
				display: flex;
				flex-direction: row;
			}
			.menu_btn{
				margin-right: 15px;
				width: 40px;
				height: 40px;
			}
			/* 메뉴안 페이저 부분 */
			.pager_wrap{
				width: 70%;
				height: 80px;
				margin: 130px auto 130px auto;
				background-color: lime;
				opacity: 0.5;
			}
			
			
			/* ======== 기능 관련 css ========*/
			
			/* 메뉴 클릭 (찜, 장바구니 버튼 제외) */
			.click_menu{
				cursor: pointer;
			}
			
		</style>
	</head>
	<body>
		<div class="wrapper">
			<c:import url="./temp/header.jsp"></c:import>
			
			
			
			<!-- Width: 1180px, 한칸: width: 268px height: 548px-->
			<div class="content_wrapper">

				<div class="title">
					<h1>COOKIT 메뉴</h1>
				</div>
				<div class="cate_wrap">
					<div class="cate">
						<ul>
							<li><a href="#">배송일별</a></li>
							<li><a href="#">테마별</a></li>
						</ul>
					</div>
				</div>
				<div class="filter_wrap">
					<p>안녕하세요! COOKIT의 메뉴들 입니다.</p>
					<p>COOKIT의 주문마감은 오전 7시입니다.</p>
					<div class="sort_wrap">
						<div class="sortc_wrap"><a href="#">신메뉴순</a></div>
						<div class="sortc_wrap"><a href="#">인기메뉴순</a></div>
						<div class="sortc_wrap"><a href="#">높은가격순</a></div>
						<div class="sortc_wrap"><a href="#">낮은가격순</a></div>
						<div class="sortc_wrap"><a href="#">만족도순</a></div>
					</div>
				</div>
				
				<!-- Menu Grid -->
				<div class="menu_wrap">
					<div class="item_wrap">
						<!-- 나중에 c:foreach 반복문 쓰기 -->
						<div class="item_box">
							<div class="click_menu"> <!-- div 버튼 만들기 -->
								<div class="item_image">
									<img alt="test" src="./resources/images/test_menu1.png">
								</div>
								<p class="etc_info">3인분 / 조리 20분</p>
								<div class="item_title">
									* 갈릭버터쉬림프
								</div>
								<div class="item_price">
									26,800원
								</div>
								<div class="item_review">
									<h3>별점하고 리뷰들개수</h3>
								</div>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<!-- c:foreach -->
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
						<div class="item_box">
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="./resources/images/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="./resources/images/cart_btn.png">
								</div>
							</div>
						</div>
					</div>
					<div class="pager_wrap">
					</div>
				</div>
			</div>
			
			
			
			<c:import url="./temp/footer.jsp"></c:import>
		</div>
	</body>
	
	<!-- ======= script area ======= -->
	<script type="text/javascript">
	
		<!-- .click_menu -->
		$(".click_menu").on("click", function() {
			
			location.href="menu_detail";
			/* location.href="menu_detail?prdNum";  => 나중에 DB연결 후 상품 번호 전달 */
			
		});
		
	</script>
</html> --%>
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
		
		/* 페이지 타이틀 */
		.title{
			width: 100%;
			height: 40px;
			margin-top: 60px;
		}
		.title h1{
			font-size: 40px;
			font-weight: 700;
		}
		
		/* 카테고리 선택 부분 */
		.cate_wrap{
			width: 100%;
			height: 95px;
			border-bottom: 1px solid #e0e0e0;
		}
		.cate{
			width: 230px;
			height: 35px;
			margin-top: 40px;
			float: left;
		}
		.cate ul li{
			display: inline-block;
			margin-right: 15px;
		}
		.cate ul li:first-child{
			border-bottom: 2px solid black;
			padding-bottom: 4px;
		}
		.cate ul li a{
			font-size: 24px;
			color: black;
			text-decoration: none;
		}
		
		/* 서브타이틀 및 정렬하는 부분 */
		.filter_wrap{
			box-sizing: border-box;
			width: 100%;
			height: 120px;
			padding-top: 48px;
			position: relative;
		}
		.filter_wrap p:first-child{
			font-size: 28px;
			font-weight: 700;
		}
		.filter_wrap p{
			padding-top: 10px;
			font-size: 18px;
			font-weight: 700;
		}
		
		.sort_wrap{
			position: absolute;
			right: 0;
			bottom: 8px;
		}
		.sortc_wrap{
			display: inline-block;
		}
		.sortc_wrap a{
			text-decoration: none;
			color: black;
		}
		.sortc_wrap a::after{
			content: "|";
			padding-left: 8px;
		}
		
		/* 메뉴 보이는 부분 */
		.menus_wrap{
			width: 100%;
			margin-top: 30px;
		}
		
		.item_wrap{
			display: inline-grid;
			grid-template-columns: repeat(4, 1fr);
			column-gap: 36px;
			row-gap : 100px;
		}
		.item_box{
			width: 268px;
			height: 548px;
			display: flex;
			flex-direction: column;
		}
		
		/* 메뉴 세부 박스들 */
		.item_image{
			width: 100%;
			height: 320px;
		}
		.etc_info{ /* 인분 및 조리시간 */
			padding-top: 8px;
			font-size: 14px;
			color: #BDBDBD;
		}
		.item_title{ /* item 이름 */
			padding-top: 5px;
			font-size: 17px;
		}
		.item_price{
			padding-top: 10px;
			font-size: 24px;
		}
		.item_review{ /* 별점 및 리뷰갯수 박스 */
			width: 100%;
			height: 40px;
			margin-top: 15px;
			background-color: gray;
			opacity: 0.5;
		}
		.item_btnbox{
			width: 100%;
			height: 40px;
			margin-top: 20px;
			display: flex;
			flex-direction: row;
		}
		.menu_btn{
			margin-right: 15px;
			width: 40px;
			height: 40px;
		}
		/* 메뉴안 페이저 부분 */
		.pager_wrap{
			width: 70%;
			height: 80px;
			margin: 130px auto 130px auto;
			background-color: lime;
			opacity: 0.5;
		}
		
		
		/* ======== 기능 관련 css ========*/
		
		/* 메뉴 클릭 (찜, 장바구니 버튼 제외) */
		.click_menu{
			cursor: pointer;
		}
	</style>	
	
</head>
<body>
<c:import url="./temp/boot_nav.jsp"></c:import>

<div class="wrapper">		
<!-- 여기에 페이지 작업 -->




	<!-- Width: 1180px, 한칸: width: 268px height: 548px-->
		<div class="content_wrapper">

			<div class="title">
				<h1>COOKIT 메뉴</h1>
			</div>
			<div class="cate_wrap">
				<div class="cate">
					<ul>
						<li><a href="#">배송일별</a></li>
						<li><a href="#">테마별</a></li>
					</ul>
				</div>
			</div>
			<div class="filter_wrap">
				<p>안녕하세요! COOKIT의 메뉴들 입니다.</p>
				<p>COOKIT의 주문마감은 오전 7시입니다.</p>
				<div class="sort_wrap">
					<div class="sortc_wrap"><a href="#">신메뉴순</a></div>
					<div class="sortc_wrap"><a href="#">인기메뉴순</a></div>
					<div class="sortc_wrap"><a href="#">높은가격순</a></div>
					<div class="sortc_wrap"><a href="#">낮은가격순</a></div>
					<div class="sortc_wrap"><a href="#">만족도순</a></div>
				</div>
			</div>
			
			<!-- Menu Grid -->
			<div class="menus_wrap">
				<div class="item_wrap">
					<!-- 나중에 c:foreach 반복문 쓰기 -->
					<div class="item_box">
						<div class="click_menu"> <!-- div 버튼 만들기 -->
							<div class="item_image">
								<img alt="test" src="./resources/images/test_menu1.png">
							</div>
							<p class="etc_info">3인분 / 조리 20분</p>
							<div class="item_title">
								* 갈릭버터쉬림프
							</div>
							<div class="item_price">
								26,800원
							</div>
							<div class="item_review">
								<h3>별점하고 리뷰들개수</h3>
							</div>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<!-- c:foreach -->
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
					<div class="item_box">
						<div class="item_image">
							<img alt="test" src="./resources/images/test_menu1.png">
						</div>
						<p class="etc_info">3인분 / 조리 20분</p>
						<div class="item_title">
							* 갈릭버터쉬림프
						</div>
						<div class="item_price">
							26,800원
						</div>
						<div class="item_review">
							<h3>별점하고 리뷰들개수</h3>
						</div>
						<div class="item_btnbox">
							<div class="menu_btn zzim_btn">
								<img alt="zzim" src="./resources/images/zzim_btn.png">
							</div>
							<div class="menu_btn cart_btn">
								<img alt="cart" src="./resources/images/cart_btn.png">
							</div>
						</div>
					</div>
				</div>
				<div class="pager_wrap">
				</div>
			</div>
		</div>

<!-- 여기까지 -->
<div class="push"></div>
</div>
<c:import url="./temp/boot_footer.jsp"></c:import>

	<!-- ======= script area ======= -->
	<script type="text/javascript">
	
		<!-- .click_menu -->
		$(".click_menu").on("click", function() {
			
			location.href="menu_detail";
			/* location.href="menu_detail?prdNum";  => 나중에 DB연결 후 상품 번호 전달 */
			
		});
		
	</script>
</body>
</html>
