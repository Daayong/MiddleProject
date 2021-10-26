<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>


	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/login.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
		
		
	</style>	

	
	
</head>

<body>
<div class="wrapper">	
<c:import url="../temp/boot_nav.jsp"></c:import>	

	<section id="container">

<!-- 여기에 페이지 작업 -->

<div class="log_content">
	<div class="login_wrap">
		<h1 class="title">로그인</h1>
		<div class="login_area">
			<div class="tab_log_menu">
				<ul>
					<li style="display:inline-block; margin-right:20px; ">
						<div class="log_Tab_wrap">
							<button type="button" id="logMember"class="logMem logTab" style="color:#101010;font-weight:bolder;">회원 로그인</button>
							<div class="dashed" id="dd" style="display:block;"></div>
							<!--스크립트: 선택시 .login_cont none/block  -->
						</div>
					</li>
					
					<li style="display:inline-block; ">
						<div class="log_Tab_wrap">
							<button type="button" id="nonlogMember" class="nonlogMem logTab" style="color:#606060; display:none;" >비회원 주문조회</button>
							<div class="dashed" id="ndd" style="display:none;"></div>
						</div>
					</li>
				</ul>
			</div>
			
			
			<!-- 회원 로그인  -->
			<div>
				<div id="log_mem" class="login_cont" style="display:block; ">
					<div class="fieldset"> 
						<form id="memFrm" class="frm" action="login" method="post" name="loginForm">
							<input type="hidden" value="${check}" name="check">
							<input type="hidden" value="${returnUrl}" name="returnUrl">
							<input type="text" style="margin-bottom:10px;"  name="member_user_id" id="id" placeholder="&nbsp; CJ ONE 통합아이디 6~20자">
							<input type="password" name="member_password" id="pw" placeholder="&nbsp; 비밀번호 영문,특수문자,숫자혼합 8~12자">	
							
							<div style="height:69px; padding-top:23px;">
								
								<div class="check_wrap">
										<input type="checkbox" id="logSave">
										<label for="logSave"><span>아이디저장</span></label>
								</div>
								
								<div class="find_wrap">
									<a class="find_id find" href="./findLog">아이디/비밀번호 찾기</a>
								</div>
							
							</div>
						
							<button class="log_btn" type="submit" id="log">로그인</button>
						</form>
					
					<div class="easy_login">
						<ul class="easy_ul">	
							<li class="mobile"><a href="#"></a></li>
							<li class="kakao"><a href="#"></a></li>
							<li class="naver"><a href="#"></a></li>
							<li class="facebook"><a href="#"></a></li>	
						</ul>
					</div>
			
				<div class="box_induce">
					<strong style="font-size:18px; color:#101010; letter-spacing:-0.5px; ">CJ ONE 통합회원이 아니신가요?</strong>			
					<p style="font-size:13px; margin:10px 0;">
					CJ ONE 통합회원으로 가입하시면 CJ제일제당의 다양한 서비스(COOKIT,CJ<br>
					THE MARKET,CJ제일제당 홈페이지)를 이용하실 수 있습니다.</p>
				
					<button class="rec_link" type="button" id="rec"><span>CJ ONE 통합회원 신규가입하기</span></button>
				</div>		
			
					</div>
				</div>
			</div> <!--회원 로그인 완료 -->
			
			
			
			<!--비회원 주문 조회  -->
				<div id="log_non_mem" style="display:none;">
						<form id="nonMemFrm" class="frm" action="ordSearch" method="post" name="nonMemForm">
							<input type="text" style="margin-bottom:10px;" name="ordNum" id="ordNum" placeholder="&nbsp주문번호 입력">
							<input type="text" name="ordPw" id="ordPw" placeholder="&nbsp주문 비밀번호 입력">	
						
							<button class="ordS_btn log_btn" style="margin-top:30px;" type="submit" id="nonlog">주문/배송 조회</button>
						
						</form>
						
						<div class="box_induce">
								<p>
								주문 시 입력한 주문비밀번호와 문자로 발송된 주문번호를 입력하시면 주문내역/<br>
								&nbsp;&nbsp;&nbsp;&nbsp;배송현황을 조회할 수 있습니다.</p>	
								<p>
								비회원으로 구매 시 쿠폰 및 포인트적립 혜택을 받으실 수 없습니다.
								</p>
								<p>
								주문번호 및 주문비밀번호를 잊어버리셨다면 COOKIT 고객행복센터 1668-1920<br>
								&nbsp;&nbsp;&nbsp;&nbsp;로 문의해주세요.</p>
						</div>
						
				</div><!-- 비회원 주문조회 완료 -->
	
			
			
				
			
		</div>
	
	
		
	
	
	

	
	</div>
</div> 

<!-- 여기까지 -->

	</section>


</div>




 <c:import url="../temp/boot_footer.jsp"></c:import>


	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member/login.js"></script>
 		<script type="text/javascript">
		$(function(){
			let result = '${msg}';
			if(result !=''){
				alert(result);
			}	
		});
 		
	</script>
 
 
 
 

</body>

</html>