
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Home</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	</style>	
	
	</head>
	<body>
	<c:import url="./temp/boot_nav.jsp"></c:import>
		
		<div class="wrapper">		
		<!-- 여기에 페이지 작업 -->
		
		
			<h1>Content</h1>
		
		
		<!-- 여기까지 -->
		<div class="push"></div>
		</div>
		<c:import url="./temp/boot_footer.jsp"></c:import>
	</body>
</html>
