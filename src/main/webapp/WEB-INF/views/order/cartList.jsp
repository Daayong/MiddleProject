<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
						<span>주문결제</span>
					</li>
					<li class="step03">
						<span>주문완료</span>
					</li>
				</ol>
			</div>
			
			<div class="detail">
			
<!-- ===== ===== ===== prd_select ===== ===== ===== -->
				<div class="prd_select">
					<div class="chk_wrap">
						<input type="checkbox" id="all_select" class="all_select">
						<label for="all_select">총 2/2개</label>
					</div>
					<button type="button" class="btn_sm_white ui_allDelete" data-del-type="c"><span>선택삭제</span></button>
					<button type="button" class="btn_sm_white ui_allDelete" data-del-type="s"><span>품절/마감 삭제</span></button>
				</div>
				
<!-- ===== ===== ===== detail_info ===== ===== ===== -->
				<div class="detail_info">
				</div>				
				
<!-- ===== ===== ===== kitchen_menu ===== ===== ===== -->
				<div class="kitchen_menu">
					<h3>다른 고객이 많이 구매한 메뉴</h3>
					<div class="slide_wrap">
					
						<div class="slide_nav_arrow">
							<button type="button" class="btn_arrow prev" id="prev" style="display: block;">
							</button>
							<button type="button" class="btn_arrow next" id="next" style="display: block;">
							</button>
						</div>
						
						<div class="slide_trak">
						</div>
						
					</div>
				</div>
				
				
			</div>			
		</div>
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

</body>
</html>
