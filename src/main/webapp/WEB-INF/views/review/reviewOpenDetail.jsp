<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/review/reviewOpenDetail.css" rel="stylesheet">
	
	<title>Home</title>
	
</head>
<body>
<div class="wrapper">

	<header class="pop_header">
		<h1><span>product_name</span></h1>
		<a href="/pc/prod/prodDetail?prdCd=40024428" target="_blank" class="btn_link" title="메뉴 상세보기">메뉴 상세보기</a>
	</header>	
	
	<section class="pop_contents">
				
				
				
				
				
				<div class="top_wrap">
					<span class="best_flag">BEST</span>
					<a href="#" class="user_id">
						userID****
					</a>
					<time datetime="YYYY-MM-DD">2021-09-27</time>
				</div>	
				
				
				
				
				
				<div class="etc_info">				
					<div class="rating_star">
						<span class="star"> <!-- background image 커스텀 영역 -->
							<span style="width:80.0%;"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
							</span>
						</span>
					</div>
				</div>
				
				
				
				
				<div class="slide_wrap">
					<div class="slide_track" style="opacity: 1; width: 780px; transform: translate3d(-780px, 0px, 0px);">
	
						
						<div class="img_wrap">
							<img src="/mp/resources/images/temp/review_temp1.jpg" alt="1번 이미지" onerror="">
						</div>		
						
						<div class="img_wrap">
							<img src="/mp/resources/images/temp/review_temp2.jpg" alt="2번 이미지" onerror="">
						</div>	
											
						<div class="img_wrap">
							<img src="/mp/resources/images/temp/review_temp1.jpg" alt="1번 이미지" onerror="">
						</div>		
						
						<div class="img_wrap">
							<img src="/mp/resources/images/temp/review_temp2.jpg" alt="2번 이미지" onerror="">
						</div>
						
					</div>
					
					<div class="slide_nav_count">
						<span class="num">
							<em>1</em>/<strong>2</strong>
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
							<br>							
							select tip from reviews ~
						</div>
					</div>
		</div>
		
		
		
		
		
	</section>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript" src="/mp/resources/js/reviewOpenDetail.js"></script>

</body>
</html>