<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="${pageContext.request.contextPath}/resources/css/topButton.css" rel="stylesheet">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="fix_button top ui_gotoTop show">
		<a href="#wrap" role="button">
		</a>
	
	</div>
	
	
	
	
<script>
$(window).scroll(function(){
	if ($(this).scrollTop() > 300){
		$('.btn_gotop').show();
	} else{
		$('.btn_gotop').hide();
	}
});
$('.btn_gotop').click(function(){
	$('html, body').animate({scrollTop:0},400);
	return false;
});
</script>	
</body>
</html>