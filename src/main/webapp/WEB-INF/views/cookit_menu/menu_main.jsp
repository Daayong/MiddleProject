<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>쿡킷 메뉴 메인</title>
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
	</style>
	<link href="../resources/css/menu/menu_main.css" rel="stylesheet" />	
	
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

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
					<c:forEach items="${prdDTO}" var="prd">
						<div class="item_box">
							<div class="click_menu"> <!-- div 버튼 만들기 -->
								<input type="hidden" value="${prd.product_id}" id="product_id">
								<div class="item_image">
									<img alt="test" src="../resources/upload/menu/main/${prd.product_id}/${prd.product_name}.jpg">
								</div>
								<p class="etc_info">${prd.product_recipe}</p>
								<div class="item_title">
									${prd.product_name}
								</div>
								<div class="item_price">
									${prd.product_price}
								</div>
								<div class="item_review">
									<ul>
										<li></li>
										<li>리뷰 4,000</li>
									</ul>
								</div>
							</div>
							<div class="item_btnbox">
								<div class="menu_btn zzim_btn">
									<img alt="zzim" src="../resources/images/menu/zzim_btn.png">
								</div>
								<div class="menu_btn cart_btn">
									<img alt="cart" src="../resources/images/menu/cart_btn.png">
								</div>
							</div>
						</div>
						<!-- c:foreach -->
					</c:forEach>	
				</div>
				<div class="pager_wrap">
					<ul class="pager">
						<li class="pager_item"><a href="#">1</a></li>
					</ul>
				</div>
			</div>
		</div>

<!-- 여기까지 -->
<div class="push"></div>
</div>
<c:import url="../temp/boot_footer.jsp"></c:import>

<script src="../resources/js/menu/menu_js.js"></script>

</body>
</html>