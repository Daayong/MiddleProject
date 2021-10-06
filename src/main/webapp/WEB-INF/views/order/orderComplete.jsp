<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/order/orderComplete.css" rel="stylesheet">
	
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
					<li class="step02">
						<span>주문결제</span>
					</li>
					<li class="step03 on">
						<span>주문완료</span>
					</li>
				</ol>
			</div>
			
			<div class="order_fix">
			
<!-- ===== ===== ===== order_summary ===== ===== ===== -->
				<div class="order_summary">
					<i></i>
					<strong>주문이 완료되었습니다.</strong>
					<ul>
						<li>배송지 <span>1개</span></li>
						<li>주문번호 <span>20211006597213</span></li>
					</ul>
					<span class="etc">자세한 주문내역은 <strong>MY쿡킷 &gt; 나의 주문정보 &gt; 주문/배송 조회</strong>에서 확인하실 수 있습니다.</span>                   	
					<div class="stamp_info">
						<dl>
							<dt>스탬프 완성하고,  최대 쿡킷 신메뉴를 <strong>무료</strong>로 받으세요!</dt>
							<dd>배송 완료 후, 스탬프와 혜택이 지급됩니다.</dd>
						</dl>
						<a href="/pc/event/eventView?evntId=602452 " class="btn_link">My 스탬프 가기</a>
					</div>
				</div>
				
<!-- ===== ===== ===== tip ===== ===== ===== -->
				<div class="tip">
					<div class="head">
						<a href="#tip" class="ui_accord_toggle" data-open-text="내용 더 보기" data-close-text="내용 닫기">
							<div class="tit">쿡킷 TIP을 확인해주세요!</div>
						</a>
					</div>
					<div class="slide_area">
						<div class="slide_wrap">
							<div class="slide_trak_wrap">
								<div class="slide_trak">
									<div class="slide_content">
										<div class="item">
											<i class="num">1</i>
											<strong>은색 보냉백을<br>확인해 주세요!</strong>
											<p>생선, 새우, 고기 등 냉동제품은 신선도<br>유지를 위해 은색의 보냉백에 담아 배송됩니다.</p>
											<img src="/mp/resources/images/op/img_tip01.png" alt="">
										</div>
									</div>
									<div class="slide_content">
										<div class="item">
											<i class="num">2</i>
											<strong>오일, 분말, 소스는<br>뒷면을 확인해주세요!</strong>
											<p>뒷면에 상세정보가 담겨있습니다.<br>조리전 확인해 주세요.</p>
											<img src="/mp/resources/images/op/img_tip04.png" alt="">
										</div>
									</div>
									<div class="slide_content">
										<div class="item">
											<i class="num">3</i>
											<strong>주문변경은 배송일 전일 <br>7시전까지만 가능해요</strong>
											<p>배송일, 배송지 변경은 [My쿡킷 &gt;<br>주문/배송조회]에서 직접 하실 수 있습니다.</p>
											<img src="/mp/resources/images/op/img_tip02.png" alt="">
										</div>
									</div>
									<div class="slide_content">
										<div class="item">
											<i class="num">4</i>
											<strong>배송시간은<br>전일 PM10시~AM7시입니다.</strong>
											<p>전일 저녁 배송되더라도 아침까지 품질에<br>문제없도록 보냉포장하여 배송되오니 안심하세요.</p>
											<img src="/mp/resources/images/op/img_tip03.png" alt="">
										</div>
									</div>
									<div class="slide_content">
										<div class="item">
											<i class="num">5</i>
											<strong>깊이가 있는<br>궁중팬이 좋아요!</strong>
											<p>찹스테이크 등 오일에 볶는 메뉴는<br>오일이 튀는 걸 조금 방지할 수 있습니다.</p>
											<img src="/mp/resources/images/op/img_tip05.png" alt="">
										</div>
									</div>
								</div>
							</div>
							
							<div class="slide_nav_arrow">
								<div class="arr_area">
									<button type="button" class="btn_arrow prev"></button>
									<button type="button" class="btn_arrow next"></button>
								</div>
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
