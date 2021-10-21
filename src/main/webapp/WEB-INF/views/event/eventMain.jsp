<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link href="${pageContext.request.contextPath}/resources/css/event/eventMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>

	<title>이벤트 - 집밥을 특별하게, 쿡킷</title>
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
	
		<div id="content">
		
			<div class="event_wrap">
			
				<div class="title">
					<h1>이벤트</h1>
				</div>
				
				<div class="tab_wrap">
						<ul class="tabs">
							<li class="on" id="pros" >
								<a style="cursor: pointer;"><span>진행중</span></a>
							</li>
							<li class="" id="pres">
								<a style="cursor: pointer;" href="./winnerMain"><span>당첨자 발표</span></a>
							</li>
						</ul>
					
		<!-- 이벤트 목록 페이지 -->
					
		<div class="event_list" style="display:block;">
			<ul id="eventListArea">
		
		<c:forEach items="${eventList}" var="eList">
		<li>
			<!-- 이미지 케이스 -->
			<div class="pro_module">
				<div class="img_wrap">															
					<a href="./planView?event_id=${eList.event_id}" class="link_more">
				
					<!-- <img src="" alt="" >				 -->
	
						<span class="dim"></span>
					</a>
				</div>
				<div class="txt_wrap">
					<a href="javascript:goExtDevUrl('')" class="conts">
						<div class="prd_flag_wrap">
							<span class="flag cate">EVENT</span><!-- 개발 요청 사항 : EVENT/기획전 경우 .flag에 cate 클래스 추가  -->

							<span class="date">${eList.event_startDate} ~ ${eList.event_endDate}</span>
						</div>
						<div class="tit_info">
							<span class="tit mt_elps">${eList.event_subject}</span>
						</div>
					</a>
				</div>
			</div>
		</li>		
		</c:forEach>
	
		
				
		</ul>

			<!-- event upload admin만 접근 가능 -->
				<c:if test="${not empty member and member.member_user_id eq 'admin'}">
					<button style="margin-top: 30px;" class="btn_add white" onclick="location.href='./eventUpload'"><span>이벤트 추가</span></button>
				</c:if>
			
	
				<!-- paging -->
				<div id="eventPaging" class="pagination">

					<span class="page_num">
						<strong><span class="hide">현재 페이지</span>1</strong>
					</span>
				
				
				</div>
						</div>
					
					<!-- //이벤트 목록 페이지 -->
					
					
					
					
					<!--//당첨자 발표 -->
				</div>
			</div>			
		</div>
	
		
</section>


</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>


<!-- javaScript -->

	
</html>
