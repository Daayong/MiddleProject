<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		
		.wrapper{
		min-height:100%;
		width:100%;
		margin-bottom:-290px;
		position:relative; 
		left:50%;
		transform:translate(-50%);
		/*영역 확인용 색상 작업 완료시 삭제*/
/* 		background-color:gray; */
	
	
		}

		.section{
			width:1190px; 
			min-height:100%; 
			margin:0 auto; 
		/*영역 확인용 색상 작업완료시 삭제*/
/* 			background-color:ivory; */
		}

		.push{
		height:290px;		
		}
		
/* 		개인 작업 내용 */
		
		body{background: url(/mp/resources/images/bg_rv_wrapper.png) repeat-x 0 977px;}

		.hide {display: inline-block;position:absolute;z-index:-10;width:0 !important;height:0 !important;overflow:hidden !important;font-size:medium;line-height:normal;word-break:break-all}

		h2{padding-bottom: 36px;color: #101010;font-size: 40px;line-height: 56px;font-weight: 700;border-bottom: 4px solid #202020;}

		#content{min-height: 900px;padding-bottom: 140px;padding-top: 52px;}
		
		.best_review{box-sizing:border-box;height:628px;padding:48px 0 0;}
		
		.family_review{padding:60px 0 46px;background:#f7f7f7;margin-top:85px;overflow:hidden;}
		
	/* 		taste_review */
		.taste_review{padding-top:80px;}
		
		/* 		review_srch */
		.review_srch{position: relative; box-sizing: border-box; width: 1190px; height: 133px; padding: 32px; border-top: 1px solid #202020;  background-color:#f7f7f7;}
		.review_srch .srch_wrap{position:relative; z-index:30; width:644px; margin:0 auto;}
		.review_srch .srch_wrap .txt{display: block; width:644px; height:68px; padding:0 106px 0 20px; border:2px solid #202020; color:#101010; font-weight:700; font-size:20px; opacity:1;}
		.review_srch .srch_wrap .btn_srch{position: absolute; border:0; right:18px; top:50%; width:32px; height:32px; margin-top:-16px; background:url('/mp/resources/images/pd/ico_set.png') -600px -150px no-repeat; background-size:800px 800px;}
			
		/* 		review_top */
		.review_top{position: relative; margin-top:56px; padding-bottom:16px; border-bottom:2px solid #202020;}
		.review_top .total{display: inline-block; color: #101010;font-weight: 700;font-size: 22px;line-height: 32px;}
		.review_top .list_sort {display: inline-block; position: absolute; right: 0px;}
		.review_top .list_sort input{z-index:0; opacity:0; filter:alpha(opacity=0)}
		.review_top .list_sort label:before {content:'';zoom:1;display:inline-block;width:25px;height:26px;margin:-3px 6px 0 0;background:url('/mp/resources/images/common/ico_set.png') no-repeat;background-position:-1px -40px; background-size:800px 800px; vertical-align:middle;}
		.review_top .list_sort label{font-size:16px; line-height:24px;}
		
		/* 		review_area */
		.review_area li {padding:24px 0; border-top:1px solid #e0e0e0;}
		.review_area .review_module .top_wrap {margin-bottom:6px;}
		.review_area .review_module .top_wrap .title {display: inline-block; padding-left:1px;}
		.review_area .review_module .top_wrap .title .name {float: left; display:inline-block; width:560px; color:#101010; font-weight:700; font-size:16px; line-height:24px;}
		.review_area .review_module .top_wrap time {display: inline-block; float: right; margin-top:2px; font-size:14px; line-height:24px;}
		
		.review_area .review_module .link_wrap .etc_info {float:left; width:100%; margin-bottom:20px;}
		.review_area .review_module .link_wrap .etc_info .rating_star {display:inline-block; padding:7px 0; vertical-align:middle;}
		.review_area .review_module .link_wrap .etc_info .rating_star .star,
		.review_area .review_module .link_wrap .etc_info .rating_star span{display:block; width:88px; height:16px; background:url('/mp/resources/images/pd/ico_set.png') no-repeat -374px -26px; background-size:800px 800px;}
		.review_area .review_module .link_wrap .etc_info .rating_star span{background-position:-374px 0;}
		.review_area .review_module .link_wrap .etc_info .user_id {display:inline-block; color:#606060; font-size:14px; line-height:22px; vertical-align:middle}
		.review_area .review_module .link_wrap .etc_info .user_id:before {content:''; display:inline-block; width:1px; height:14px; margin:0 10px; background-color:#e0e0e0; vertical-align:middle}
		.review_area .review_module .link_wrap .etc_info .purchase_num {display:inline-block; color:#606060; font-size:14px; line-height:22px; vertical-align:middle}
		.review_area .review_module .link_wrap .etc_info .purchase_num:before {content:''; display:inline-block; width:1px; height:14px; margin:-2px 10px 0; background-color:#e0e0e0; vertical-align:middle}
		
		.review_area .review_module .link_wrap .contents_wrap {float:right; width:100%;}
		.review_area .review_module .link_wrap .contents_wrap .txt {font-size:14px; line-height:22px;}
		.review_area .review_module .link_wrap .contents_wrap .txt {max-height:44px; font-size:14px; line-height:22px;}
		.review_area .review_module .link_wrap .contents_wrap .tag_wrap {/* display:none; */ padding-top:8px; color:#008A00; font-size:13px; line-height:21px;}
		.review_area .review_module .link_wrap .link_more .tip_wrap {position:relative; margin-top:8px; padding:8px 16px 8px 47px; -ms-border-radius:0 8px 8px 8px; -moz-border-radius:0 8px 8px 8px; -webkit-border-radius:0 8px 8px 8px; border-radius:0 8px 8px 8px; background-color:#f7f7f7;}
		.review_area .review_module .link_wrap .link_more .tip_wrap .tip_ico {position:absolute; left:16px; top:14px; width:31px;}
		.review_area .review_module .link_wrap .link_more .tip_wrap .tip_ico:before {content:''; position:absolute; left:0; top:0; width:23px; height:10px; background:url('/mp/resources/images/pd/ico_set.png') -490px -130px no-repeat; background-size:800px 800px;}
		.review_area .review_module .link_wrap .link_more .tip_wrap .txt_tip{color:#606060; font-size:13px; line-height:21px; vertical-align:top;}
		.review_area .review_module .link_wrap .link_more:after{content:'';display:table;clear:both;}
		
		/* 		pagination */
		.pagination {padding-top:56px; font-size:0; text-align:center; border-top:1px solid #e0e0e0;}
		.pagination a,
		.pagination strong {display:inline-block; min-width:40px; height:40px; background-color:#fff; color:#606060; font-size:14px; font-weight:700; text-align:center; line-height:40px; vertical-align:top; }
		.pagination strong {background-color:#202020; color:#fff;}
		.pagination a:hover,
		.pagination a:focus {text-decoration:underline;}
		.pagination .page_num {display:inline-block; padding:0 20px; vertical-align:middle;}
		.pagination .btn_first,
		.pagination .btn_prev,
		.pagination .btn_next,
		.pagination .btn_last {display:inline-block; width:40px; height:40px; margin:0 -0.5px; padding:0; background:url('/mp/resources/images/common/ico_set.png') no-repeat; background-size:800px 800px; vertical-align:middle;}
		.pagination .btn_first {background-position:0 -300px;}
		.pagination .btn_prev {background-position:-40px -300px;}
		.pagination .btn_next {background-position:-80px -300px;}
		.pagination .btn_last {background-position:-120px -300px;}

/* 		/개인 작업 내용 */
	</style>	
	
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>




<div class="wrapper">		
<!-- 여기에 페이지 작업 -->
<!-- wrapper는 width:1900px 영역이므로 메인페이지 및 소개 페이지에서 슬라이드 이미지 작업시의 영역크기(gray색상) -->	
	
	
	<div class="section">
	<!-- section은 width:1190px로, 모든 컨텐츠 작업 영역(ivory색상) -->
		<div id="content">
			<div class="review_wrap">
				<h2>리뷰</h2>
				
				
				
				
				
				<div class="best_review">
					<div class="ui_carousel_track ui_static" style="opacity: 1; width: 25000px; transform: translate3d(-568px, 0px, 0px);">
						<div class="slide_conts ui_carousel_slide ui_carousel_cloned" data-ui_carousel_index="-1" style="float: left;" aria-hidden="true">
						</div>
					</div>
				</div>
				
				
				
				
				
				<div class="family_review">
				</div>
				
				
				
				
				
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
							<input type="checkbox" id="sorting_photo" onchange="loadList(1)" class="accessibility-keyboard">
							<label for="sorting_photo">포토리뷰만 보기</label>
						</div>
					</div>
					
					<ul class="review_area">
						<c:forEach begin="1" end="10">
						<li>
							<div class="review_module">
							
								<div class="top_wrap">
									<p class="title">
										<span class="name">select product_name where products</span>
									</p>
									<time datetime="YYYY-MM-DD">2021-09-27</time>
								</div>		
										
								<div class="link_wrap">
								
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
									<a href="#" class="link_more">
										<div class="contents_wrap">
										
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
					</ul>
					
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
					
				</div>
			</div>
		</div>
	</div>
	
<!-- 여기까지 -->
	<div class="push"></div>
</div>
 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>
</html>