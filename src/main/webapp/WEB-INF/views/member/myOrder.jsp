<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myOrder.css" rel="stylesheet">
	
	<title>Insert title here</title>
	
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
		
<!-- ===== ===== ===== left_menu ===== ===== ===== -->
			<c:import url="../temp/myPage_nav.jsp"></c:import>
			
<!-- ===== ===== ===== rigth_content ===== ===== ===== -->
			<div class="rigth_content">
				<h3>주문/배송 조회</h3>
				
				<div class="payment_id_info">
                    <div class="payment_date">
                        <dl>
                            <dt>주문일시</dt>
                            <dd>2021-10-26(화) 10:24</dd>
                        </dl>
                        <dl class="payment_id">
                            <dt>주문번호</dt>
                            <dd>20211026720806</dd>
                        </dl>
                    </div>
				</div>
				
				<div class="delibery_info">
					<h4>배송정보</h4>
					<div class="location_detail">
						<h4>배송지</h4>
						<div class="d_sec">
							<dl>
								<dt>
									받는분
								</dt>
								<dd>
									<ul>
										<li>
											<span>[04001] 서울 마포구 월드컵북로 21 풍성빌딩 2, 3, 4 층</span>
										</li>
										<li>
											<span>010-1234-5678</span>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
					
					<div class="product_detail">
						<div class="top_wrap">
<%-- 							<span class="cart_state ${paymentListDTOsJ.cart_state}"> --%>
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${paymentListDTOsJ.cart_state eq 'payment'}">결제완료</c:when> --%>
<%-- 									<c:when test="${paymentListDTOsJ.cart_state eq 'deliver'}">배송중</c:when> --%>
<%-- 									<c:when test="${paymentListDTOsJ.cart_state eq 'deliveryComplete'}">배송완료</c:when> --%>
<%-- 								</c:choose> --%>
<!-- 							</span> -->
							<span class="cart_state payment">결제완료</span>							
			        		<span class="cart_delivery_date">2021-10-28(목)
<%-- 			        			<c:choose> --%>
<%-- 			        				<c:when test="${paymentListDTOsJ.cart_state eq 'deliveryComplete'}">  --%>
<!-- 				       				도착 -->
<%-- 				       				</c:when> --%>
<%-- 				       				<c:otherwise> --%>
<!-- 				       				도착예정 -->
<%-- 				       				</c:otherwise> --%>
<%-- 				       			</c:choose> --%>
				       			도착예정
				       		</span>
						</div>
					</div>
				</div>
				
			</div>

		</div>
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</body>
</html>