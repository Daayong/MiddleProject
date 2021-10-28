<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/review/reviewMain.css" rel="stylesheet">
	
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
	
		<div id="content">
			<div class="review_wrap">
				<h2>리뷰</h2>
				
				
				
				
				
<!-- ===== ===== ===== best_review ===== ===== ===== -->
				<div class="best_review">
					<div class="slide_wrap ">
						<div class="slide_list">
							<div class="slide_track" style="opacity: 1; width: 25000px; transform: translate3d(-568px, 0px, 0px); transition: transform 1200ms ease 0s;">
							
							<c:forEach items="${bestReviewDTOs}" var="bestReviewDTOs" varStatus="index">
							<c:if test="${index.last}">
								<div class="slide_contents">
									<div class="item">
										<a href="javascript:;" class="openDetail" data-review_id="${bestReviewDTOs.review_id}">
											<div class="img_wrap">
												<div class="best_flag">
													<span class="flag_txt">Best</span>
											 	</div>
											 	<img alt="select product_name from product" src="../resources/upload/review/${bestReviewDTOs.file[0].review_file_name}">
											</div>
											
											<div class="txt_wrap">
											
												<span class="tit">${bestReviewDTOs.product_name}
												</span>
												<div class="etc_info">
																		
													<div class="rating_star">
														<span class="star"> <!-- background image 커스텀 영역 -->
															<span style="width:${bestReviewDTOs.review_star}%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
															</span>
														</span>
													</div>
													
													<div class="user_id">
														${bestReviewDTOs.member_user_id}
													</div>
													
												</div>
												
												<div class="txt">
													${bestReviewDTOs.review_txt}
												</div>
												
											</div>
										</a>
									</div>
								</div>
							</c:if>
							</c:forEach>
							<!-- best_review Loop START -->
							<c:forEach begin="0" end="1">
							<c:forEach items="${bestReviewDTOs}" var="bestReviewDTOs">
								<div class="slide_contents">
									<div class="item">
										<a href="javascript:;" class="openDetail" data-review_id="${bestReviewDTOs.review_id}">
											<div class="img_wrap">
												<div class="best_flag">
													<span class="flag_txt">Best</span>
											 	</div>
											 	<img alt="select product_name from product" src="../resources/upload/review/${bestReviewDTOs.file[0].review_file_name}">
											</div>
											
											<div class="txt_wrap">
											
												<span class="tit">${bestReviewDTOs.product_name}
												</span>
												<div class="etc_info">
																		
													<div class="rating_star">
														<span class="star"> <!-- background image 커스텀 영역 -->
															<span style="width:${bestReviewDTOs.review_star}%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
															</span>
														</span>
													</div>
													
													<div class="user_id">
														${bestReviewDTOs.member_user_id}
													</div>
													
												</div>
												
												<div class="txt">
													${bestReviewDTOs.review_txt}
												</div>
												
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
							</c:forEach>
							<!-- best_review Loop END -->
							</div>
							<div class="slide_nav_count">
								<span class="num">
									<em>1</em>/5
								</span>
							</div>
							<div class="slide_nav_arrow">
								<div class="arr_area">
									<button type="button" class="btn_arrow prev" id="prev" style="display: block;">
									</button>
									<button type="button" class="btn_arrow next" id="next" style="display: block;">
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
<!-- ===== ===== ===== family_review ===== ===== ===== -->
				<div class="family_review">
					<div class="family_wrap">
						<div class="title_box">
							<h2>COOKIT Family Story</h2>
							<a class="btn_review" href="https://www.instagram.com/chef.cookit/" target="_blank">쿡킷패밀리 더보기</a>
						</div>
						
						<div class="slide_wrap">
							<div class="slide_list">
								<div class="slide_track" style="opacity: 1; width: 25000px; transform: translate3d(-349px, 0px, 0px); transition: transform 1200ms ease 0s;">
								
								<!-- family_review Loop START -->		
								<c:forEach items="${familyReviewDTOs}" var="familyReviewDTOs">			
									<div class="slide_contents" data-slide_contents_index = "1">
										<div class="item">
											<a href="${familyReviewDTOs.family_review_url}" target="_blank">
												<div class="img_wrap">
												 	<img src="/mp/resources/images/family/${familyReviewDTOs.family_review_img}">
												</div>
												
												<div class="txt_wrap">
												
													<strong class="review_title">
														${familyReviewDTOs.family_review_tit}
													</strong>
													<p class="review_txt">
														${familyReviewDTOs.family_review_txt}
													</p>	
													<div class="family_info_box">
														<div class="thumb"><img src="/mp/resources/images/family/${familyReviewDTOs.family_review_thumb_img}" alt="">
														</div>
														<p>
															<span>${familyReviewDTOs.family_review_name}</span>
															<em>${familyReviewDTOs.family_review_uid}</em>
														</p>
													</div>												
												</div>
											</a>
										</div>
									</div>
								</c:forEach>
								<!-- family_review Loop END -->
								
								</div>
								<div class="slide_nav_count">
									<span class="num">
										<em>1</em>/5
									</span>
								</div>
								<div class="slide_nav_arrow">
									<div class="arr_area">
										<button type="button" class="btn_arrow prev" id="prev" style="display: block;">
										</button>
										<button type="button" class="btn_arrow next" id="next" style="display: block;">
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
<!-- ===== ===== ===== taste_review ===== ===== ===== -->
				<div class="taste_review">
				
					<div class="review_srch">
						<div class="srch_wrap">
							<input type="text" class="txt" name="searchText" placeholder="검색어를 입력해주세요" onkeyup="if(event.keyCode=='13'){search();}">
							<button class="hide" type="button"><span class="hide">입력 삭제</span></button>
							<button type="button" class="btn_srch" onclick="search()"><span class="hide">검색</span></button>
							
						</div>
					</div>
					
					<div class="review_top">
						<p class="total">
							리뷰 <span class="rvwTotalCnt"><fmt:formatNumber value="${reviewDTOs.size()}" pattern="#,###"/></span>건
						</p>
<!-- 						<div class="list_sort"> -->
<!-- 							<input type="checkbox" id="sorting_photo" onchange="loadList(1)" class=""> -->
<!-- 							<label for="sorting_photo">포토리뷰만 보기</label> -->
<!-- 						</div> -->
					</div>
					
					<ul class="review_area">
						<!-- taste_review Loop START -->
						<c:forEach items="${reviewDTOs}" var="reviewDTOs" begin="0" end="9">
						<li>
							<c:choose>
								<c:when test="${empty reviewDTOs.file}">
									<div class="review_module">
								</c:when>
								<c:otherwise>
									<div class="review_module photo">  <!-- 개발 요청 사항 : 이미지 있는 케이스에 photo 클래스 추가 -->
								</c:otherwise>
							</c:choose>
								<div class="top_wrap">
									<p class="title">
										<span class="name">${reviewDTOs.product_name}</span>
									</p>
									<time datetime="YYYY-MM-DD">${reviewDTOs.review_date}</time>
								</div>
								
								<div class="etc_info">
								
									<div class="rating_star">
										<span class="star"> <!-- background image 커스텀 영역 -->
											<span style="width:${reviewDTOs.review_star}%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
											</span>
										</span>
									</div>
									
									<div class="user_id">
										<a href="#">
											${reviewDTOs.member_user_id}
										</a>
									</div>
									
									<!-- <div class="purchase_num"> 구매 횟수 : 1회 구매 표시 안함 
										"구매 purchase_num회"
									</div> -->
								</div>	
										
								<div class="link_wrap">
									<a href="javascript:;" class="link_more">
										<div class="txt_wrap">
										
											<div class="txt_contents">
												<p class="txt">
													${reviewDTOs.review_txt}
												</p>
											</div>
											
											<div class="tag_wrap">
											
												<c:choose>
													<c:when test="${reviewDTOs.review_tag.substring(0,1) eq 0}">
														<span class="tag">#약간 짭짤했어요</span>
													</c:when>
													<c:when test="${reviewDTOs.review_tag.substring(0,1) eq 1}">
														<span class="tag">#적당했어요</span>
													</c:when>
													<c:when test="${reviewDTOs.review_tag.substring(0,1) eq 2}">
														<span class="tag">#아주 짭짤했어요</span>
													</c:when>
												</c:choose>
												
												<c:if test="${reviewDTOs.review_tag.substring(1,2) eq 1}">
													<span class="tag">#조리하기 쉬워요</span>
												</c:if>
												
												<c:if test="${reviewDTOs.review_tag.substring(2,3) eq 1}">
													<span class="tag">#재료가 신선해요</span>
												</c:if>
												
												<c:if test="${reviewDTOs.review_tag.substring(3,4) eq 1}">
													<span class="tag">#양이 많아요</span>
												</c:if>
												
												<c:if test="${reviewDTOs.review_tag.substring(4,5) eq 1}">
													<span class="tag">#맛있어요</span>
												</c:if>
												
											</div>
											
											<c:if test="${not empty reviewDTOs.review_tip}">
												<div class="tip_wrap">
													<div class="tip_ico">
													</div>
													
													<div class="tip_txt">
														${reviewDTOs.review_tip}
													</div>
												</div>											
											</c:if>
										</div>
											
										<!-- ===== 이미지 START ===== -->
										<c:if test="${not empty reviewDTOs.file}">
											<div class="img_wrap">										
												<!-- 첫번째 이미지 -->
												<div class="thumb_img">													
													<div class="img">
														<img src="../resources/upload/review/${reviewDTOs.file[0].review_file_name}" onerror="">
													</div>
													<span class="lang">${fn:length(reviewDTOs.file)}</span> <!-- 총 사진 개수 : .review_module .img_wrap 안에 있는 .img 갯수 체크 -->
												</div>
												
												<!-- 큰 이미지 영역 -->
												<div class="bigger_img">
													<c:forEach items="${reviewDTOs.file}" var="file">										
														<div class="img">
															<img src="../resources/upload/review/${file.review_file_name}" onerror="">
														</div>
													</c:forEach>										
												</div>
												<!-- //큰 이미지 영역 -->
											</div>
										</c:if>
										<!-- ===== 이미지 END ===== -->
									</a>
								</div>	
											
							</div>
						</li>		
						</c:forEach>
						<!-- taste_review Loop End -->
					</ul>
					
					
					
<!-- ===== ===== ===== pagination ===== ===== ===== -->
					<div class="pagination">
<!-- 						<a class="btn_first" href="#"></a> -->
<!-- 						<a class="btn_prev" href="#"></a> -->
<!-- 						<span class="page_num"> -->
<!-- 							<strong>11</strong> -->
<!-- 							<a href="#">12</a> -->
<!-- 							<a href="#">13</a> -->
<!-- 							<a href="#">14</a> -->
<!-- 							<a href="#">15</a> -->
<!-- 							<a href="#">16</a> -->
<!-- 							<a href="#">17</a> -->
<!-- 							<a href="#">18</a> -->
<!-- 							<a href="#">19</a> -->
<!-- 							<a href="#">20</a> -->
<!-- 						</span> -->
<!-- 						<a class="btn_next" href="#"></a> -->
<!-- 						<a class="btn_last" href="#"></a>						 -->
					</div>
					
					
					
					
					<div class="review_point_guide">
						<p class="cj_point_txt">
							리뷰 작성 시 CJ ONE 포인트 최대 <span>1,400P</span> 적립
						</p>
						<dl class="photo">
							<dt>포토 리뷰 <span>300P</span></dt>
							<dd>포토 + 텍스트(50자)</dd>
						</dl>
						<dl class="text">
							<dt>텍스트 리뷰 <span>200P</span>	</dt>
							<dd>텍스트(50자)</dd>
						</dl>
						<dl class="tip">
							<dt>꿀팁 <span>+100P</span>	</dt>
							<dd>30자 이상</dd>
						</dl>
						<dl class="best">
							<dt>베스트 리뷰 <span>+1,000P</span></dt>
							<dd>매주 선정</dd>
						</dl>

						<ul class="review_info_list">
							<li><span class="list_dot"></span>리뷰는 배송 완료 후 30일 이내 작성 가능합니다.</li>
							<li><span class="list_dot"></span>CJ ONE 포인트는 리뷰 작성 10일 이내 회원에 한해 지급됩니다. (CJ ONE 포인트 지급 전 수정 가능)</li>
							<li><span class="list_dot"></span>리뷰의 저작권은 당사에 귀속되며, 광고 등의 목적으로 사용될 수 있습니다.</li>
						</ul>
						
					</div>					
				</div>
			</div>
		</div>
	</section>
	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/mp/resources/js/review/reviewMain.js"></script>

</body>
</html>