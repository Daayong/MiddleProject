<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
							<c:forEach var="i" begin="0" end="9">
							
							
								<div class="slide_contents" data-slide_contents_index = ${i-1} aria-hidden = "false">
									<div class="item">
										<a>
											<div class="img_wrap">
												<div class="best_flag">
													<span class="flag_txt">Best</span>
											 	</div>
											 	<img alt="select product_name from product" src="/mp/resources/images/temp/review_temp.jpg">
											</div>
											
											<div class="txt_wrap">
											
												<span class="tit">product_name
												</span>
												<div class="etc_info">	
																		
													<div class="rating_star">
														<span class="star"> <!-- background image 커스텀 영역 -->
															<span style="width:100.0%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
															</span>
														</span>
													</div>
													
													<div class="user_id">
														member_userId****
													</div>
													
												</div>
												
												<div class="txt">
													select contents from review where bestReview;select contents from review where bestReview<br>select contents from review where bestReview;
												</div>
												
											</div>
										</a>
									</div>
								</div>
							
							
							</c:forEach>
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
								
								<c:forEach begin="1" end="5">
								
								
									<div class="slide_contents" data-slide_contents_index = "1" aria-hidden = "false">
										<div class="item">
											<a href="https://www.instagram.com/p/CC5GfQhnEEf/" target="_blank">
												<div class="img_wrap">
												 	<img src="/mp/resources/images/temp/@family_01.png">
												</div>
												
												<div class="txt_wrap">
												
													<strong class="review_title">
														주말의 낙,캠핑에 쿡킷이<br>
														필수템이 되었어요
													</strong>
													<p class="review_txt">
														맛있는 음식과 함께할 때 캠핑의 매력은 배가 돼요!<br>
														바쁜 캠린이들이 가장 쉽게 만드는 캠핑 요리,쿡킷!<br>
														오일까지 챙겨줘서 짐이 정말 많이 줄었어요.<br>
														캠핑장에서 받는 부러움의 시선은 덤
													</p>	
													<div class="family_info_box">
														<div class="thumb"><img src="/mp/resources/images/temp/@family_thumb_01.png" alt="">
														</div>
														<p>
															<span>도시캠퍼 김지혜님</span>
															<em>@jjihye13</em>
														</p>
													</div>												
												</div>
											</a>
										</div>
									</div>
								</c:forEach>
								
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
							리뷰 <span class="rvwTotalCnt">159,649</span>건
						</p>
						<div class="list_sort">
							<input type="checkbox" id="sorting_photo" onchange="loadList(1)" class="">
							<label for="sorting_photo">포토리뷰만 보기</label>
						</div>
					</div>
					
					<ul class="review_area">
<!-- ===== ===== ===== 이미지 없는 케이스 ===== ===== ===== -->
						<c:forEach begin="1" end="5">
						<li>
							<div class="review_module">
							
								<div class="top_wrap">
									<p class="title">
										<span class="name">select product_name where products</span>
									</p>
									<time datetime="YYYY-MM-DD">2021-09-27</time>
								</div>	
								
								<div class="etc_info">
								
									<div class="rating_star">
										<span class="star"> <!-- background image 커스텀 영역 -->
											<span style="width:80.0%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
											</span>
										</span>
									</div>
									
									<div class="user_id">
										<a href="#">
											"userID****"
										</a>
									</div>
									
									<div class="purchase_num"> <!-- 구매 횟수 : 1회 구매 표시 안함  -->
										"구매 purchase_num회"
									</div>
								</div>	
										
								<div class="link_wrap">
									<a href="javascript:;" class="link_more">
										<div class="txt_wrap">
										
											<div class="txt_contents">
												<p class="txt">
													select contents from reviews where user_num = ? and product_num = ?
												</p>
											</div>
											
											<div class="tag_wrap">
												<span class="tag">#select tag from reviews ~</span>
												<span class="tag">#select tag from reviews ~</span>
											</div>
											
											<div class="tip_wrap">
												<div class="tip_ico">
												</div>
												<div class="tip_txt">
													select tip from reviews ~
												</div>
											</div>
											
										</div>
									</a>
								</div>	
											
							</div>
						</li>
						</c:forEach>
						
<!-- ===== ===== ===== 이미지 있는 케이스 ===== ===== ===== -->
						<c:forEach begin="1" end="5">
						<li>
							<div class="review_module photo"> <!-- 개발 요청 사항 : 이미지 있는 케이스에 photo 클래스 추가 -->
							
								<div class="top_wrap">
									<p class="title">
										<span class="name">select product_name where products</span>
									</p>
									<time datetime="YYYY-MM-DD">2021-09-27</time>
								</div>	
								
								<div class="etc_info">
								
									<div class="rating_star">
										<span class="star"> <!-- background image 커스텀 영역 -->
											<span style="width:80.0%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
											</span>
										</span>
									</div>
									
									<div class="user_id">
										<a href="#">
											"userID****"
										</a>
									</div>
									
									<div class="purchase_num"> <!-- 구매 횟수 : 1회 구매 표시 안함  -->
										"구매 purchase_num회"
									</div>
								</div>	
										
								<div class="link_wrap">
									<a href="javascript:;" class="link_more">
										<div class="txt_wrap">
										
											<div class="txt_contents">
												<p class="txt">
													select contents from reviews where user_num = ? and product_num = ?
												</p>
											</div>
											
											<div class="tag_wrap">
												<span class="tag">#select tag from reviews ~</span>
												<span class="tag">#select tag from reviews ~</span>
											</div>
											
											<div class="tip_wrap">
												<div class="tip_ico">
												</div>
												<div class="tip_txt">
													select tip from reviews ~
												</div>
											</div>
											
										</div>
											
<!-- 											이미지 -->
										<div class="img_wrap">
										
											<!-- 첫번째 이미지 -->
											<div class="thumb_img">													
												<div class="img">
													<img src="/mp/resources/images/temp/review_temp.jpg" alt="1번 이미지" onerror="">
												</div>
												<span class="lang">1</span> <!-- 총 사진 개수 : .review_module .img_wrap 안에 있는 .img 갯수 체크 -->
											</div>
											
											<!-- 큰 이미지 영역 -->
											<div class="bigger_img">												
												<div class="img">
													<img src="/mp/resources/images/temp/review_temp.jpg" alt="1번 이미지" onerror="">
												</div>												
											</div>
											<!-- //큰 이미지 영역 -->
										</div>
									</a>
								</div>	
											
							</div>
						</li>
						</c:forEach>
					</ul>
					
					
					
<!-- ===== ===== ===== pagination ===== ===== ===== -->
					<div class="pagination">
						<a class="btn_first" href="#"></a>
						<a class="btn_prev" href="#"></a>
						<span class="page_num">
							<strong>11</strong>
							<a href="#">12</a>
							<a href="#">13</a>
							<a href="#">14</a>
							<a href="#">15</a>
							<a href="#">16</a>
							<a href="#">17</a>
							<a href="#">18</a>
							<a href="#">19</a>
							<a href="#">20</a>
						</span>
						<a class="btn_next" href="#"></a>
						<a class="btn_last" href="#"></a>						
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
<script type="text/javascript" src="/mp/resources/js/reviewMain.js"></script>

</body>
</html>