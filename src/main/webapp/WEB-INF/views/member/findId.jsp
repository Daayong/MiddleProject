<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	
	<title>아이디 찾기 | CJ ONE</title>
	
	<style>		
		.html,body{height:100%}
		.wrapper{
			position:relative;
			width:100%;
		}
		#container{
			width:1060px;
			min-height:100%;
			margin:-60 auto -238;
			padding: 60 0 238;
		}
		
		#container .cont_header {padding-top:75px; text-align:center;}
		#container .h1_tit{font-size:48px; line-height:48px; color:#222; }
		#container .cont_header .h_desc {padding-top:30px; color:#555; font-size:16px; font-weight:380; letter-spacing:-0.5px;}
		
		#container .id_find_wrap{width:1060px; height:432px; display:block; padding:50px; border-top:1px solid #222; background-color:#f8f8f8; margin:60px 0 75px 0; }
		#container .find_handy{width:317px; padding-right:50px; border-right:1px solid #ddd; }
	
		#container .find_handy .tit_box 
	
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/member_nav.jsp"></c:import>	
	<section id="container">
		<div class="cont_header" >
			<h1 class="h1_tit">아이디 찾기</h1>
			<P class="h_desc">
				아이디가 기억나지 않으세요? 원하시는 방법을 선택해 아이디를 확인하실 수 있습니다.
			</P>
		</div>
		<div class="id_find_wrap">
			<div class="find_area">
				<div class="find_handy">
					<div class="tit_box">
						<h2 class="h3_tit">간편 찾기</h2>
						<p class="desc">입력하신 정보는 아이디 찾기에만 사용되며<em class="em">저장되지 않습니다</em></p>
						<form  class="ffrm" name="findIdForm" action="findId" method="POST">
							<input type="text" style="margin-bottom:10px;"  name="fname" id="fname" placeholder="&nbsp; 이름을 입력해주세요">
							<input type="text" style="margin-bottom:10px;"  name="fbirth" id="fbirth" placeholder="&nbsp; 법정생년월일 6자리를 입력해주세요">
							<input type="text" name="fphone" id="fphone" placeholder="&nbsp; 휴대전화번호 뒤 7~8자리를 입력해주세요(01x 제외)">	
							<button class="fId_btn" type="button" name="fId" id="fId">아이디찾기</button>	
						</form>
					</div>
				</div>
			
			
			</div>
		
		</div>
		
	
	
	
		
		
		
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>

</body>
</html>
