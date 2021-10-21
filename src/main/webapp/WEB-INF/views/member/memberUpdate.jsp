<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myPage.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberUpdate.css" rel="stylesheet">
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
		<div class="cont_area">
			<form id="form1" name="form1" method="post" action="update">
				<h3 class="h3">기본정보</h3>
				<div class="table_col">
					<table>
						<colgroup>
							<col class="title">
							<col class="body">
						</colgroup>
						<tbody>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="input_member_name">
										<span>이름</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										 <input readonly="readonly" value="${member.member_name}" id="member_name" name="member_name" class="text put nobox" placeholder="${member.member_name}">
								
									</span>
								</td>
							</tr>
							<tr class="input">	
								<th scope="row" class="mandatory">
									<label for="member_name">
										<span>아이디</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input readonly="readonly" value="${member.member_user_id}" name="member_user_id" id="member_user_id" maxlength="12" class="text put nobox">
									</span>
								</td>
							</tr>
							
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_password">
										<span>비밀번호</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input type="password" placeholder="비밀번호를 입력해주세요." maxlength="50" name="member_password" id="member_password" class="put pws text">
									</span>
									<p class="msg_info em hide" id="msg_pwd">
										비밀번호는 영문자,숫자,특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.
									</p>
									<p class="msg_desc">
										영문자, 숫자, 특수문자 조합하여 8~12자리, 아이디와 4자리이상 동일,
										반복 문자 숫자 불가
										<br>
										사용 가능 특수 문자 : !"#$%&'()*+,-./:;<=>?@[]^_'{|}~
									</p>
								</td>
							</tr>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_password_s">
										<span>비밀번호 확인</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input type="password" placeholder="비밀번호를 재입력해주세요."  id="member_password_s" name="member_password_s" class="pws put text">
									</span>
									<p class="msg_info em hide" id="msg_pwds">
										입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.
									</p>
								</td>
							</tr>
							
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_birth">
										<span>생년월일</span>
									</label>									
								</th>
								<td>							
									<div id="birthday_select">
										<input type="hidden" value="${member.birth_yy}" name="birth_yy">
										<input type="hidden" value="${member.birth_mm}" name="birth_mm">
										<input type="hidden" value="${member.birth_dd}" name="birth_dd">
										<p>${member.birth_yy} 년 &nbsp; ${member.birth_mm} 월 &nbsp; ${member.birth_dd} 일</p>
									</div>

								</td>
							</tr> 
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_phone">
										<span>휴대전화</span>
									</label>									
								</th>
								<td>
							
								<div id="phone_num">
										<div class="select w120">
											<select class="select_wrap"  id="member_phone_f" name="member_phone_f">
											<option class="se" value="010">010</option>
											<option class="se" value="011">011</option>
											<option class="se" value="016">016</option>
											<option class="se" value="017">017</option>
											<option class="se" value="018">018</option>
											<option class="se" value="019">019</option>
											<option class="se" value="070">070</option>
											<option class="se" value="0130">0130</option>
											<option class="se" value="0303">0303</option>
											<option class="se" value="0502">0502</option>
											<option class="se" value="0504">0504</option>
											<option class="se" value="0505">0505</option>
											<option class="se" value="0506">0506</option>
											</select>
											<span class="symbol">-</span>
										</div>
										<div class="select w100">
											<span class="input_txt">
												<input type="text" id="member_phone_m" name="member_phone_m" class="text put" value="${member.member_phone_m}" placeholder="${member.member_phone_m}">
											</span>
											<span class="symbol">-</span>
										</div>
										<div class="select w100">
											<span class="input_txt">
												<input type="text" id="member_phone_b" name="member_phone_b" class="text put" value="${member.member_phone_b}" placeholder="${member.member_phone_b}">
											</span>
										</div>
									</div>
								</td>
							</tr>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_email">
										<span>이메일</span>
									</label>									
								</th>
								<td>
							
								<div id="email_ad">
										<div class="select w180">
											<span class="input_txt">
												<input type="text" id="member_email_f" name="member_email_f" placeholder="이메일 아이디" class="text put" value="${member.member_email_f}" placeholder="${member.member_email_f}">
											</span>
											<span class="symbol">@</span>
										</div>
										<div class="select w180">
											<span class="input_txt">
												<input type="text" id="member_email_b2" name="member_email_b2"  class="text put" placeholder="${member.member_email_b}" value="${member.member_email_b}">
											</span>
											<select class="select_wrap" onchange="chooseDomain();" value="" id="member_email_b" name="member_email_b" >
																			
											<option value="">직접입력</option>
											<option value="nate.com">nate.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="naver.com">naver.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="paran.com">paran.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											</select>
											
										</div>
									</div>
									<p class="msg_desc">
									이메일 주소 입력 시 사용 가능 특수 문자 : - . _
									</p>
								</td>
							</tr>
							
						</tbody>					
					</table>
				</div>
		
				<div class="table_header">
					<h3>마케팅 수신 동의</h3>
				</div>
				<div class="table_col">
					<table>
						<colgroup>
							<col class="title">
							<col class="body">
						</colgroup>
						<tbody>
							<tr class="input">
								<th scope="row" class="man">
									<label for="marketing">
										<span>CJ ONE 마케팅<br>정보 수신 동의</span>
									</label>									
								</th>
								<td>
									<div class="input_group">
										<p class="s_txt">
											개인정보 수집 및 활용 동의 (선택)에 거부한 회원님은 마케팅 정보 수신을 받으실 수 없습니다.			
										</p>			
										<p class="s_txt">
										포인트/이벤트/문화공연/상품 소식을 전해드립니다. (공지목적의 발송되는 메일은 제외)
										</p>
										<div class="marketing_agree">
										  <c:if test="${member.member_marketing_sms eq '1'}">
											<input type="checkbox" id="member_marketing_sms" value="${member.member_marketing_sms}" name="member_marketing_sms" checked>
										  	<label for="member_marketing_sms">SMS</label>
										  </c:if>
										  <c:if test="${member.member_marketing_sms eq '0'}">
											<input type="checkbox" id="member_marketing_sms" value="${member.member_marketing_sms}" name="member_marketing_sms">
										  	<label for="member_marketing_sms">SMS</label>
										  </c:if>	
										  <c:if test="${member.member_marketing_email eq '1'}">
											<input style="margin-left:20px;" type="checkbox" checked value="${member.member_marketing_email}" id="member_marketing_email" name="member_marketing_email">
										    <label for="member_marketing_email">EMAIL</label>
										  </c:if>
										  <c:if test="${member.member_marketing_email eq '0'}">
											<input style="margin-left:20px;" type="checkbox" value="${member.member_marketing_email}" id="member_marketing_email" name="member_marketing_email">
										    <label for="member_marketing_email">EMAIL</label>
										  </c:if>	
										</div>
									</div>
								</td>
							</tr>
						</tbody>
						</table>	
					</div>
			</form>

			
					
		</div>
			<div class="btn_wrap">
				<button style="border:1px solid #ccc;" type="button" class="btn pop" id="uCancel" name="uCancel">취소</button>
				<button type="button" class="btn pop black"  onclick="checkInput();" id="goUpdate" name="goUpdate">수정</button>
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
		
		 const form1=document.getElementById('form1');
		 
		 /*비밀번호 확인*/
		 const pw1=document.getElementById('member_password');
		 const pw2=document.getElementById('member_password_s');
		 const msg_pwds=document.getElementById('msg_pwds');
		 const msg_pwd=document.getElementById('msg_pwd');
		 
		 
		 /*Input id명 선언*/
		 const member_name=document.getElementById('member_name');
		 const member_user_id=document.getElementById('member_user_id');
		 const member_phone=document.getElementById('member_phone_f');
		 const phone_m=document.getElementById('member_phone_m');
		 const phone_b=document.getElementById('member_phone_b');
		 const member_email_f=document.getElementById('member_email_f');
		 const member_email_b=document.getElementById('member_email_b');
		 const member_email_b2=document.getElementById('member_email_b2');
		 
		
		 //selected
		 const member_phone_f = '${member.member_phone_f}';
		 $('.se').each(function() {
			
			 const value= $(this).val();
			 if(value==member_phone_f){
				 $(this).prop("selected", true);
			 }
			 
		});
		 
		 
		 
		 //이메일 주소 도메인 선택시 자동 완성되기 
			function chooseDomain(){
				var idx=member_email_b.options.selectedIndex;
				var val=member_email_b.options[idx].value;
				member_email_b2.value=val;
				member_email_b2.attr("placeholder",val);
			};
		 
		
		 $(member_phone).each(function(){
		   if($(this).val()=="${member.member_phone_f}"){
		     $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
		   }
		 });
		 
			
			
		function checkInput(){
			//패스워드 4글자 이상 여부 확인        
		    if(pw1.value.trim().length < 4){
		       	alert("비밀번호를 입력해 주세요.");
		       	msg_pwd.classList.remove('hide');
		        pw1.focus();
		        return false;
		   	   }
			//패스워드 재입력 여부 확인 
		     if(pw2.value.trim() == ""){
		     	alert("입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
		        pw2.focus();
		         return false;
		     }
			//패스워드 재입력 일치 여부 확인
		     if( pw1.value.trim() != pw2.value.trim() ){
		    	alert("입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
		         pw2.focus();
		         return false;
		   	 } else{
		        msg_pwd.classList.add('hide');
		   	 }
		    //핸드폰 입력 여부 확인
			if(phone_m.value.length <3 || phone_m.value.length>4){
				alert("핸드폰 번호를 확인해주세요.");
				phone_m.focus();
				return false;
			}
			if(phone_b.value.trim().length != 4){
				alert("핸드폰 번호를 확인해주세요.")
				phone_b.focus();
				return false;
			}
			
			//이메일 주소 유효성 검사	
			if(member_email_f.value == ""){
		        alert("이메일 주소를 확인해주세요.");
		        member_email_f.focus();
		        return false;
		    }
		    if(member_email_b2.value == ""){
		        alert("이메일 도메인을 선택 하세요.");
		        member_email_b2.focus();
		        return false;
		    }
		    if(member_email_b2.value.trim() == ""){
		        alert("이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
		        member_email_b2.focus();
		        return false;
		    }
		    	    
			if(confirm('소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다. 이대로 입력하시겠습니까?')){
				if($("#member_marketing_sms").prop("checked")){
					$("#member_marketing_sms").val(1);
					console.log($("#member_marketing_sms").val());
				}else{
					$("#member_marketing_sms").val(0);
					console.log($("#member_marketing_sms").val());
				}
				
				if($("#member_marketing_email").prop("checked")){
					$("#member_marketing_email").val(1);
					console.log($("#member_marketing_email").val());
				}else{
					$("#member_marketing_email").val(0);
					console.log($("#member_marketing_email").val());
				}
				form1.submit();
			}else{
				return false;
			}
		}
	</script>
 
	
</body>
</html>