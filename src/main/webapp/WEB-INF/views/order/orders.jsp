<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/order/orders.css" rel="stylesheet">
	
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
				<h2>주문하기</h2>
				<ol class="step">
					<li class="step01">
						<span>장바구니</span>
					</li>
					<li class="step02 on">
						<span>주문/결제</span>
					</li>
					<li class="step03">
						<span>주문완료</span>
					</li>
				</ol>
			</div>
			
<!-- ===== ===== ===== order_content ===== ===== ===== -->
			<div class="order_content">
			
				<!-- 주문자 -->
				<div class="order_member">
					<div class="h_wrap">
						<h3>주문자</h3>
					</div>
					
					<dl>
						<dt>
							<label for="member_name">이름</label><span class="bul_req"></span>
						</dt>
						<dd>
							<div class="input_wrap">
								<input type="text" class="txt" id="member_name" name="member_name" maxlength="10" value="${member.member_name}">
							</div>
						</dd>
					</dl>
					
					<dl class="phone">
						<dt>
							휴대폰<span class="bul_req"></span>
						</dt>
						<dd>
							<div class="input_mobile_num" data-member_phone="${member.member_phone}">
								<div class="input_wrap dis">
									<select disabled="" id="member_phone0">
										<option value="010" selected="">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
										<option value="050">050</option>
										<option value="0501">0501</option>
										<option value="0502">0502</option>
										<option value="0503">0503</option>
										<option value="0504">0504</option>
										<option value="0505">0505</option>
										<option value="0507">0507</option>
										<option value="0508">0508</option>
										<option value="0509">0509</option>	
									</select><span class="ico_arr"></span>
								</div>
								
								<div class="input_wrap dis">
									<input type="text" class="txt" id="member_phone1" value="0000" disabled="">
								</div>
								
								<div class="input_wrap dis">
									<input type="text" class="txt" id="member_phone2" value="0000" disabled="">
								</div>
								
							</div>
						</dd>
					</dl>
				</div>
				<!-- //주문자 -->
				<!-- 배송정보 -->
				<div class="delivery_info">
					<div class="h_wrap">
						<h3>배송정보</h3>
					</div>
					<div class="info_content">
						<div class="delivery_location_wrap">
							<div class="delivery_location">
								<h4>배송지</h4>
							</div>
							<div class="location_detail">
								<a href="javascript:;" class="btn_link" onclick="openDlvdPop(this);">수정/변경</a>
									<dl>
										<dt>
											<strong>default_address</strong>
											<span>(기본배송지)</span>
										</dt>
										<dd>
											<ul>
												<li> 	
													<span>[04001] 서울 마포구 월드컵북로 21 풍성빌딩 2, 3, 4 층</span>
												</li>
												<li>
													<span>010-1234-5678</span>
												</li>
												<li class="method">
													<em>새벽배송</em>
													<div class="detail">
														<span>공동현관 비밀번호 있음 <span>#1234#</span></span>
														<span>배송완료 메시지 <span>오전7시</span></span>
													</div> 
												</li>
											</ul>
										</dd>
									</dl>
							</div>
						</div>
						
						<!-- ===== ===== ===== loop I start ===== ===== ===== -->
						<c:set var="tempDate"></c:set>
						<c:forEach var="cartListDTOsI" items="${cartListDTOs}">
						<c:if test="${tempDate ne cartListDTOsI.cart_delivery_date}">
						
						<div class="prd_detail_wrap">
							<div class="recieve_date">
								<strong>${cartListDTOsI.cart_delivery_date} 도착예정</strong>
								<span class="delivery_price" data-delivery_price="0">배송비 +0원</span>
							</div>
							<div class="prd_list">
								<ul>
									<!-- ===== ===== ===== loop J start===== ===== ===== -->
									<c:set var="prd_total_payment">0</c:set>
									<c:forEach var="cartListDTOsJ" items="${cartListDTOs}">
									<c:if test="${cartListDTOsI.cart_delivery_date eq cartListDTOsJ.cart_delivery_date}">
									
									<li>
										<div class="prd_info">
										
											<div class="img_wrap">
												<img src="/mp/resources/upload/menu/main/${cartListDTOsJ.product_id}/${cartListDTOsJ.product_file_name}" alt="">
											</div>
											
											<div class="info_wrap">
												<span class="product_name">${cartListDTOsJ.product_name}</span>												
												<span class="product_price"><fmt:formatNumber value="${cartListDTOsJ.product_price}" pattern="#,###"/>원</span>
											</div>
											
											<div class="quantity_wrap">
												<span class="cart_quantity">수량${cartListDTOsJ.cart_quantity}개</span>
											</div>
											
											<div class="price_wrap" data-price_wrap="${cartListDTOsJ.product_price * cartListDTOsJ.cart_quantity}">
												<fmt:formatNumber value="${cartListDTOsJ.product_price * cartListDTOsJ.cart_quantity}" pattern="#,###"/>원
											</div>
											
										</div>
									</li>
									
									</c:if>
									</c:forEach>
									<!-- ===== ===== ===== loop J end===== ===== ===== -->
								</ul>
							</div>
						</div>
							
						<c:set var="tempDate">${cartListDTOsI.cart_delivery_date}</c:set>
						</c:if>
						</c:forEach>
						<!-- ===== ===== ===== loop I end===== ===== ===== -->
					</div>
				</div>
				<!-- //배송정보 -->
				<!-- 포인트 및 기타결제 -->
				<div class="point">
					<div class="h_wrap">
						<h3>포인트 및 기타결제</h3>
					</div>
					<ul>
						<li class="cj_one_point" data-member_point="${member.member_point}">
							<input type="text" class="txt use_point_input" placeholder="0원">
							
							<div class="check_wrap">
								<input type="checkbox" id="check0">
								<label for="check0">CJ ONE 포인트</label>								
								<span><fmt:formatNumber value="${member.member_point}" pattern="#,###"/>P</span>
							</div>
						</li>
						
						<li>
							<input type="text" class="txt" placeholder="0원" disabled="">
							
							<div class="check_wrap">
								<input type="checkbox" id="check1" disabled="">
								<label for="check1">쿡킷 기프트 카드</label>
								<span>0원</span>
							</div>
						</li>
						
						<li>
							<input type="text" class="txt" placeholder="0원" disabled="">
							
							<div class="check_wrap">
								<input type="checkbox" id="check2" disabled="">
								<label for="check2">CJ더마켓 기프트카드</label>
								<span>0원</span>
							</div>
						</li>
						
						<li>
							<input type="text" class="txt" placeholder="0원"  disabled="">
							
							<div class="check_wrap">
								<input type="checkbox" id="check3" disabled="">
								<label for="check3">CJ 기프트카드</label>
								<span>0원</span>
							</div>
						</li>
						
					</ul>			
				</div>
				<!-- //포인트 및 기타결제 -->
			</div>
			
<!-- ===== ===== ===== order_sticky ===== ===== ===== -->
			<div class="order_sticky">
			
				<div class="h_wrap">
					<h3>결제정보</h3>
				</div>
				
				<!-- 결제내역상세 -->
				<div class="payment_info">
					<dl>
						<dt>총 상품금액</dt>
						<dd class="total_product_price" data-total_product_price="">x원</dd>
					</dl>
					
					<dl>
						<dt>총 배송비</dt>
						<dd class="total_delivery_price" data-total_delivery_price="">+x원</dd>
					</dl>
					<div class="potin_info">
						<p>포인트 및 기타결제</p>
						<dl>
							<dt>CJ ONE 포인트</dt>
							<dd class="use_point" data-use_point="0">0원</dd>
						</dl>
						
						<dl>
							<dt>쿳킷 기프트카드</dt>
							<dd>0원</dd>
						</dl>
						
						<dl>
							<dt>CJ더마켓 기프트카드</dt>
							<dd>0원</dd>
						</dl>
						
						<dl>
							<dt>CJ 기프트카드</dt>
							<dd>0원</dd>
						</dl>
					</div>
					<dl class="total">
						<dt>총 결제금액</dt>
						<dd class="total_payment_price" data-total_payment_price="">0원</dd>
					</dl>
				</div>
				<!-- //결제내역상세 -->
				<!-- 결제동의 -->
				<div class="">
				</div>
				<!-- //결제동의 -->
				<!-- 결제하기 버튼 -->
				<button type="button" class="btn green marg" id="orderBtn"><span>결제하기</span></button>
				<!-- //결제하기 버튼 -->
			</div>
			
		</div>
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/mp/resources/js/order/orders.js"></script>	
						
<script type="text/javascript">
	let member_phone = $('.input_mobile_num').data('member_phone').split('-');
	$('#member_phone1').val(member_phone[1]);
	$('#member_phone2').val(member_phone[2]);
</script>

<script type="text/javascript">
</script>

</body>
</html>
