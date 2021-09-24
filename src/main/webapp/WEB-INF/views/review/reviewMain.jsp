<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		.wrapper{
		min-height:100%;
		margin-top:85px;
		margin-bottom:-290px;
		}
		.push{
		height:290px;		
		}
/* 		css 작업 내용 */
		#container{
			width: 1190px;
			margin: 0 auto;
			position: relative; 
		}
		#content{
			min-height: 900px;
			padding-bottom: 140px;
			padding-top: 52px;
		}
		
/* 		css 작업 내용 */
	</style>	
	
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

<div class="wrapper">		
<!-- 여기에 페이지 작업 -->


	<section id="container">
		<div id="content">
			<div class="review_warp">
				<div class="best_review">
				</div>
				<div class="family_review">
				</div>
				<div class="">
				</div>
				<div class="">
				</div>
			</div>
			<h1>Contents</h1>
			<h2>${pageContext.request.contextPath}</h2>
		</div>
	</section>
	


<!-- 여기까지 -->
<div class="push"></div>
</div>
 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>
</html>
