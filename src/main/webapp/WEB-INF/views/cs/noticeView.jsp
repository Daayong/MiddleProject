<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/noticeMain.css" rel="stylesheet">

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
			<div class="view">
			
				<!-- view head -->
				<div class="head">
                        <h2 class="tit">[9월 4차] 미리보는 쿡킷 전체 메뉴
                        	<span class="date">2021-09-30</span></h2>
                    </div>
			
				<!-- view contents -->
					<div class="conts">
                        <div class="txt">
                         <p>※ 메뉴는 원물 준비사항에 따라 변동될 수 있습니다.</p><p>※ 신메뉴는 '월요일' 오전10시에 오픈됩니다.<br>&nbsp;</p>

						
						<!-- 첨부file 대체 -->
							<img src="https://www.cjcookit.com/cjkit/design/notice/202109_new_02.jpg"><br><br><br>

                        </div>
						<div class="added_file">
						    <ul>
						        <!-- 첨부단위 -->
							    
						    </ul>
						</div>
                    </div>
			
			</div>			
			
			<!-- 목록으로 돌아가기 -->
			
				<div class="btn_wrap">
                	<a href="${pageContext.request.contextPath}/cs/noticeMain" class="btn pop green" role="button" >
                	<span>목록</span></a>
                </div>
			
			
			
		
		<!-- //view -->
				
			</div>
		</div>
		
	</div>
	
	
	</section>
</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>



</body>
</html>
