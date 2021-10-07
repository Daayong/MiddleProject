<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	
	<title>회원가입여부 확인 | CJ ONE</title>
	
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
	
		<div class="cont_header" >
			<h1 class="h1_tit">쿡킷+CJ ONE 통합회원 가입</h1>
			<P class="h_desc">
				통합 아이디로 CJ ONE 브랜드 혜택도 받고! 포인트도 쌓고!
			</P>
		</div>
		<div class="check_member">
			
		
		</div>
		
	
	
	
		
		
		
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>

</body>
</html>
