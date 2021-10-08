<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cs/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cs/noticeMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/paging.css" rel="stylesheet">
<html>
<head>
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
						<li class="on"><a href="${pageContext.request.contextPath}/cs/noticeMain"><span id="nt">공지사항</span></a></li>
						<li><a href=" ${pageContext.request.contextPath}/cs/userGuide"><span id="ug" >새벽배송/이용안내</span></a></li>
					</ul>			
				</div>
				
		<!-- notice -->
		<div class="notice_conts" id="noticeContent">
					
		<!-- notice List -->
		
		
			<div class="tb_row">
					
			<!-- table -->
			
			<table>
				<colgroup> <!-- table 간격 기본설정 -->
					<col width="10%">
					<col width="75%">
					<col width="15%">
					
				</colgroup>
				
				<!-- table head -->
				<thead>
					<tr>
						<th scope="row">번호</th>
						<th scope="row">제목</th>
						<th scope="row">등록일</th>
					</tr>
				</thead>
				
				<!-- tablebody -->
				
				<tbody>
				
					<!-- 제목 선택시 상세페이지 이동 -->
				<c:forEach items="${noticelist}" var="list">
					<tr>
					<td scope="row">${list.notice_id}</td>
					<td class="tit"><a href="./noticeView?notice_id=${list.notice_id}">${list.notice_subject}</a></td>
					<td>${list.notice_regDate}</td>
					</tr>
				</c:forEach>
				</tbody>
			
			</table>
						
		</div>
		

					
					<!-- paging -->
					<div class="pagination">
						<a class="btn_first" href="#"></a>
							<a class="btn_prev" href="#"></a>
							<span class="page_num">
								
								<a href="#"><strong>1</strong></a>
								
								
						</span>
					<a class="btn_next" href="#"></a>
					<a class="btn_last" href="#"></a>
				</div>
						
				
				
				
			</div>
	
		</div>
	</div>
	</section>
</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>



</body>
</html>
