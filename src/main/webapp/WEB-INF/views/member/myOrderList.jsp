<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myOrderList.css" rel="stylesheet">
	
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
				
				
				<!-- ===== Loop I START ===== -->
				<c:set var="tempPaymentID"></c:set>
				<c:forEach var="paymentListDTOsI" items="${paymentListDTOs}">
				<c:if test="${tempPaymentID ne paymentListDTOsI.payment_id}">
				
				<div class="order_list">
				
					<div class="payment_date_wrap">
						<h4>주문일 ${fn:substring(paymentListDTOsI.payment_date, 0, 13)}</h4>
						<a href="javascript:;" class="odrDtlLink" data-payment_id="${paymentListDTOsI.payment_id}">주문상세</a>
			        </div>
			        
					<!-- ===== Loop J START ===== -->
					<c:set var="tempDeliveryDate"></c:set>
					<c:forEach var="paymentListDTOsJ" items="${paymentListDTOs}">
					<c:if test="${
						paymentListDTOsI.payment_id eq paymentListDTOsJ.payment_id &&
						tempDeliveryDate ne paymentListDTOsJ.cart_delivery_date}">
					
			        <div class="payment_info">
			        	<div class="delivery_info">
			        		<span>${paymentListDTOsJ.recipient_name}</span>
			        	</div>
			        	<div class="cart_info">
			        	
			        		<div class="top_wrap">
				        		<span class="cart_state ${paymentListDTOsJ.cart_state}">
				        			<c:choose>
				        				<c:when test="${paymentListDTOsJ.cart_state eq 'payment'}">결제완료</c:when>
				        				<c:when test="${paymentListDTOsJ.cart_state eq 'deliver'}">배송중</c:when>
				        				<c:when test="${paymentListDTOsJ.cart_state eq 'deliveryComplete'}">배송완료</c:when>
				        			</c:choose>
				        		</span>
				        		<span class="cart_delivery_date">${paymentListDTOsJ.cart_delivery_date}
				        			<c:choose>
				        				<c:when test="${paymentListDTOsJ.cart_state eq 'deliveryComplete'}"> 
				        				도착
				        				</c:when>
				        				<c:otherwise>
				        				도착예정
				        				</c:otherwise>
				        			</c:choose>
				        		</span>
			        		</div>
			        		
			        		<ul class="product_list">
			        		
								<!-- ===== Loop K START ===== -->
								<c:forEach var="paymentListDTOsK" items="${paymentListDTOs}">
								<c:if test="${
									paymentListDTOsI.payment_id eq paymentListDTOsK.payment_id &&
									paymentListDTOsJ.cart_delivery_date eq paymentListDTOsK.cart_delivery_date}">
								
			   	     			<li>									
									<div class="img_wrap">
										<img src="/mp/resources/upload/menu/main/${paymentListDTOsK.product_id}/${paymentListDTOsK.product_file_name}" alt="">
									</div>
										
									<div class="info_wrap">
										<span class="tit">${paymentListDTOsK.product_name}</span><br>
										<span class="price"><fmt:formatNumber value="${paymentListDTOsK.product_price * paymentListDTOsK.cart_quantity}" pattern="#,###"/>원</span>
										<span class="quantity">수량 ${paymentListDTOsK.cart_quantity}개</span>
									</div>
									
									<div class="btn_wrap">
										<c:if test="${paymentListDTOsK.cart_state eq 'deliveryComplete'}">
											<a href="../review/reviewWrite?cart_id=${paymentListDTOsK.cart_id}" class="wirteReview"><span>리뷰작성</span></a>
										</c:if>
									</div>										        				
			        			</li>
			        			
			        			</c:if>
								</c:forEach>
								<!-- ===== Loop K END ===== -->
			        		</ul>
			        		
			        	</div>
			        </div>
					
					<c:set var="tempDeliveryDate">${paymentListDTOsJ.cart_delivery_date}</c:set>
					</c:if>
					</c:forEach>
					<!-- ===== Loop J END ===== -->
				</div>
				
				<c:set var="tempPaymentID">${paymentListDTOsI.payment_id}</c:set>
				</c:if>
				</c:forEach>	
				<!-- ===== Loop I END ===== -->
			</div>

		</div>	
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$('.odrDtlLink').click(function(){
		let payment_id = $(this).data('payment_id');
		location.href = "./myOrder?payment_id=" + payment_id;		
	});
</script>

</body>
</html>
