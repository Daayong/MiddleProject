<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/cookitInfo.css" rel="stylesheet">
	
	<title>My쿡킷 - 집밥을 특별하게,쿡킷</title>
	
	<style>		
		.wrapper{
			position:relative;
			width:100%;
		}
		
		#container{
			min-height:100%;
			width:100%; min-width:1260px;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
	
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/boot_nav.jsp"></c:import>	
	<section id="container">
	<!-- 전체 영역  -->
	<div id="my_wrapper">
		<div class="top">
			<div class="intro_img_wrap">
				<img src="${pageContext.request.contextPath}/resources/images/etc/intro_cookit_0.jpg">
			</div>
		</div>
		<div id="content">
			<div class="bp" style="width:1180px; margin:0 auto;  ">
				<h2 class="tit">Brand Promise</h2>
				<strong class="major">
					'집밥'이라는 단어에는<br>가족을 이어주는 특별한 힘이 있습니다.
				</strong>
				<p class="txt">
					하지만 바쁘게 살고 있는 현대인들에게 매일 정성스럽게 집밥을 준비하는 것은 결코 쉽지 않은 일이죠.<br>
					그래서 우리는 생각했습니다."사람들이 요리하고 식사하는 방식이 바뀐다면 집밥이 조금 더 행복해지지 않을까?"<br>
					힘 안들이고 직접 요리할 수 있도록, 맛있는 음식으로 가족을 식탁으로 부르도록,<br>
					제철 재료로 맛을 낸 특별식을 집밥으로 즐길 수 있돍, 가족과의 행복한 시간만 남도록<br>
					모든 사람들이 셰프가 아니더라도 셰프처럼. 정성스럽게 준비된 식재료로 만든 요리키트로 쉽고 즐겁게<br>
					매일, 가족의 식탁에 특별한 집밥을 올려놓을 수 있게
				</p>
				<p class="txt">그래서 시작합니다.</p>
			</div>
		
			 <div class="type01">
				<div class="ck_img_wrap" >
					<div class="intro_cookit_dimmed" >					
						<img src="${pageContext.request.contextPath}/resources/images/etc/intro_cookit_1.jpg">
					</div>
					<div class="et">
					<div class="wrap">
					<div class="ck_txt_wrap">
					<h2 class="tit">신선한 재료</h2>
					<strong class="major">
						분야별 전문 연구진과<br>CJ의 엄격한 심사기준
					</strong>
					<p class="txt">
						나와 내 가족이 먹는다는 생각으로,<br>푸드 전문가 CJ의 노하우를 담아 원재료를 꼼꼼히 선별합니다.<br>
						식자재 유통 No.1 CJ 프레시웨이가 전국 각지의 신선한 제철<br>농/축/수산물을 찾아, CJ제일제당의 품질안전 전문가들이 국내에서<br>
						가장 까다로운 위생기준으로 빈틈없이 평가합니다.
					</p>
					<p class="txt">
						CJ가 엄선한 재료로,<br>내 가족에게는 최고만 주고 싶은 고객의 마음을 그대로 전합니다.
					</p>
					</div>
					<ul class="list_tp">
						<li class="tp01">
							<span class="sub_txt">식자재유통 NO.1 CJ프레시웨이</span>
							<strong>전국각지 신선한 제철재료</strong>
							<p>
								25명의 MD가 직접 발로 뛰며<br>산지의 제철재료를 찾습니다.
							</p>
						</li>
						<li class="tp02">
							<span class="sub_txt">14인의 품질안전 전문가</span>
							<strong>선별 재료의 꼼꼼한 평가</strong>
							<p>
								원료부터 제품 출고까지 전 단계를<br>6단계의 깐깐한 체크리스트로
								<br>평가합니다.
							</p>
						</li>
						<li class="tp03">
							<span class="sub_txt">철저한 위생 관리 프로세스</span>
							<strong>깨끗한 식재료 준비</strong>
							<p>
								채소는 꼼꼼히 손질하고<br>저온 유지로 준비합니다.
							</p>
						</li>
						<li class="tp04">
							<span class="sub_txt">식품 연구소와 패키징 센터</span>
							<strong>신선함을 전달하는 패키지</strong>
							<p>
								재료별 특성에 맞는 포장재를<br>적용하여 신선함을 높입니다.
							</p>
						</li>
					</ul>
					</div>
					</div>
				</div>	
			</div>		
			<div class="type02">
				<div class="intro_txt_wrap">
					<h2 class="tit">셰프가 만든 특별한 메뉴</h2>
					<strong class="major">
						국내 및 글로벌 특급 호텔 경력<br>최고의 셰프 11인의 메뉴 개발
					</strong>
					<p class="txt">
						국내 및 글로벌 특급 호텔 경력을 가진 한식, 양식 각 분야 최고의 셰프 11인이 메뉴를 고민합니다.<br>
						식감을 살리는 재료의 손질, 육수, 소스부터 메뉴의 지역적 특색까지 고려하는 셰프들의 깊은 고민을 통해<br>
						쿡킷의 새로운 메뉴가 만들어집니다.
					</p>
					<p class="txt">
						셰프의 노하우로 일상적인 집밥이 새로워지도록, 외식으로 먹던 특별식이 오늘 나의 집밥이 되도록,<br>
						누구나 쉽게 특별한 집밥을 요리할 수 있도록 매일 연구합니다.
					</p>
				</div>
				<div class="intro_img_wrap">
					<img src="${pageContext.request.contextPath}/resources/images/etc/intro_cookit_2.jpg">
				</div>
			</div>
			<div class="type03">
				<div class="intro_txt_wrap">
					<h2 class="tit">누구나 쉽고 즐겁게 요리할 수 있는 레시피</h2>
					<strong class="major">
						직접 맛보는 듯한 메뉴 영상과<br>나에게 맞춘 추천
					</strong>
					<p class="txt">
						특별한 메뉴에 딱 맞춘 쉬운 레시피로 모든 요리를 쉽고 즐겁게 할 수 있도록 만들어 줍니다.<br>
						요리 초보자도 따라 하기 쉬운 레시피카드는 물론 '보이는 맛'을 전하는 생생한 요리 영상으로 즐거운 요리 경험을 선사합니다.<br>
						15분만에 뚝딱 만드는 집밥 부터, 30분만에 만드는 특별한 메뉴까지 소스를 따로 만들지 않아도, 칼질을 못해도, 계량을 하지 않아도<br>
						요리에 딱 맞춘 쿡킷의 레시피만 따라 하면 어느새 근사한 요리가 완성됩니다.
					</p>
				</div>
				<div class="intro_movie_wrap">
					<video poster title="밥과 반찬 그리고 찌개가 끓는 영상" autoplay loop muted playsinline>
						<source src="${pageContext.request.contextPath}/resources/images/etc/intro.mp4" type="video/mp4">				
					</video>
				</div>
			</div>
			<div class="type04">
				<div class="intro_txt_wrap">
					<h2 class="tit">쉬운 주문 방법과 신선한 배송</h2>
					<strong class="major">
						내가 원하는 날, 새벽배송으로<br>만나는 신선한 재료
					</strong>
					<p class="txt">
						스마트폰만 있다면 원하는 날짜와 장소로 언제 어디서든 주문할 수 있습니다.<br>
						원물의 호흡까지 고려한 전용패키지에 담아 추운 겨울에도,<br>
						더운 여름에도 신선함을 그대로 전달합니다.
					</p>
					<p class="txt">
						국내 최대 물류 인프라를 가진 CJ대한통운을 통해 원하는 날의 새벽,<br>
						현관 앞에서 쿡킷을 만나실 수 있습니다.
					</p>
					<p class="txt">
						주 5일 배송(5일 내 고객 희망배송일 지정 가능)
					</p>
				</div>
			</div>
			<div class="type05">
				<div class="intro_txt_wrap">
					<h2 class="major">한달에 두번 만나는<br>신선하고 맛있는 신메뉴</h2>
				
					<p class="txt">
						2주에 한번씩 새롭게 업데이트되는 4가지 신메뉴로 날마다 새로운 집밥을 즐기세요!<br>
						신메뉴 알림을 신청하시면 SMS/카카오톡 또는 APP PUSH로 알림을 드립니다.
					</p>
					
					<a href="#" style="color:#008A00; text-decoration:underline;">신메뉴 알림 신청 ></a>
				</div>
				<div class="intro_img_wrap">
					<img src="${pageContext.request.contextPath}/resources/images/etc/intro_cookit_5.jpg">
				</div>
			</div>
			
					
					
		</div>
		
	</div>	
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

</body>
</html>