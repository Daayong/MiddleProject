<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/review/reviewOpenDetail.css" rel="stylesheet">
	
	<title>Home</title>
	
</head>
<body>
<div class="wrapper">
	
	<c:forEach items="${bestReviewDTOs}" var="bestReviewDTOs">
	<c:if test="${bestReviewDTOs.review_id eq review_id}">

	<header class="pop_header">
		<h1><span>${bestReviewDTOs.product_name}</span></h1>
		<a href="../menu/menu_detail?product_id=${bestReviewDTOs.product_id}" target="_blank" class="btn_link" title="메뉴 상세보기">메뉴 상세보기</a>
	</header>	
	
	<section class="pop_contents">
				
				
				
				
				
				<div class="top_wrap">
					<span class="best_flag">BEST</span>
					<a href="#" class="user_id">
						${bestReviewDTOs.member_user_id}
					</a>
					<time datetime="YYYY-MM-DD">${bestReviewDTOs.review_date}</time>
				</div>	
				
				
				
				
				
				<div class="etc_info">				
					<div class="rating_star">
						<span class="star"> <!-- background image 커스텀 영역 -->
							<span style="width:${bestReviewDTOs.review_star};"> <!-- background image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
							</span>
						</span>
					</div>
				</div>
				
				
				
				
				<div class="slide_wrap">
					<div class="slide_track" style="opacity: 1; width: 780px; transform: translate3d(-780px, 0px, 0px);">
						
						<div class="img_wrap">
							<img src="../resources/upload/review/${bestReviewDTOs.file[(fn:length(bestReviewDTOs.file))-1].review_file_name}" onerror="">
						</div>
						<c:forEach items="${bestReviewDTOs.file}" var="file">
							<div class="img_wrap">
								<img src="../resources/upload/review/${file.review_file_name}" onerror="">
							</div>
						</c:forEach>
						<div class="img_wrap">
							<img src="../resources/upload/review/${bestReviewDTOs.file[0].review_file_name}" onerror="">
						</div>
						
					</div>
					
					<div class="slide_nav_count">
						<span class="num">
							<em>1</em>/<strong>${fn:length(bestReviewDTOs.file)}</strong>
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
							${bestReviewDTOs.review_txt}
						</p>
					</div>
					
					<div class="tag_wrap">
											
						<c:choose>
							<c:when test="${bestReviewDTOs.review_tag.substring(0,1) eq 0}">
								<span class="tag">#약간 짭짤했어요</span>
							</c:when>
							<c:when test="${bestReviewDTOs.review_tag.substring(0,1) eq 1}">
								<span class="tag">#적당했어요</span>
							</c:when>
							<c:when test="${bestReviewDTOs.review_tag.substring(0,1) eq 2}">
								<span class="tag">#아주 짭짤했어요</span>
							</c:when>
						</c:choose>
						
						<c:if test="${bestReviewDTOs.review_tag.substring(1,2) eq 1}">
							<span class="tag">#조리하기 쉬워요</span>
						</c:if>
						
						<c:if test="${bestReviewDTOs.review_tag.substring(2,3) eq 1}">
							<span class="tag">#재료가 신선해요</span>
						</c:if>
						
						<c:if test="${bestReviewDTOs.review_tag.substring(3,4) eq 1}">
							<span class="tag">#양이 많아요</span>
						</c:if>
						
						<c:if test="${bestReviewDTOs.review_tag.substring(4,5) eq 1}">
							<span class="tag">#맛있어요</span>
						</c:if>
						
					</div>
					
					<div class="tip_wrap">
						<div class="tip_ico">
						</div>
						<div class="tip_txt">
							${bestReviewDTOs.review_tip}							
						</div>
					</div>
		</div>
		
		
		
		
		
	</section>
	
	</c:if>
	</c:forEach>
	
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/mp/resources/js/review/reviewOpenDetail.js"></script>

</body>
</html>