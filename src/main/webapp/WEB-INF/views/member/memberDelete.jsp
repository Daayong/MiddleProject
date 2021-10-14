<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myPage.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberDelete.css" rel="stylesheet">
	
	<title>회원탈퇴 - 집밥을 특별하게,쿡킷</title>
	
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
				<div id="delete_top">
					<h3>회원탈퇴</h3>
					<div class="top_comment type02">
						<strong>
							CJ쿡킷 회원 탈퇴하시면 제일제당이 운영하고 있는
							<br>
							CJ더마켓/쿡킷/제일제당 홈페이지에서 동시 탈퇴됩니다.
						</strong>				
						<p>회원탈퇴 전 안내사항을 꼭 확인해주세요.</p>
					</div>
					<div class="dinfo_box">
						<strong class="title">적립금, 쿠폰 및 포인트 소멸 안내</strong>
						<ul class="bul_list">
							<li class="bul_dot">
								<i class="bullet"></i>
								회원 탈퇴 시 보유하고 계신 CJ기프트카드,더마켓 기프트카드,
								쿡킷 기프트카드, 쿡킷 스탬프, 쿠폰 등은 자동 소멸되며 복원되지 않습니다.
							</li>
						</ul>				
						<strong class="title">탈퇴 불가 안내</strong>
						<ul class="bul_list">
							<li class="bul_dot">
								<i class="bullet"></i>
								진행 중인 전자상거래 이용내역(결제/배송/교환/반품 중인 상태)이 있거나 
								고객상담 및 이용하신 서비스가 완료되지 않은 경우 서비스 철회 하실 수 없습니다.
							</li>
							<li class="bul_dot">
								<i class="bullet"></i>
								연결된 SMS 계정을 해제하시고 탈퇴해주십시오. 연결해제 없이 계속 진행하시는 
								경우 SMS 서비스 내에서 삭제되지 않습니다.
							</li>
						</ul>
						<strong class="title">개인정보 파기</strong>
						<ul class="bul_list">
							<li class="bul_dot">
								<i class="bullet"></i>
								CJ제일제당(CJ THE MARKET,쿡킷,제일제당 홈페이지) 웹사이트 이용약관
								동의 철회 시에도 CJ ONE 멤버십 서비스 및 타 제휴 브랜드의 이용을 위해 
								회원님의 개인정보 및 거래정보는 CJ ONE 회원 탈퇴 시 까지 보존됩니다.
							</li>
							<li class="bul_dot">
								<i class="bullet"></i>
								고객님께서 보유하셨던 주문내역, 1:1문의, 대량견적 문의, 상품평, 알람 설정등의
								모든 정보는 삭제되며 재가입 시 복원이 불가능합니다.
							</li>
						</ul>
					</div>
					<div class="btn_wrap">
					<button type="button" class="btn pop green" id="memberDelete" name="memberDelete">회원탈퇴</button>
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
		const deleteBtn = document.getElementById('memberDelete');
		deleteBtn.addEventListener('click',function(){
			if(confirm("정말 삭제 하시겠습니까? 확인 버튼 클릭시 자동 로그아웃 됩니다.")==true){
				location.href="./delete";
			}else{
				return false;
			}
		});
	
	
	</script>
 
	
</body>
</html>