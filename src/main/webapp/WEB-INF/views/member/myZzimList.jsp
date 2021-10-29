<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myZzimList.css" rel="stylesheet">
	
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
				<div class="order_view shp_zzim">
					<h3>쇼핑찜</h3>
					<div class="top_sec">
						<span class="total">총 <span id="wishProdListCnt">0</span>개</span>
						<span class="side_info" id="delBtnArea">
							<button class="btn sm white ui_allSelect"><span>전체삭제</span></button>
						</span>
					</div>
					<div class="shp_zzim_list">
						<!-- 상품리스트 -->
						<div class="prd_list row">
							<ul id="wishProdListArea">
								<c:forEach items="${zzim}" var="zzim">
									<li>
										<div class="prd_mod">
											<div class="img_wrap">
												<img src="../resources/upload/menu/main/${zzim.product_id}/${zzim.product_name}.jpg">
											</div>
											<a>
												<div class="info_wrap">
													<div class="flag">
														<span class="tit">${zzim.product_name}</span>
														<span class="price">
															<fmt:formatNumber value="${zzim.product_price}" type="number" maxFractionDigits="3"/>원
														</span>
													</div>
												</div>
											</a>
											<div class="prd_price">
												<button type="button" class="btn sm white cart_btn">장바구니 담기</button>
											</div>
											<button type="button" class="prd_del"></button>
											
										</div>						
									</li>
								</c:forEach>
							</ul>
						</div>
						<!-- //상품리스트 -->
		
						<div class="pagination" id="wishProdListPageArea">
						</div>
					</div>
				</div>
			</div>

		</div>	
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	

	
</script>

</body>
</html>
