<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/event/planView.css" rel="stylesheet">


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
					
					<h2 class="tit">[쿡킷] 가을 요리비책<span class="date">2021-10-15 ~ 2021-10-31</span></h2>
					<div class="sns_btn_wrap">
						<a href="#" class="btn share snsShareBtn" role="button"><span>공유</span></a>
					</div>
				</div>
				
				<!-- 컨텐츠 등록 -->
				<div class="conts">
			
     				<div>
      					<img src="https://www.cjcookit.com/cjkit/design/event/2021/10/1015_fall_pc_01.jpg" >
	
				</div>

				</div>
	        
	            
					
			</div>
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
