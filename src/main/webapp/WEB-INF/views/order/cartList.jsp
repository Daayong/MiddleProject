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
			
<!-- ===== ===== ===== prd_select ===== ===== ===== -->
				<div class="prd_select">
					<div class="chk_wrap">
						<input type="checkbox" id="all_select" class="all_select">
						<label for="all_select" data-size="${cartListDTOs.size()}">총 x/${cartListDTOs.size()}개</label>
					</div>
					<button type="button" class="btn_sm_white ui_allDelete" data-del-type="c"><span>선택삭제</span></button>
					<button type="button" class="btn_sm_white ui_allDelete" data-del-type="s"><span>품절/마감 삭제</span></button>
				</div>
				
<!-- ===== ===== ===== detail_info ===== ===== ===== -->
				<div class="detail_info">
					
					<!-- loop start -->
					<c:set var="tempDate"></c:set>
					<c:forEach var="cartListDTOsI" items="${cartListDTOs}">
					<c:if test="${tempDate ne cartListDTOsI.cart_delivery_date}">
						
						<div class="detail_info_content">
						
							<div class="delivery_date" id="">
								<div class="check_wrap">
									<input type="checkbox" id="delivery_date${cartListDTOsI.cart_delivery_date}">
									<label for="delivery_date${cartListDTOsI.cart_delivery_date}">${cartListDTOsI.cart_delivery_date} 도착예정</label>
								</div>
								<!-- <a href="javascript:;" data-dlv-dt="20211008" class="btn_link chgDlvDt">배송일 변경</a> -->
							</div>
							
							<div class="product_list">
								<ul>
									<!-- loop start -->
									<c:set var="prd_total_payment">0</c:set>
									<c:forEach var="cartListDTOsJ" items="${cartListDTOs}" varStatus="status">
									<c:if test="${cartListDTOsI.cart_delivery_date eq cartListDTOsJ.cart_delivery_date}">

										<li>
											<div class="product_wrap">
											
												<div class="check_wrap">
													<c:if test="${cartListDTOsJ.cart_state eq 'checked'}">
														<input type="checkbox" id="${cartListDTOsJ.cart_id}" checked="checked">
														<label for="${cartListDTOsJ.cart_id}"></label>
													</c:if>
													<c:if test="${cartListDTOsJ.cart_state eq 'unChecked'}">
														<input type="checkbox" id="${cartListDTOsJ.cart_id}">
														<label for="${cartListDTOsJ.cart_id}"></label>
													</c:if>
													<c:if test="${cartListDTOsJ.cart_state eq 'deadLine'}">
														<input type="checkbox" id="${cartListDTOsJ.cart_id}" disabled="">
														<label for="${cartListDTOsJ.cart_id}"></label>
													</c:if>
												</div>
												
												<div class="img_wrap">
													<!-- 판매종료시 노출 -->
													<c:if test="${cartListDTOsJ.cart_state eq 'deadLine'}">
														<div class="Deadline">
															<span>마감</span>
														</div>
													</c:if>
													<img alt="" src="/mp/resources/upload/menu/main/${cartListDTOsJ.product_id}/${cartListDTOsJ.product_file_ori_name}">
												</div>
												
												<a href="javascript:;" class="product_link">
													<div class="info_wrap">
														<!-- 판매종료시 노출 -->
														<c:if test="${cartListDTOsJ.cart_state eq 'deadLine'}">
															<span class="sale_end">선택하신 배송일은 마감되었습니다.</span>
														</c:if>
														<!-- //플래그 -->
														<span class="name">${cartListDTOsJ.product_name}</span>
														<span class="price" data-price="${cartListDTOsJ.product_price}">
															<fmt:formatNumber value="${cartListDTOsJ.product_price}" pattern="#,###"/>원
														</span>
													</div>
												</a>
												
												<div class="prd_quantity">
													<div class="box_prd_quantity">
														<button type="button" class="btn_quantity minus" disabled=""></button>
														<span class="quantity" data-quantity="${cartListDTOsJ.cart_quantity}">${cartListDTOsJ.cart_quantity}</span>
														<button type="button" class="btn_quantity plus" disabled=""></button>
													</div>
												</div>
												
												<div class="prd_price" id="prd_price${status.index}" data-prd_price="">
													0원
												</div>
												
												<button type="button" class="prd_del" data-cart-seq="106911515"></button>
												
											</div>
										</li>
									</c:if>
									</c:forEach>
									<!-- loop end -->
								</ul>
							</div>
							
							<div class="prd_total_payment">
								<span class="prd_total_price" data-prd_total_price="">상품금액<strong>x원</strong></span>
								<span class="plus"></span>
								<span class="delivery" data-delivery_price="">배송비<strong>x원</strong></span>
								<span class="equal"></span>
								<span class="total" data-prd_total_payment="">총<strong>x원</strong></span>
							</div>						
						</div>
							
					<c:set var="tempDate">${cartListDTOsI.cart_delivery_date}</c:set>
					</c:if>
					</c:forEach>
					<!-- loop end -->
					
					<div class="total_payment">
						<span class="total_payment_price" data-total_payment_price="">총 상품금액<strong>x원</strong></span>
						<span class="minus"></span>
						<span class="discount">총 할인금액<strong>0원</strong></span>
						<span class="plus"></span>
						<span class="delivery" data-delivery="">총 배송비<strong>x원</strong></span>
						<span class="equal"></span>
						<span class="total">총 결제예정금액<strong>x원</strong></span>
					</div>
					
					<div class="btn_wrap">
						<button type="button" class="btn white presentBtn" data-min-odr-dt="20211012" data-min-odr-dt-nm="10월 12일"><span>선물하기</span></button>
						<button type="button" class="btn white orderChoiceBtn"><span>선택 주문하기</span></button>
						<button type="button" class="btn green orderBtn"><span>전체 주문하기</span></button>
					</div>
					
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
