<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cs/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cs/noticeMain.css" rel="stylesheet">

<html>
<head>

<script src="http://code.jquery.com/jquery-latest.js"></script>
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
                        <h2 class="tit">${dto.notice_subject} 
                        	<span class="date">${dto.notice_regDate}</span></h2>
                    </div>
			
				<!-- view contents -->
					<div class="conts">
                        <div class="txt">
                         	${dto.notice_content}
                        </div>
                    </div>
			
			</div>			
			
			<div>
			<c:if test="${not empty member and member.member_user_id eq 'admin' }">
			<a href="./eventDelete?event_id=${dto.event_id}" class="delete btn_remove" ><span>글 삭제</span></a>
			</c:if>
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

<script type="text/javascript">
	$(".btn_remove").on('click', function() {
		
		 if(confirm("이 글을 삭제하시겠습니까?") == true){
		    }
		    else{
		        return false;
		    }
	})
</script>

</body>
</html>
