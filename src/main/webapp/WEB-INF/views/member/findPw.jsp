<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	
	<title>Home</title>
	
	<style>		
		.html,body{height:100%}
		.wrapper{
			position:relative;
			width:100%;
		}
		#container{
			width:1060px;
			min-height:100%;
			margin:-90 auto -238;
			padding: 117 0 238;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/member_nav.jsp"></c:import>	
	<section id="container">
	
	
	
	
	
		<h1>Contents</h1>
		
		
		
		
		
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>

</body>
</html>


