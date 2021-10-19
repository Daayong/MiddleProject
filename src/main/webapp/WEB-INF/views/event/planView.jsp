<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/event/planView.css" rel="stylesheet">


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
	
			<div id="content" class="ev_content">
	
		<div class="ev_wrap">
			<h1 class="title">이벤트</h1>
	
			<div class="view">
				<div class="head">
					
					<h2 class="tit">${dto.event_subject}<span class="date">2021-10-15 ~ 2021-10-31</span></h2>
					
				</div>
				
				<!-- 컨텐츠 등록 -->
				<div class="conts">${dto.event_content}</div>
	        	
			</div>
			
			<c:if test="${not empty member and member.member_user_id eq 'admin' }">
			<a href="./eventDelete?event_id=${dto.event_id}" class="delete btn_remove" ><span>글 삭제</span></a>
			</c:if>
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
