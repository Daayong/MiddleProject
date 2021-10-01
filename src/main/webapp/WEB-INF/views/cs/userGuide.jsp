<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/userGuide.css" rel="stylesheet">

<html>
<head>

<script src="http://code.jquery.com/jquery-latest.js"></script>

	<title>고객행복센터 - 집밥을 특별하게, 쿡킷</title>
	
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		
		.wrapper{
			position:relative;
			width: 100%;	
		}
		
		#container{
			width: 1180px;
			min-height:100%;
			margin: -117 auto -290;
			padding: 117 0 290;
		}
	</style>	
	
</head>
<body>

<div class="wrapper">		

<c:import url="../temp/boot_nav.jsp"></c:import>
<!-- 여기에 페이지 작업 -->

	<section id="container">
	
	
		<div id="cs_content">
		
			<div class="cs_wrap">
				<h1 class="cs_title">고객행복센터</h1>
				
				<!-- tab -->
				<div class="tab_wrap">
					<ul class="tabs">
						<li><a href="${pageContext.request.contextPath}/cs/faqList"><span id="faq">FAQ</span></a></li>
						<li><a href="${pageContext.request.contextPath}/cs/noticeMain"><span id="nt">공지사항</span></a></li>
						<li class="on"><a href=" ${pageContext.request.contextPath}/cs/userGuide"><span id="ug" >새벽배송/이용안내</span></a></li>
					</ul>			
				</div>
				
				<!-- sub tab -->
				<div class="sub_tab_wrap">
                      <ul class="sub_tabs">
                          <li id="tab_sunshineInfo" class="tab_sub ch"><a href="javascript:;"><span>새벽배송<em class="hide">선택됨</em></span></a></li>
                          <li id="tab_orderInfo" class="tab_sub"><a href="javascript:;"><span>주문하기</span></a></li>
                          <li id="tab_giftInfo" class="tab_sub"><a href="javascript:;"><span>선물하기</span></a></li>
                          <li id="tab_cancelInfo" class="tab_sub"><a href="javascript:;"><span>취소/변경/반품</span></a></li>
                      </ul>
                  </div>
					
				<!-- 새벽배송 -->	
			
					<div class="cs_usep guide_01" id="view_sunshineInfo"style="display:block;">
                      <h2 class="hide">새벽배송</h2>
                      
                      <div class="banner">
                          <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_1.jpg" alt="내가 원하는 날, 새벽에 도착. 오늘 07시 이전 주문하면 내일 아침 집 앞에 딱!">
                      </div>

                      <div class="top_hd">
                          <h3 class="tit">새벽 배송 안내</h3>
                      </div>
                      <div class="dawn_p par_01">
                          <p class="txt_b">오전 7시이전에 쿡킷을 주문/결제완료해주시면, 정성껏 준비하여 다음날 새벽 고객님의 문 앞에 안전하게 배송해드립니다.
						           <br> *배송일자 별도 지정 가능
						 </p>

                          <div class="order_step">
                              <ul>
                                  <li>
                                      <i class="ico ico01"></i>
                                      <span class="txt">오전 7시 이전<br>주문/결제 완료</span>
                                  </li>
                                  <li>
                                      <i class="ico ico02"></i>
                                      <span class="txt">재료<br>준비/발송</span>
                                  </li>
                                  <li>
                                      <i class="ico ico03"></i>
                                      <span class="txt">다음날<br>새벽수령</span>
                                  </li>
                              </ul>
                          </div>

                          <!-- 안내문구 -->
                          
                          
                          <div class="btm_noti">
                              <p>주문 마감일 : 월/화/수/목/금 오전 7시</p>
                              <ul class="bul_list">
                                  <li class="bul_dot"><i class="bullet"></i> 토요일/일요일/공휴일은 주문 마감이 없습니다.
                                  </li>
                              </ul>

                              <p>배송 가능일 : 화/수/목/금/토 새벽</p>
                              <ul class="bul_list">
                                  <li class="bul_dot"><i class="bullet"></i> 일요일/월요일/공휴일 다음날은 배송이 없습니다.
                                  </li>
                              </ul>
                              
                              <p>배송 시간 : 선택한 배송일 오전 7시전</p>
                              <ul class="bul_list">
                                  <li class="bul_dot"><i class="bullet"></i> 일부 지역은 배송 전일 늦은 저녁에 배송될 수 있습니다. 모든 메뉴는 아침까지 제품의 품질에 문제 없도록 보냉포장하여 보내드리오니 안심하고 이용 부탁드립니다.
                                  </li>
                                  <li class="bul_dot"><i class="bullet"></i> 교통 및 기상 상황에 따라 지연될 수 있는 점에 대해 양해 부탁드립니다.
                                  </li>
                              </ul>
                              
                              <p>안내 및 주의사항</p>
                              <ul class="bul_list">
                                  <li class="bul_dot"><i class="bullet"></i> 고객님과 통화가 어려운 새벽에 배송되므로 현관출입방법 (공동현관비밀번호,택배함 위치 등)을 주문서에 기재해 주셔야 합니다.
                                  </li>
                                  <li class="bul_dot"><i class="bullet"></i> 배송 요청사항 미기재 및 오기재로 인해 배송이 어려운 경우 현관 앞 또는 경비실로 대응 배송될 수 있으며, 반송될 경우 취소/환불이 불가합니다.
                                  </li>
                                  <li class="bul_dot"><i class="bullet"></i> 회사, 관공서, 학교, 기숙사, 병원, 시장 등은 배송이 불가합니다.
                                  </li>
                              </ul>
                          </div>
                      </div>

                      <div class="top_hd">
                          <h3 class="tit">배송 가능 지역</h3>
                      </div>
                      <div class="dawn_p par_02">
                          <p class="txt_b">우리 집도 배송되나요?</p>
                          <p class="txt">
                              COOKIT의 배송 가능 지역은 서울,경기,인천,청주,대전,천안,아산,세종(일부지역 제외)이며 점차 확대될 예정입니다.<br>
                              주소 검색을 통해 배송 가능 여부를 확인해보세요!
                          </p>
							
							
					<!-- 새벽배송 주소확인 팝업창 -->		
                          <a href="#" class="rec_link"><span>배송 가능 여부 확인</span></a>

                          <!-- 안내문구 -->
                          <div class="btm_noti">
                              <p>배송비 안내</p>
                              <ul class="bul_list">
                                  <li class="bul_dot"><i class="bullet"></i> 기본 배송비는 3,000원이며 4만원 이상 구매 시 무료배송 가능합니다.
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
                        
                  
				<!-- 주문하기  -->	
				
					<div class="cs_usep guide_02" id="view_orderInfo" style="display:none;">
                        <h2 class="hide">주문하기</h2>
                        
                        <div class="banner">
                            <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_2.jpg" alt="원하는 메뉴와 배송일을 콕 찍어 쿡. 배송일 및 배송지를 자유롭게 선택할 수 있어요~">
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">메뉴 및 배송일 선택</h3>
                        </div>
                        <div class="order_p par_01">
                            <p class="txt_b">원하는 배송일을 선택하고 배송 가능한 메뉴를 확인하세요. 내가 선택한 배송일에 새벽 배송 받을 수 있습니다.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 상단 [COOKIT 메뉴]에서 배송일 별 배송 가능한 메뉴를 확인할 수 있습니다.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 배송일이 지정되지 않은 상태에서 [장바구니 담기] 버튼 클릭 시 배송 가능한 가장 빠른 날짜로 담기게 됩니다.
                                </li>
                            </ul>

                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_2_01.jpg" alt="">
                            </div>

                            <p class="txt_b">메뉴 상세화면에서는 원하는 배송일을 여러 개 선택하여 한 번에 담을 수 있습니다. </p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 특정 메뉴의 배송일을  여러 날로 주문하는 경우 편리합니다. 
                                </li>
                            </ul>

                           
                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_2_05.jpg" alt="">
                            </div>
                     
                            
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">장바구니</h3>
                        </div>
                        <div class="order_p par_02">
                            <p class="txt_b">장바구니에서 배송일별로 담긴 메뉴를 확인하고 주문해주세요.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 장바구니에 담긴 메뉴들이 배송일(도착일)을 기준으로 조회됩니다. 주문할 상품을 선택하신 후, [주문하기] 버튼을 클릭해주세요.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> [배송일 변경]을 클릭하시면 받는 날짜를 변경할 수 있습니다. <!-- 190611_수정 -->
                                </li>
                            </ul>

                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_2_02.jpg" alt="">
                            </div>
                            
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">결제 및 주문서 작성</h3>
                        </div>
                        <div class="order_p par_03">
                            <p class="txt_b">배송 가능 주소를 확인하고 새벽 배송을 위한 정보를 입력해주세요.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 회사, 관공서, 학교, 기숙사, 병원, 시장 등은 배송이 불가합니다.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 고객님이 잠든 새벽시간에 배송완료 문자가 발송될 수 있습니다. 문자 전송 시간을 선택해 주세요.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 공동현관인 경우, 비밀번호 또는 수령방법을 꼭 기재해주셔야 합니다.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 새벽 배송 시, 고객님과 연락이 어려우므로 경비실 등으로 대응배송될 수 있으며, 배송 시 요청사항 미기재 및 오기재로 인해 반송될 경우 취소/환불이 불가합니다.
                                </li>
                            </ul>

                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_2_03.jpg" alt="">
                            </div>

                            <p class="txt_b">한번의 주문으로 여러 곳으로 나누어 보낼 수 있습니다.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 원하는 배송지 개수를 선택하고 각 배송지 정보와 배송지별 보낼 상품의 수량을 선택하여 주문서를 작성해주세요.
                                </li>
                            </ul>

                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_2_04.jpg" alt="">
                            </div>
                            
                        </div>

                    </div>
					
				<!-- 선물하기 -->
				
				
					<div class="cs_usep guide_03" id="view_giftInfo" style="display:none;">
                        <h2 class="hide">선물하기</h2>
                        
                        <div class="banner">
                            <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_3.jpg" alt="전화번호만 알면 선물을 보낼 수 있어요! 받는 분의 주소를 몰라도, 쿡킷 회원이 아니어도 선물이 가능해요!">
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">선물 보내기</h3>
                        </div>
                        <div class="present_p par_01">
                            <p class="txt_b">주소를 몰라도 전화번호만 입력하면 선물이 가능합니다.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 메뉴 상세보기 화면에서 [선물하기]를 클릭하면 선물 보내기 가능한 날짜가 조회됩니다.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> [선물하기] 버튼을 클릭하여 주문서 작성 화면으로 이동합니다.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 선물 받는 분의 전화번호와 메시지 입력 후 주문 및 결제를 완료하면 선물 보내기가 완료됩니다.
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 선물 보내기는 받는 분이 쿡킷 회원이 아니어도 가능합니다.
                                </li>
                            </ul>

                            <p class="txt_b">한번에 여러 메뉴를 선물하는 경우 장바구니를 이용해주세요</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 선물할 메뉴들을 장바구니에 담은 후  [선물하기] 버튼을 클릭하시고 위와 동일하게 주문 및 결제를 완료하시면 됩니다.
                                </li>
                            </ul>

                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_3_01.jpg" alt="">
                            </div>
                            
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">선물 받기</h3>
                        </div>
                        <div class="present_p par_02">
                            <p class="txt_b">선물 받는 분이 원하는 배송일로 변경할 수 있습니다.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 주문 및 결제가 완료되면 선물 받는 분께 SMS가 전송됩니다. 
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> SMS의 링크를 클릭하여 배송 받을 주소, 연락처, 새벽 배송을 위해 필요한 정보를 작성합니다.<br>[배송일 변경] 버튼을 클릭하여 원하는 배송일로 변경할 수 있습니다. 
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 배송 정보 입력이 완료되면 재료 준비 후 배송이 시작됩니다.
                                </li>
                            </ul>

                            <div class="order_step">
                                <ul>
                                    <li>
                                        <i class="ico ico01"></i>
                                        <span class="txt">선물 받는 분께<br>SMS 발송</span>
                                    </li>
                                    <li>
                                        <i class="ico ico02"></i>
                                        <span class="txt">배송 받을<br>주소 입력</span>
                                    </li>
                                    <li>
                                        <i class="ico ico03"></i>
                                        <span class="txt">재료 준비 및<br>배송</span>
                                    </li>
                                </ul>
                            </div>

                            <div class="btm_noti">
                                <p>주의사항</p>
                                <ul class="bul_list">
                                    <li class="bul_dot"><i class="bullet"></i> 선물 받는 분이  배송 정보 입력 마감 시간까지 정보를 입력하지 않을 경우 선물 주문은 자동 취소 됩니다.
                                    </li>
                                    <li class="bul_dot"><i class="bullet"></i> 배송 불가 지역일 경우 배송지를 변경하시거나 [선물 안받기] 버튼을 선택합니다.
                                    </li>
                                    <li class="bul_dot"><i class="bullet"></i> 선물 주문은 결제 후 선물 받는 분의 배송정보 확인 시점 차이로 인해 상품의 품질 등 배송이 불가능한 사유가 발생할 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">선물 내역</h3>
                        </div>
                        <div class="present_p par_03">
                            <p class="txt_b">쿡킷의 회원일 경우 MY쿡킷 &gt; 선물 내역에서  보낸 선물/받은 선물 내역을 조회할 수 있습니다.</p>
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 배송 현황과 메뉴의 레시피를 확인할 수 있습니다. 
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 단, 비회원일 때 받은 선물 내역은 조회할 수 없습니다. 
                                </li>
                            </ul>

                            <div class="use_img_wrap">
                                <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_sub_3_02.jpg" alt="">
                            </div>
                            
                        </div>

                    </div>
				
				<!-- 취소/변경/반품  -->
				
				
				<div class="cs_usep guide_01" id="view_cancelInfo" style="display:none;">
                        <h2 class="hide">취소/변경/반품</h2>
                        
                        <div class="banner">
                            <img src="${pageContext.request.contextPath}/resources/images/img_cs_use_4.jpg" alt="주문 마감 전, 배송 정보 변경이 가능해요. 원하는 배송일/배송지로 변경할 수 있어요">
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">변경/취소 안내</h3>
                        </div>
                        <div class="guide_p par_01">
                            <ul class="bul_b_list">
                                <li class="bul_b_dot"><i class="bullet"></i> 주문 마감 전까지는 배송지/배송일 변경, 결제수단(카드) 변경, 주문 취소가 가능합니다. 
                                	<a class="link_txt_green" href="#">변경/주문취소 바로가기</a>
                                	<!-- 주소 다시 설정 -->
                                	
                                </li>
                                <li class="bul_b_dot"><i class="bullet"></i> 주문 마감 이후, 주문 상태가 <strong>'재료준비'</strong>인 단계부터는 <strong>변경 및 취소가 불가</strong>합니다.
                                </li>
                            </ul>
                        </div>

                        <div class="top_hd">
                            <h3 class="tit">교환/반품/환불 안내</h3>
                        </div>
                        <div class="guide_p par_02">
                            <ol class="ol_multi">
                                <li class="li">
                                    <p class="txt_b">1. 신청 기간</p>
                                    <ul class="bul_b_list">
                                        <li class="bul_b_dot"><i class="bullet"></i> 상품 수령일로부터 7일 이내(냉장·냉동·신선제품은 수령일로부터 1~2일 이내)
                                        </li>
                                    </ul>
                                </li>
                                <li class="li">
                                    <p class="txt_b">2. 교환/반품 불가 안내</p>
                                    <ul class="bul_b_list">
                                        <li class="bul_b_dot"><i class="bullet"></i> 한정 수량 판매 방식으로 교환 시 품절이 발생할 수 있어 교환은 불가합니다.
                                        </li>
                                        <li class="bul_b_dot"><i class="bullet"></i> 냉장·냉동·신선제품으로 시간이 경과되면 상품의 가치가 훼손되기 쉬우므로 제품의 하자 이외의 이유로(단순변심 등) 인한 교환/반품은 불가합니다.
                                        </li>
                                        <li class="bul_b_dot"><i class="bullet"></i> 다음의 경우 교환/반품 신청기간 내에라도 취소/교환/반품이 불가합니다.
                                        </li>
                                    </ul>

                                    <div class="btm_noti">
                                        <ul class="bul_list">
                                            <li class="bul_dot"><i class="bullet"></i> 포장을 개봉하거나 상품의 일부를 취식한 경우
                                            </li>
                                            <li class="bul_dot"><i class="bullet"></i> 잘못된 보관 방법으로 변질된 경우
                                            </li>
                                            <li class="bul_dot"><i class="bullet"></i> 패키지 상품, 묶음 상품, 특가 상품의 부분 교환/반품을 원하는 경우
                                            </li>
                                            <li class="bul_dot"><i class="bullet"></i> 구성품 또는 사은품을 반납하지 않은 경우
                                            </li>
                                            <li class="bul_dot"><i class="bullet"></i> 냉장·냉동·신선제품에 대해 시간이 경과되어 상품 등의 가치가 현저히 감소한 경우
                                            </li>
                                            <li class="bul_dot"><i class="bullet"></i> 고객님의 주소 기입 오류, 임의 수취거부, 수취인 연락 부재로 인해 반송될 경우
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="li">
                                    <p class="txt_b">3. 반품 안내</p>
                                    <ul class="bul_b_list">
                                        <li class="bul_b_dot sub"><i class="bullet"></i> 제품의 하자 이외의 이유로 반품시에는 배송비가 부과됩니다.
                                            <div class="btm_noti">
                                                <ul class="bul_list">
                                                    <li class="bul_dot"><i class="bullet"></i> 반품 배송비 : 박스당 6,000원(왕복) 단, 남은 결제금액이 택배비 무료 기준 금액 이상인 경우 3,000원(편도) 부과
                                                    </li>
                                                    <li class="bul_dot"><i class="bullet"></i> 제품의 하자, 오배송 시 반품비 무료
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="bul_b_dot sub"><i class="bullet"></i> 배송된 제품에 하자가 있거나, 구성품 누락, 오배송 시 다음 절차에 따라 반품 신청이 가능합니다. (임의 반품 시, 처리불가)
                                            <div class="btm_noti">
                                                <ul class="bul_num_list">
                                                    <li>
                                                        <p>① <span class="num_txt">배송된 제품과 배송 상태 확인 후 냉장/냉동보관</span></p>
                                                    </li>
                                                    <li>
                                                        <p>② <span class="num_txt fc_black">	 문제사항 발견 시, 즉시 사진 촬영</span></p>
                                                        <ul class="bul_list">
                                                            <li class="bul_dot"><i class="bullet"></i> 사진만으로 제품 하자 판독이 어려운 경우  회수하여 검수 후, 처리 가능하므로 제품 보관
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <p>③ <span class="fc_black">고객행복센터로 사진을 첨부하여 문의</span></p>
                                                        <ul class="bul_list">
                                                            <li class="bul_dot"><i class="bullet"></i> COOKIT 사이트에서 [1:1문의]로 문의
                                                            </li>
                                                            <li class="bul_dot"><i class="bullet"></i> 고객행복센터 1668-1920로 전화 (평일 8:00~17:00, 토요일 8:00~12:00 / 점심시간 12:00~13:00)
                                                            </li>
                                                            <li class="bul_dot"><i class="bullet"></i> 고객행복센터 1668-1920로 문자 발송(주문번호, 사진첨부, 문제사항 기재)
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <p>④ <span class="num_txt">문의 사항에 대해 내부 심사팀 확인</span></p>
                                                    </li>
                                                    <li>
                                                        <p>⑤ <span class="num_txt">사진만으로 판독이 어려운 경우 회수 안내 및 심사 진행</span></p>
                                                    </li>
                                                    <li>
                                                        <p>⑥ <span class="num_txt">반품신청 후, 7일 이내 '반품완료' 처리 이내</span></p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="li">
                                    <p class="txt_b">4. 환불 안내</p>
                                    <ul class="bul_b_list">
                                        <li class="bul_b_dot"><i class="bullet"></i> 현금으로 결제하신 경우 '반품완료' 후 신청하신 환불계좌로 영업일 기준 3~7일 이내 입금됩니다.
                                        </li>
                                        <li class="bul_b_dot"><i class="bullet"></i> 카드로 결제하신 경우 '반품완료' 후 영업일 기준 4~5일 이내 승인취소 처리됩니다.
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                            
                        </div>
                    </div>				
		</div>
	</div>
	</section>
</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>


<!-- script area  -->

<script type="text/javascript">
	
	 
	$("#tab_sunshineInfo").click(function() {
		$(this).addClass("ch");
		$(".tab_sub").not(this).removeClass("ch");
		$("#view_sunshineInfo").css("display","block");
		$(".cs_usep").not("#view_sunshineInfo").css("display","none");
		
	});
	
	 $("#tab_orderInfo").click(function() {
		$(this).addClass("ch");
		$(".tab_sub").not(this).removeClass("ch");
		$("#view_orderInfo").css("display","block");
		$(".cs_usep").not("#view_orderInfo").css("display","none");
		});
	 
	 $("#tab_giftInfo").click(function() {
		 	$(this).addClass("ch");
			$(".tab_sub").not(this).removeClass("ch"); 		
			$("#view_giftInfo").css("display","block");
			$(".cs_usep").not("#view_giftInfo").css("display","none");
	});
	 
	 $("#tab_cancelInfo").click(function() {
		 	$(this).addClass("ch");
			$(".tab_sub").not(this).removeClass("ch");
			$("#view_cancelInfo").css("display","block");
			$(".cs_usep").not("#view_cancelInfo").css("display","none");
		});
	 


</script>

</body>
</html>
