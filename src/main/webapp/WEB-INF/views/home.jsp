<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

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
		width:100%;
		margin-bottom:-290px;
		position:relative; 
		left:50%;
		transform:translate(-50%);
		/*영역 확인용 색상 작업 완료시 삭제*/
/* 		background-color:gray; */
	
	
		}

		#container{
			width:1180px; 
			min-height:100%; 
			margin:0 auto; 
		/*영역 확인용 색상 작업완료시 삭제*/
/* 			background-color:ivory; */
		}
		.push{
		height:290px;		
		}
	</style>	
	
</head>
<body>
<c:import url="./temp/boot_nav.jsp"></c:import>

<div class="wrapper">		
	<section id="container">
<!-- 여기에 페이지 작업 -->




<h1>Contents</h1>






<!-- 여기까지 -->
	</section>
<div class="push"></div>
</div>
 <c:import url="./temp/boot_footer.jsp"></c:import>

</body>
</html>
