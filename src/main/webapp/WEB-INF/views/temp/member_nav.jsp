<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<title>Insert title here</title>
<style>
	#header{background-color:#222;height:90px; }
	#header .header_wrap {width:1060px; height:90px;position:absolute; left:50%; transform:translate(-50%);}
	#header .header_wrap .l_header {width:500px;height:90px; position:relative; float:left;}
	#header .header_wrap .l_header .cj_logo{position:relative; letter-spacing:0.5px;  float:left;color:#8f8f8c; font-weight:400; font-size:18px; line-height:90px;}
	#header .header_wrap .l_header .logo {display:block; position:relative; float:left; margin-right:15px; width:110px; height:30px; background:url(${pageContext.request.contextPath}/resources/images/my/logo_part.png);top:30px; left:0; text-indent:-9999em;}
	#header .header_wrap .r_header {width:500px;height:60px; margin-top:30px;  position:relative; float:right; }
	#header .r_header .part_logo { letter-spacing:0.5px;color:#8f8f8c; font-size:16px; line-height:55px; text-align:right;}
	#header .r_header .part_logo img {margin-left:10px; vertical-align:middle;}


</style>
</head>
<body>


<div id="header">
	<div class="header_wrap">
		<div class="l_header">	
			<h1 class="cj_logo">
				<span class="logo">CJ ONE</span>
				LIFESTYLE MEMBERSHIP
			</h1>
		</div>
		<div class="r_header">
			<p class="part_logo">
				새벽에 배송 받아 그날 요리하는 셰프의 요리키트
				<img src="${pageContext.request.contextPath}/resources/images/my/20190703_0921211.png" alt="쿡킷">
			</p>
		</div>
	</div>
</div>


</body>
</html>