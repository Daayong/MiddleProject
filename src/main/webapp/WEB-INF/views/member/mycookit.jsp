<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>로그인-집밥을 특별하게,쿡킷</title>
	<style>
		.wrapper{
			position:relative;
			width:100%;
		}
		#container{
			width:1180px;
			min-height:100%;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
		
		.title{
			font-size:40px; 
			color:#202020;
		}
		
		.log_content{
			width:1180px;
			height:914px;
			background-color:green; 
			position:absolute; 
		}
		
		.login_wrap{
			width:1180px; 
			height:722px; 
			background-color:yellow; 
			margin-top:96px;
			position:relative;
		}
		
		

	
	</style>	

	

</head>

<body>

<c:import url="../temp/boot_nav.jsp"></c:import>

 

<div class="wrapper">		

	<section id="container">

<!-- 여기에 페이지 작업 -->

<div class="log_content">
	<div class="login_wrap">
		<h1 class="title">로그인</h1>
		<div class="tab_rad_menu">
		
		</div>
		<div>
			<div id="log_mem" style="display:block; ">
			
			</div>
		
		
		
		</div>
	
	
	
	
	
	</div>
</div> 

<!-- 여기까지 -->

	</section>


</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

 

</body>

</html>