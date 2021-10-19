<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<title>쿡킷 메뉴 메인</title>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
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
					</ul>
				</div>
				<div class="date_wrap">
					<ul>
						<li class="dates date_all"><a href="menu_main">전체</a></li>
						<li class="date date1" value=""></li>
						<li class="date date2" value=""></li>
						<li class="date date3" value=""></li>
						<li class="date date4" value=""></li>
						<li class="date date5" value=""></li>
					</ul>
				</div>
			</div>
			<div class="filter_wrap">
				<p><span class="get_month1"></span>월<span class="get_date1"></span>일 ~ <span class="get_month2"></span>월<span class="get_date2"></span>일 배송가능한 메뉴입니다.</p>
				<p>COOKIT의 주문마감은 오전 7시입니다.</p>
				<div class="sort_wrap">
					<div class="sortc_wrap">
						<div class="sortc_check add"></div>
						<button type="button" class="sortc_btn" value="sort_new"><span>신메뉴순</span></button>
					</div>
					<div class="sortc_wrap">
						<div class="sortc_check"></div>
						<button type="button" class="sortc_btn" value="sort_pop"><span>인기메뉴순</span></button>
						</div>
					<div class="sortc_wrap">
						<div class="sortc_check"></div>
						<button type="button" class="sortc_btn" value="sort_up"><span>높은가격순</span></button>
					</div>
					<div class="sortc_wrap">
						<div class="sortc_check"></div>
						<button type="button" class="sortc_btn" value="sort_down"><span>낮은가격순</span></button>
					</div>
					<div class="sortc_wrap">
						<div class="sortc_check"></div>
						<button type="button" class="sortc_btn" value="sort_rating"><span>만족도순</span></button>
					</div>
				</div>
			</div>
			
			<!-- Menu Grid -->
			<div id="menus_wrap">
				<div id="item_wrap">
					<!-- 나중에 c:foreach 반복문 쓰기 -->
					<c:forEach items="${prdDTO}" var="prd">
						
						<c:choose>
							<c:when test="${prd.product_state eq '품절'}">
								<div class="item_box">
									<div class="click_menu_soldout"> <!-- div 버튼 만들기 -->
										
										
										
										<input type="hidden" value="${prd.product_id}" id="product_id">
										
										<div class="item_image">
											<div class="soldout_txt">품절</div>
											<img alt="test" src="../resources/upload/menu/main/${prd.product_id}/${prd.product_name}.jpg">
										</div>
										<p class="etc_info">${prd.product_recipe}</p>
										<div class="item_title">
											*${prd.product_name}
										</div>
										<div class="item_price">
											<fmt:formatNumber value="${prd.product_price}" type="number" maxFractionDigits="3"/>원
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
											
										</div>
										<div class="menu_btn cart_btn">
											
										</div>
									</div>
								</div>
							</c:when>
								<c:when test="${prd.product_state eq '주문마감'}">
								<div class="item_box">
									<div class="click_menu_soldout"> <!-- div 버튼 만들기 -->
										
										
										
										<input type="hidden" value="${prd.product_id}" id="product_id">
										
										<div class="item_image">
											<div class="soldout_txt">주문마감</div>
											<img alt="test" src="../resources/upload/menu/main/${prd.product_id}/${prd.product_name}.jpg">
										</div>
										<p class="etc_info">${prd.product_recipe}</p>
										<div class="item_title">
											*${prd.product_name}
										</div>
										<div class="item_price">
											<fmt:formatNumber value="${prd.product_price}" type="number" maxFractionDigits="3"/>원
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
											
										</div>
										<div class="menu_btn cart_btn">
											
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div class="item_box">
									<div class="click_menu"> <!-- div 버튼 만들기 -->
									
										<input type="hidden" value="${prd.product_id}" id="product_id">
										
										<div class="item_image">
											<img alt="test" src="../resources/upload/menu/main/${prd.product_id}/${prd.product_name}.jpg">
										</div>
										<p class="etc_info">${prd.product_recipe}</p>
										<div class="item_title">
											*${prd.product_name}
										</div>
										<div class="item_price">
											<fmt:formatNumber value="${prd.product_price}" type="number" maxFractionDigits="3"/>원
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
											
										</div>
										<div class="menu_btn cart_btn">
											
										</div>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						
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
<script type="text/javascript">
	let today = new Date();
	let last_date = new Date(today.getFullYear(), today.getMonth()+1, 0);
	
	
	let week = ["일", "월", "화", "수", "목", "금", "토"];
	
/* 	let year = today.getFullYear();
	let month = today.getMonth() + 1;
	let day = parseInt(today.getDay()); */
	let a = parseInt(today.getDay());
	let b = parseInt(today.getDate());	
	let value = "";
	/* if(a >= 5 || a == 0){
		for(var i=1; i<6; i++){
			
			if(b > parseInt(last_date.getDate())){
				b = 1;
			}
			
			today.setDate(b + (2 + 7 - a) % 7);
			
			b = b + 1;
			
			$(".date" + i).html('<p>' + week[today.getDay()] + '</p><p>' + today.getDate() + '</p>');
			value = today.getFullYear().toString() + (today.getMonth() + 1).toString() + today.getDate().toString();
			$(".date" + i).val(value);
		}
	}else{
		for(var i=1; i<6; i++){
			
			if(b > parseInt(last_date.getDate())){
				b = 1;
			}
			
			today.setDate(b + (2 - a) % 7);
			
			b = b + 1;
			
			$(".date" + i).html('<p>' + week[today.getDay()] + '</p><p>' + today.getDate() + '</p>');
			value = today.getFullYear().toString() + (today.getMonth() + 1).toString() + today.getDate().toString();
			$(".date" + i).val(value);
		}
	} */
	
	for(var i=1; i<6; i++){
		
		today.setDate(b + 2);
		
		b = b + 1;
		
		if(parseInt(today.getDay()) == 0 || parseInt(today.getDay()) == 1){
			i--;
			continue;
		}else{
			$(".date" + i).html('<p>' + week[today.getDay()] + '</p><p>' + today.getDate() + '</p>');
			value = today.getFullYear().toString() + (today.getMonth() + 1).toString() + today.getDate().toString();
			$(".date" + i).val(value);		
		}
		
		if(i == 1){
			$(".get_month1").text(today.getMonth()+1);
			$(".get_date1").text(today.getDate());
		}
		if(i == 5){
			$(".get_month2").text(today.getMonth()+1);
			$(".get_date2").text(today.getDate());
		}
	}
	
</script>

</body>
</html>