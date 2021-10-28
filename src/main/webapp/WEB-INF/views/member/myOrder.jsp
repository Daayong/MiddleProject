<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/common.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/member/myOrder.css"
	rel="stylesheet">

<title>Insert title here</title>

<style>
.wrapper {
	position: relative;
	width: 100%;
}

#container {
	width: 1180px;
	min-height: 100%;
	margin: -117 auto -290;
	padding: 117 0 290;
}
</style>

</head>
<body>
	<div class="wrapper">
		<c:import url="../temp/boot_nav.jsp"></c:import>
		<section id="container">





			<div class="content">

				<!-- ===== ===== ===== left_menu ===== ===== ===== -->
				<c:import url="../temp/myPage_nav.jsp"></c:import>

				<!-- ===== ===== ===== rigth_content ===== ===== ===== -->
				<div class="rigth_content">
					<h3>주문/배송 조회</h3>

					<div class="payment_id_info">
						<div class="payment_date">
							<dl>
								<dt>주문일시</dt>
								<dd>${paymentListDTOs.get(0).payment_date}</dd>
							</dl>
							<dl class="payment_id">
								<dt>주문번호</dt>
								<dd>${paymentListDTOs.get(0).payment_id}</dd>
							</dl>
						</div>
					</div>

					<!-- ===== ===== ===== delibery_info ===== ===== ===== -->
					<div class="delibery_info">
						<h4>배송정보</h4>
						<div class="location_detail">
							<h4>배송지</h4>
							<div class="d_sec">
								<dl>
									<dt>${paymentListDTOs.get(0).recipient_name}</dt>
									<dd>
										<ul>
											<li><span>${paymentListDTOs.get(0).address}</span></li>
											<li><span>${paymentListDTOs.get(0).recipient_phone}</span>
											</li>
										</ul>
									</dd>
								</dl>
							</div>
						</div>


						<!-- ===== Loop I START ===== -->
						<c:set var="tempDeliveryDate"></c:set>
						<c:forEach var="paymentListDTOsI" items="${paymentListDTOs}">
							<c:if
								test="${tempDeliveryDate ne paymentListDTOsI.cart_delivery_date}">

								<div class="product_detail">

									<div class="top_wrap">
										<span class="cart_state ${paymentListDTOsI.cart_state}">
											<c:choose>
												<c:when test="${paymentListDTOsI.cart_state eq 'payment'}">결제완료</c:when>
												<c:when test="${paymentListDTOsI.cart_state eq 'deliver'}">배송중</c:when>
												<c:when
													test="${paymentListDTOsI.cart_state eq 'deliveryComplete'}">배송완료</c:when>
											</c:choose>
										</span> <span class="cart_delivery_date">${paymentListDTOsI.cart_delivery_date}
											<c:choose>
												<c:when
													test="${paymentListDTOsI.cart_state eq 'deliveryComplete'}"> 
				       				도착
				       				</c:when>
												<c:otherwise>
				       				도착예정
				       				</c:otherwise>
											</c:choose>
										</span>
									</div>


									<ul class="product_list">

										<!-- ===== Loop J START ===== -->
										<c:forEach var="paymentListDTOsJ" items="${paymentListDTOs}">
											<c:if
												test="${paymentListDTOsI.cart_delivery_date eq paymentListDTOsJ.cart_delivery_date}">

												<li>
													<div class="img_wrap">
														<img
															src="/mp/resources/upload/menu/main/${paymentListDTOsJ.product_id}/${paymentListDTOsJ.product_file_name}"
															alt="">
													</div>

													<div class="info_wrap">
														<span class="tit">${paymentListDTOsJ.product_name}</span><br>
														<span class="price"><fmt:formatNumber
																value="${paymentListDTOsJ.product_price * paymentListDTOsJ.cart_quantity}"
																pattern="#,###" />원</span> <span class="quantity">수량
															${paymentListDTOsJ.cart_quantity}개</span>
													</div>

													<div class="review_btn_wrap">
														<c:if
															test="${paymentListDTOsJ.cart_state eq 'deliveryComplete'}">
															<a href="../review/reviewWrite?cart_id=${paymentListDTOsJ.cart_id}" class="wirteReview"><span>리뷰작성</span></a>
														</c:if>
													</div>
												</li>

											</c:if>
										</c:forEach>
										<!-- ===== Loop J END ===== -->

									</ul>
								</div>

								<c:set var="tempDeliveryDate">${paymentListDTOsI.cart_delivery_date}</c:set>
							</c:if>
						</c:forEach>
						<!-- ===== Loop I END ===== -->
					</div>

					<!-- ===== ===== ===== payment_info ===== ===== ===== -->
					<div class="payment_info">

						<div class="payment_info_head">
							<h3>결제정보</h3>
						</div>

						<div class="payment_info_content">
							<div class="pay_how">
								<dl class="em">
									<dt>결제수단</dt>
									<dd>신용카드</dd>
								</dl>
							</div>
							<div class="payment_info_detail">
								<dl>
									<dt>총 상품금액</dt>
									<dd>
										<fmt:formatNumber
											value="${paymentListDTOs.get(0).payment_total_product_price}"
											pattern="#,###" />
										원
									</dd>
								</dl>
								<dl>
									<dt>총 배송비</dt>
									<dd>
										+
										<fmt:formatNumber
											value="${paymentListDTOs.get(0).payment_total_delivery_price}"
											pattern="#,###" />
										원
									</dd>
								</dl>
								<div class="detail_pay">
									<p>포인트 및 기타결제</p>
									<dl>
										<dt>CJ ONE 포인트</dt>
										<dd>
											-
											<fmt:formatNumber
												value="${paymentListDTOs.get(0).payment_use_point}"
												pattern="#,###" />
											원
										</dd>
									</dl>
									<dl>
										<dt>쿳킷 기프트카드</dt>
										<dd>-0원</dd>
									</dl>
									<dl>
										<dt>CJ더마켓 기프트카드</dt>
										<dd>-0원</dd>
									</dl>
									<dl>
										<dt>CJ 기프트카드</dt>
										<dd>-0원</dd>
									</dl>
								</div>
								<dl class="total">
									<dt>총 결제금액</dt>
									<dd>
										<fmt:formatNumber
											value="${paymentListDTOs.get(0).payment_total_payment_price}"
											pattern="#,###" />
										원
									</dd>
								</dl>
							</div>
						</div>

					</div>

					<!-- ===== ===== ===== btn_wrap ===== ===== ===== -->
					<div class="btn_wrap">
						<button type="button" class="btn green" id="list">
							<span>목록</span>
						</button>
					</div>

				</div>

			</div>





		</section>
		<c:import url="../temp/boot_footer.jsp"></c:import>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		$('#list').click(function() {
			$(location).attr('href', './myOrderList');
		});
	</script>

</body>
</html>