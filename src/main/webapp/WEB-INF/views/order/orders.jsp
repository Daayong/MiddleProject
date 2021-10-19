<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/order/order.css" rel="stylesheet">
	
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
							<div class="input_mobile_num">
								<div class="input_wrap dis">
									<select name="odrrMblNo1" disabled="" id="odrrMblNo1">
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
									<input type="text" class="txt" id="input_name"
										name="odrrMblNo2" value="1234" title="휴대폰 중간 4자리"
										placeholder="" maxlength="4" disabled="">
								</div>
								
								<div class="input_wrap dis">
									<input type="text" class="txt" id="input_name"
										name="odrrMblNo3" value="5678" title="휴대폰 끝 4자리"
										placeholder="" maxlength="4" disabled="">
								</div>
								
							</div>
						</dd>
					</dl>
				</div>
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
						<div class="prd_detail_wrap">
							<div class="recieve_date">
								<strong>10-14(목) 도착예정</strong>
								<span>배송비 +3,000원</span>
							</div>
							<div class="prd_list">
								<!-- ============================== -->
								<ul>
									<li>
										<div class="prd_info">
										
											<div class="img_wrap">
												<img src="//img.cjcookit.com/images/file/product/232/20211014115419267.jpg"	alt="">
											</div>
											
<!-- 											<div class="info_wrap"> -->
<!-- 												<span class="tit mt_elps">product_name</span> <span class="price">product_price원</span> -->
<!-- 											</div> -->
											
<!-- 											<div class="prd_quantity"> -->
<!-- 												<span class="num prd_num">cart_quantity</span> -->
<!-- 											</div> -->
											
<!-- 											<div class="prd_price"> -->
<!-- 												price * quantity원 -->
<!-- 											</div> -->
										</div>
									</li>
								</ul>
								<!-- ============================== -->
							</div>
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
