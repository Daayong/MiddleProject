 <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	
	<title>Home</title>
	
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
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="./temp/boot_nav.jsp"></c:import>	
	<section id="container">
	
	
	<c:if test="${not empty member}">
		<h3>Login이 성공했을때 보이는 문장</h3>
	</c:if>
	
	<c:if test="${empty member}">
		<h3>Login을 하기전 보이는 문장</h3>
	</c:if>
		
		
		
		
	</section>
 	<c:import url="./temp/boot_footer.jsp"></c:import>
</div>

</body>
</html> 


