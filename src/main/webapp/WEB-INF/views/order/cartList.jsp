<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/order/cartList.css" rel="stylesheet">
	
	<title>Home</title>
	
	<style>		
		.wrapper{
			position:relative;
			width:100%;
		}

		#container{
			width:1180px;
			min-height:100%;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/boot_nav.jsp"></c:import>	
	<section id="container">
	
	
	
	
	
		<div class="content">
		
			<div class="top">
				<h2>장바구니</h2>
				<ol class="step">
					<li class="step01 on">
						<span>장바구니</span>
					</li>
					<li class="step02">
						<span>주문/결제</span>
					</li>
					<li class="step03">
						<span>주문완료</span>
					</li>
				</ol>
			</div>
			
			<div class="detail">
			
					
				<div class="getCartList">
					
				</div>
				
<!-- ===== ===== ===== kitchen_menu ===== ===== ===== -->
				<div class="kitchen_menu">
					<h3>다른 고객이 많이 구매한 메뉴</h3>
					
						<div class="slide_nav_wrap">
							<button type="button" class="btn_arrow prev" id="prev"></button>
							
							<em>1</em>/<strong>5</strong>
							
							<button type="button" class="btn_arrow next" id="next"></button>
						</div>
						
						<div class="slide_track">
							<c:forEach begin="0" end="9" var="i">
							<div class="slide_content">
								<div class="img_wrap">
									<img alt="" src="/mp/resources/images/temp/review_temp${i % 5}.jpg">
								</div>
								<div class="info">
									<span class="product_name">product_name</span>
									<span class="product_price">product_price (xx,xxx원)</span>
								</div>
							</div>	
							</c:forEach>						
						</div>
				</div>
				
				
			</div>			
		</div>
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/mp/resources/js/order/cartList.js"></script>

</body>
</html>
