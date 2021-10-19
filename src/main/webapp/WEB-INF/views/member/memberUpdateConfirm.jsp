<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myPage.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberUpdateConfirm.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<title>개인정보변경 - 집밥을 특별하게,쿡킷</title>
	
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
	
	<!-- 전체 영역  -->
	<div id="my_wrapper">
		<!-- 왼쪽 메뉴탭 -->
		
		<c:import url="../temp/myPage_nav.jsp"></c:import>		
	
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
		<div id="main">
				<div id="update_top">
					<h3>개인정보 변경</h3>
					<div class="uinfo_box">
						<div class="regi_complete">
							<span class="bg"></span>
							<p class="h2_tit">
								회원정보를 수정하시려면 비밀번호를 입력하셔야 합니다.
							</p>
							<p class="h_desc">
								회원님의 개인정보 보호를 위한 본인 확인 절차이오니,
								CJ ONE 회원 로그인 시 사용하시는 비밀번호를 입력해주세요.
							</p>
						</div>
						<form id="pwCheckF" method="post">
						<div class="pwd_box">
							<span class="input_txt w330">
								<input hidden="hidden" value="${member.member_user_id}" id="member_user_id" name="member_user_id">
								<input type="password" id="member_password" name="member_password" class="text" placeholder="비밀번호를 입력해주세요." maxlength="20">
								<p id="pw_msg"></p>
							</span>
						</div>
						</form>
					</div>
					<div class="btn_wrap">
						<button style="border:1px solid #ccc;" type="button" class="btn pop" id="uCancel" name="uCancel">취소</button>
						<button type="button" class="btn pop green"  id="goUpdate" name="goUpdate">확인</button>
					</div>
				</div>
			</div>
		
		</div>
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>
	
	<script type="text/javascript">
		const uCancel = document.getElementById('uCancel');
		
		uCancel.addEventListener('click',function(){
			location.href="../";
		});
		
		//비밀번호 일치 여부 확인 
		$(function(){
			$('#goUpdate').click(function(){
				var member_password = $("#member_password").val();
				var member_user_id = $("#member_user_id").val();	
				$.ajax({
					url:'./pwCheck',
					type:'post',
					data:{member_user_id:member_user_id,member_password:member_password},
					success:function(data){
						console.log(data);
						if(data==1){
							//1.패스워드 일치
							console.log(data);
							location.href="./memberUpdate";
						}else{						
							$("#pw_msg").text("*비밀번호가 일치하지 않습니다.");
						}
					}
				});
			});	
		});
		
	
	</script>
 
	
</body>
</html>