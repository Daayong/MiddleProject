<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<title>쿡킷 상세페이지</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../resources/js/menu/slider_js/lightslider.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="../resources/css/menu/slider/lightslider.css" type="text/css" rel="stylesheet"/>
	<link href="../resources/css/menu/menu_detail.css" rel="stylesheet"/>
	
	<style>
	ul, li {
		margin:0;
		padding:0;
		list-style:none
	}
	</style>
	
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

<div class="wrapper">		
<!-- 여기에 페이지 작업 -->
	<div class="content_wrapper">
			<div class="top_info">
				<div class="left_con">
					<!-- 이미지 슬라이드 및 바뀔시 큰 이미지 들어가게 만들기 -->
					<div class="image_in">
						<ul id="lightSlider2">
							<!-- c:foreach -->
							<c:forEach items="${sliderFiles}" var="files">
								<c:if test="${files.product_file_path eq 'slider'}">
									<li><img alt="in" src="../resources/upload/menu/slider/${prdDTO.product_id}/${files.product_file_name}"></li>
								</c:if>
							</c:forEach>
							<!-- c:foreach -->
						</ul>
					</div>
					<div class="slider_wrapper">
						<div class="slider_btn prev_btn" id="prev">
							<div class="ico_set prev_img"></div>
						</div>
						<div class="slider_btn next_btn" id="next">
							<div class="ico_set next_img"></div>
						</div>
						<ul id="lightSlider">
							<!-- c:foreach -->
							<c:forEach items="${sliderFiles}" var="files" varStatus="findex">
								<c:if test="${files.product_file_path eq 'slider'}">
									<li class="slide_item" value="${findex.index}"><img alt="in" src="../resources/upload/menu/slider/${prdDTO.product_id}/${files.product_file_name}" width="90px" height="90px"></li>
								</c:if>
							</c:forEach>
							<!-- c:foreach -->
						</ul>
					</div>
					<div class="etc_info">
						<!-- 리뷰 및 레시피공유하는 박스 -->
					</div>
				</div>
				
				<!-- 장바구니 및 찜목록 들어갈때 파라미터값 필요! -->
				<div class="right_con">
					<form action="cart" method="get">
						<div class="title_info">
							<div class="sub_title">
								${prdDTO.product_sub_name}
								<input type="hidden" value="${prdDTO.product_sub_name}" name="product_sub_name">
							</div>
							<div class="title">
								${prdDTO.product_name}
								<input type="hidden" value="${prdDTO.product_name}" name="product_name">
							</div>
							<p class="prd_origin">원산지 : 상품참조</p>
						</div>
						<div class="prd_cookinfo">
							${prdDTO.product_recipe}
							<input type="hidden" value="${prdDTO.product_recipe}" name="product_recipe">
						</div>
						<div class="prd_price">
							<span>판매가</span>
							<span class="inPrice">
								<fmt:formatNumber value="${prdDTO.product_price}" type="number" maxFractionDigits="3"/>원
							</span>
							<input type="hidden" value="${prdDTO.product_price}" name="product_price" id="prd_price">
						</div>
						<div class="prd_coupon">
							<span>할인쿠폰</span>
							<span class="inCoupon">
								쿠폰적용제외
							</span>
						</div>
						<div class="prd_delivery">
							<span>배송방법</span>
							<span class="inDelivery">
								새벽배송
							</span>
						</div>
						<div class="prd_date">
							<select class="prd_date_select" name="product_date">
									<option value="">배송받을 날짜를 선택해주세요.</option>
								<c:forEach items="${prdDate}" var="date">
								
									<!-- 날짜 포맷 변경 -->
									<fmt:parseDate value="${date.product_regdate}" var="parseDateValue" pattern="yyyy-MM-dd"/>
									<!-- 날짜 포맷 변경 -->
									
									<c:choose>
										<c:when test="${date.product_date_state eq '판매가능'}">
											<option value="<fmt:formatDate value="${parseDateValue}" pattern="yyyy-MM-dd"/>">
												<fmt:formatDate value="${parseDateValue}" pattern="MM월 dd일"/>
											</option>
										</c:when>
										<c:when test="${date.product_date_state eq '상품준비중'}">
											<option value="<fmt:formatDate value="${parseDateValue}" pattern="yyyy-MM-dd"/>" disabled>
												<fmt:formatDate value="${parseDateValue}" pattern="MM월 dd일"/>
												${date.product_date_state}
											</option>
										</c:when>
									</c:choose>
								</c:forEach>
							</select>
						</div>
						<div class="prd_count">
							<div class="countbox">
								
							</div>
							<input type="number" min="0" max="5" name="product_count" id="prd_count" placeholder="수량선택 (최대 5개)">
						</div>
						<div class="prd_total">
							<span class="cnt">수량 <span id="cnt_value">0</span>개</span>
							<span class="price"><span id="total_value">0</span>원</span>
							<input type="hidden" value="" name="product_total" id="product_total_price">
						</div>
						<div class="utiLBox_wrap">
							<button type="button" class="zzim">
								<div class="zzim_btn"></div>
							</button>
							<div class="cart">
								<button type="button" class="cart_btn">장바구니 담기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<!-- =============================== 상 하단 구분선 ======================================  -->
		
		<div class="detail_wrapper">
			<div class="detail_menubox">
				<div class="detail_menu">
					<ul>
						<li class="menuLi"><a id="description">상세설명</a></li>
						<li class="menuLi"><a id="productInfo">상품정보</a></li>
						<li class="menuLi"><a id="review">리뷰</a></li>
						<li class="menuLi"><a id="orderHelp">배송/반품/문의</a></li>
					</ul>
				</div>
			</div>
			<div class="detail_info">
				<div class="left_detail">
					<!-- 상품 설명 박스 -->
					<div class="description">
						<div class="description_box1">
							<div class="leftbox_banner">
								<img alt="banner" src="../resources/images/menu/copyright_top.gif">
							</div>
							<div class="leftbox_banner">
								<img alt="banner" src="../resources/images/menu/menu_detail/leftbox_banner2.jpg">
							</div>
						</div>
						<div class="description_box2">
							${prdDTO.product_description}
						</div>
					</div>
					<!-- 상품 정보 박스 -->
					<div class="productInfo">
						<p>상품코드: ${prdDTO.product_id}</p>
						<h3>함께 포장된 전체 구성품의 개별 정보를 확인하세요!</h3>
						<table class="prdInfo_table">
							<tr>
								<td>본상품구성</td>
								<td>본상품구성 본상품구성</td>
							</tr>
							<tr>
								<td>식품의유형</td>
								<td></td>
							</tr>
						</table>
					</div>
					<!-- 상품 리뷰 박스 -->
					<div class="reviews">
						<div class="review_wrap">
							<div class="review_rating">
								<div class = "rating_wrap">
									<span class="rating_star">
										<span class="star">
	
										</span>
									</span>
									<span class="num">
										<strong class="avg">5.0</strong>
										<span class="bar">/</span>
										<span class="top">5.0</span>
									</span>
								</div>
								<div class="btn_right">
									<button type="button" class="btn">리뷰작성</button>
								</div>
							</div>
							<div class="sorting_top">
								<div class="chk_wrap">
									<input type="checkbox" id="sorting_photo">
									<label for="sorting_photo">포토리뷰</label>
								</div>
								<div class="list_sort">
									<div class="rad_wrap">
										<input type="radio" id="sort_review02" name="sort_review" checked>
										<label for="sort_review02">
											<span class="txt">베스트순</span>
										</label>
									</div>
									<div class="rad_wrap">
										<input type="radio" id="sort_review01" name="sort_review">
										<label for="sort_review01">
											<span class="txt">최신순</span>
										</label>
									</div>
								</div>
							</div>
							<div class="taste_review_list">
								<ul class="cookitReviewList">
									<li>
										<div class="review_module">
											<div class="top_wrap">
												<p class="tit">
													<a href="#" class="link_id">
														user_id
													</a>
												</p>
												<time datetime="2021-10-14">2021-10-14</time>
											</div>
											<div class="link_wrap">
												<div class="etc_info">
													<div class="rating_wrap">
														<span class="rating_star">
															<span class="star">
																<span style="width: 100.0%;"></span>
															</span>
														</span>
													</div>
													<a href="#" class="link_more">
														<div class="txt_wrap">
															<div class="txt_cont">
																<p class="mt_elps">
																	따끈하고 얼큰한 국물맛이 일품이네요.<br>
																	다 조리한 후 건더기와 약간의 국물을 그릇에 담아놓고,
																	칼국수를 끓여서 동시에 식탁에 올렸어요.
																	두 set를 구입했는데 성인 4명이 먹고도 많이 남았어요. 칼국수 양은 알맞았고요.<br>
																	제시된 레시피보다 물과 샤브소스를 조금 덜 넣었어요.
																</p>
															</div>
															<div class="tag_wrap"></div>
															<div class="tip_box"></div>
														</div>
														<div class="img_left_wrap">
															<div class="thumb_img">
																<div class="img">
																	
																</div>
															</div>
															<div class="img_wrap">
															</div>
														</div>
													</a>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 배송 문의 박스 -->
					<div class="orderHelp">
						<h3>상품 관련 문의해 주세요.</h3>
						<p>고객님의 질문에 정성껏 빠르게 답변해 드리겠습니다.<br>
						작성해주신 문의내역 및 답변은 MY쿡킷>나의활동>1:1문의 내역 메뉴에서 확인 가능합니다.
						<button type="button">1:1문의</button></p>
						<table class="orderHelp_table">
							<tr>
								<td class="dropBtn">배송안내<div class="downArrow"></div>
								<div class="dropBtn_hide" data-text-hide="off">hide</div>
								</td>
							</tr>
							<tr class="dropInfo">
								<td>
									<table class="dropInfo_table">
										<tr>
											<td>배송지역</td>
											<td>서울, 경기, 인천, 청주, 대전, 천안, 아산, 세종 (일부 지역 제외) 배송 가능 여부 확인</td>
										</tr>
										<tr>
											<td>배송비</td>
											<td>3,000원 (4만원 이상 구매 무료배송)</td>
										</tr>
										<tr>
											<td>주문마감/배송정보</td>
											<td>
											<p>주문 마감 시간은 평일 오전 7시입니다.</p>

											<p>토·일·공휴일은 마감이 없으며, 다음날인 일·월·공휴일 다음날은 배송이 없습니다.</p>
											
											<p>배송은 주문 시 지정한 배송일에 집 앞으로 새벽 배송(오전 7시 이전) 됩니다.  다만 일부 지역은 새벽이 아닌 전일 저녁 시간에 배송될 수 있으나, 모든 쿡킷은 배송 시간과 관계없이 아침까지 품질에 문제 없도록 보냉 포장하여 배송하오니 아침에 발견하더라도 안심하고 이용 부탁드립니다.</p>
											
											<p>지정한 배송일 오전 7시 이전에 배송될 수 있도록 노력하고 있으나, 교통상황 및 기상에 따라 1~2시간 정도 배송이 지연될 수 있습니다.</p>
											
											<p>고객님과 연락이 어려운 새벽에 배송되어, 새벽출입이 제한되는 곳(카드키로만 출입되는 공동현관 등)은 배송이 어렵습니다. 위의 경우 새벽 출입 여부를 확인하신 후, 주문시 '공동현관 출입방법'을 자세히 적어주시기 바랍니다.</p>
											
											<p>공동현관 출입방법 미기재 및 오기재로 인해 배송이 어려운 경우 공동현관 앞 또는 경비실로 대응 배송될 수 있으며, 반송될 경우 취소/반품/환불이 불가합니다.</p>
											
											<p>새벽배송 지역이라도 회사, 관공서, 학교, 기숙사, 병원, 시장, 공단, 산간 등은 배송이 불가합니다.</p>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="dropBtn">변경/취소/반품 안내<div class="downArrow"></div></td>
								<td class="dropInfo"></td>
							</tr>
							<tr class="dropInfo">
								<td>
									<table class="dropInfo_table">
										<tr>
											<td>변경/취소 안내</td>
											<td>서울, 경기, 인천, 청주, 대전, 천안, 아산, 세종 (일부 지역 제외) 배송 가능 여부 확인</td>
										</tr>
										<tr>
											<td>교환/반품 신청 기간</td>
											<td>3,000원 (4만원 이상 구매 무료배송)</td>
										</tr>
										<tr>
											<td>교환/반품 불가 안내</td>
											<td>
											<p>주문 마감 시간은 평일 오전 7시입니다.</p>

											<p>토·일·공휴일은 마감이 없으며, 다음날인 일·월·공휴일 다음날은 배송이 없습니다.</p>
											
											<p>배송은 주문 시 지정한 배송일에 집 앞으로 새벽 배송(오전 7시 이전) 됩니다.  다만 일부 지역은 새벽이 아닌 전일 저녁 시간에 배송될 수 있으나, 모든 쿡킷은 배송 시간과 관계없이 아침까지 품질에 문제 없도록 보냉 포장하여 배송하오니 아침에 발견하더라도 안심하고 이용 부탁드립니다.</p>
											
											<p>지정한 배송일 오전 7시 이전에 배송될 수 있도록 노력하고 있으나, 교통상황 및 기상에 따라 1~2시간 정도 배송이 지연될 수 있습니다.</p>
											
											<p>고객님과 연락이 어려운 새벽에 배송되어, 새벽출입이 제한되는 곳(카드키로만 출입되는 공동현관 등)은 배송이 어렵습니다. 위의 경우 새벽 출입 여부를 확인하신 후, 주문시 '공동현관 출입방법'을 자세히 적어주시기 바랍니다.</p>
											
											<p>공동현관 출입방법 미기재 및 오기재로 인해 배송이 어려운 경우 공동현관 앞 또는 경비실로 대응 배송될 수 있으며, 반송될 경우 취소/반품/환불이 불가합니다.</p>
											
											<p>새벽배송 지역이라도 회사, 관공서, 학교, 기숙사, 병원, 시장, 공단, 산간 등은 배송이 불가합니다.</p>
											</td>
										</tr>
										<tr>
											<td>반품 안내</td>
											<td>
											</td>
										</tr>
										<tr>
											<td>환불 안내</td>
											<td>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="border_hauto"><!-- border auto -->
					<div class="right_detail">
						<div class="right_box1">
						</div>
						<div class="right_box2">
							<!-- name 값 아직 안줌 -->
							<select class="prd_date_select">
									<option value="">배송받을 날짜를 선택해주세요.</option>
								<c:forEach items="${prdDate}" var="date">
								
									<!-- 날짜 포맷 변경 -->
									<fmt:parseDate value="${date.product_regdate}" var="parseDateValue" pattern="yyyy-MM-dd"/>
									<!-- 날짜 포맷 변경 -->
									
									<option value="<fmt:formatDate value="${parseDateValue}" pattern="yyyy-MM-dd"/>"><fmt:formatDate value="${parseDateValue}" pattern="MM월 dd일"/></option>
								</c:forEach>
							</select>
						</div>
						<div class="right_box3">
							<div class="prdCnt">
								수량 0개 0원
							</div>
							<div class="detailCart_btn">
								장바구니 담기
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- 여기까지 -->
<div class="push"></div>
</div>

<c:import url="../temp/boot_footer.jsp"></c:import>
</body>

<script src="../resources/js/menu/menu_js.js"></script>
<script type="text/javascript">
</script>

</html>