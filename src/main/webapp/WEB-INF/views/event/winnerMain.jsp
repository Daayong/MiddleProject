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
							<li class="" id="pros" >
								<a style="cursor: pointer;" onclick="location.href='./eventMain'"><span>진행중</span></a>
							</li>
							<li class="on" id="pres">
								<a style="cursor: pointer;"><span>당첨자 발표</span></a>
							</li>
						</ul>
					
				<!-- 당첨자 발표 페이지 -->
					
				<div id="winnerListArea"  class="event_winner">

				<!-- 당첨자 발표 table -->	
				<div class="tb_row">
					<table class="">
						<colgroup>
							<col width="10%">
							<col width="*">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th scope="row">번호</th>
								<th scope="row">제목</th>
								<th scope="row">당첨자 발표일자</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${winnerList}" var="wlist">
							<tr>
								<td>${wlist.event_winner_id}</td>
								<td class="tit"><a href="./winnerView?event_winner_id=${wlist.event_winner_id}">${wlist.event_winner_subject}</a></td>
								<td>${wlist.event_winner_regDate}</td>
							</tr> 		
							
							</c:forEach>
						</tbody>
					</table>
			
					<!-- event upload admin만 접근 가능 -->
			
				</div>
			
		 	<div id="winnerPaging" class="pagination" style="display: block">
				<c:if test="${not empty member and member.member_user_id eq 'admin'}">
					<button class="btn_add white" onclick="location.href='./winnerUpload'"><span>이벤트 추가</span></button>
				</c:if>
				<span class="page_num">
					<strong><span class="hide">현재 페이지</span>1</strong>
				</span>
			
			</div> 
		<!-- 당첨자 발표 -->
	</div>
					
					
					
					<!--//당첨자 발표 -->
				</div>
			</div>			
		</div>
	
		
</section>


</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>


</html>
