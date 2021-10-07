<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/check.css" rel="stylesheet">
	<title>일반회원 약관동의 | CJ ONE</title>
	
	<style>		
		.html,body{height:100%}
		.wrapper{
			position:relative;
			width:100%;
		}
		#container{
			width:1060px;
			min-height:100%;
			margin:-90 auto -238;
			padding: 117 0 238;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/member_nav.jsp"></c:import>	
	<section id="container">
	
		<div class="cont_header" >
			<h1 class="h1_tit">회원 가입</h1>
			<P class="h_desc">
				라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~
			</P>
		</div>
		<div class="cont_area">
			<div class="member_join uni">
				<div class="step_join">
					<ul class="col4">
						<li class="step1 on">
							약관동의
							<span class="haze">진행 중</span>
						</li>
						<li class="step2">
							회원정보 입력
							<span class="haze">진행 전</span>
						</li>
						<li class="step3">
							가입완료
							<span class="haze">진행 전</span>
						</li>
					</ul>
				</div>
				<div class="agreement_sec">
					<div class="box_member">
						<h2 class="h2_tit">CJ ONE 서비스 이용약관 및 정보 활용 동의</h2>
						<div class="agreement_box">
							<p>
								CJ ONE 이용약관 등의 동의 절차를 통해 회원가입이 완료되었어도 각
								제휴 브랜드 사이트에서 통합 아이디를 사용하여 로그인 하시려면
								<strong class="em">각 브랜드에 대한 정보 제공 및 브랜드 이용약관에 대한
								동의를 거친 후 이용</strong>
								하실 수 있습니다.
							</p>
			<!-- 제휴 브랜드  -->
							<div class="allianceBrand_box">
								<h2 class="haze">CJ ONE 제휴 브랜드</h2>
								<div class="in_sec">
									<ul class="alliance_list">
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20190809_1724081.png" alt="CGV">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20191211_16ef2602d5451.png" alt="TVING">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20180914_1352121.png" alt="CJ문화재단">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20180910_1411221.png" alt="CHATCHON">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20191105_1610451.png" alt="티빙몰">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210827_17b86a5fb1071.png" alt="CJ더마켓">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20191007_1836371.png" alt="올리브영">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210510_17953c8f11841.png" alt="CJ온스타">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20190628_1544231.png" alt="쿡킷">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20190703_0846461.png" alt="CJ더마켓">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20180803_1422401.png" alt="CJ제일제당(이마트)">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20190820_1553051.png" alt="스타일온에어">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20171116_1540221.png" alt="MYCT">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210608_179ea51de4881.png" alt="N서울타워">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210608_179ea59d4f111.png" alt="더플레이스 다이닝">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210608_179ea5ff31341.png" alt="엔테라스">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210608_179ea654d5361.png" alt="엔버거">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20160811_0152481.png" alt="빕스">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20160901_1057571.png" alt="뚜레쥬르">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20160811_0202191.png" alt="계절밥상">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20160811_0224521.png" alt="제일제면소">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20190718_1653551.png" alt="더플레이스">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20210929_17c2f1854d751.png" alt="더스테이크하우스">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20160811_0241291.png" alt="CJ푸드월드">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20160811_0303271.png" alt="주스 솔루션">
											</a>
										</li>
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath}/resources/images/cj_brand_logo/20180803_1401051.png" alt="CJ대한통운">
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
			<!-- 약관 동의  -->
						<div class="agreement_clause">
							<div class="check_all">
								<a href="#" class="btn btn_em" data-control="checkAll" data-handler>전체 동의</a>
							</div>
					<!--  필수 약관  -->		
							<div class="item_box case">
								<h3 class="h5_tit">CJ ONE 서비스 이용약관 (필수)</h3>
								<div class="clause_box" tabindex="0">
									<div id=polView>
										<div id="polViewnew">
											<p>
												<strong>제1장 총칙</strong>
												<br>
												<br>
												<strong>제1조 (목적)</strong>
												<br>
												<br>
												본 약관은 씨제이올리브네트윅스(주)(이하 "당사"라 함)가 제공하는 CJ
												ONE(이하 "CJ ONE"이라 함) 서비스 이용과 관련하여 당사와 회원의 제반 권리,
												의무, 관련 절차 등을 규정하는데 그 목적이 있습니다.
											</p>
											<p>
												<strong>제 2조 (용어의 정의)</strong>
												<br>
												<br>
												본 약관에서 사용하는 주요 용어의 정의는 다음과 같습니다.							
											</p>
										</div>
									</div>
								</div>
									<p class="s_txt">
									이용자는 CJ ONE 서비스 이용약관 에 대한 동의를 거부할 권리가 있으나,
									<strong class="em">미 동의 시 회원가입을 하실 수 없습니다.</strong>
									</p>
									<a href="#" class="btn btn_sm view_all">전문보기</a>
									<div class="radio_agreement">
										<span class="radio_btn case" data-skin="accept" data-checked-text="선택됨" data-unchecked-text="미선택됨">
											<a href="#">
												<span class="haze">미동의<span>선택됨</span></span>
											</a>
											<span class="hide">
												<span class="haze">미동의<span>선택불가</span></span>										
											</span>
											<input type="radio" class="chk" id="svcuse_agr_typ_cd_0_disagree" name="svcuse_agr_typ_sd_0" checked="checked">
											<label for="svcuse_agr_typ_cd_0_disagree">
												<span class="ico"></span>
												미동의
											</label>
										</span>
										<span class="radio_btn case" data-skin="accept" data-checked-text="선택됨" data-unchecked-text></span>
									</div>
								</div>
							
							
							
							<div class="item_box case"></div>
							<div class="item_box case"></div>
							<div class="item_box case"></div>
							<div class="item_box case"></div>
							<div class="item_box case"></div>
							<div class="item_box case"></div>
							<div class="item_box case"></div>
						</div>
					</div>			
					<div class="btn_sec col2">
						<button type="button" class="btn" id="btn_prev">취소</button>
						<button type="button" class="btn btn_em" id="btn_agree">확인</button>
					</div>				
				</div>
			</div>
		</div>
		
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>

</body>
</html>
