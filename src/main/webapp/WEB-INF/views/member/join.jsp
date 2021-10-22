<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/join.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<title>일반회원 약관동의 | CJ ONE</title>
	
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
			<h1 class="h1_tit">회원 가입</h1>
			<P class="h_desc">
				라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~
			</P>
		</div>
		<div class="cont_area">
			<div class="member_join uni">
				<div class="step_join">
					<ul class="col4">
						<li class="step1">
							약관동의
							<span class="haze">진행 후</span>
						</li>
						<li class="step2 on">
							회원정보 입력
							<span class="haze">진행 중</span>
						</li>
						<li class="step3">
							가입완료
							<span class="haze">진행 전</span>
						</li>
					</ul>
				</div>
			</div>	
		</div>
		<div class="cont_area">
			<form id="form1" name="form1" method="post" action="join">
				<div class="table_header">
					<h3 class="h3_tit">기본정보</h3>
					<div class="info">
						<p class="msg_mandatory">
							<span>표시는 필수 입력 항목입니다.</span>
						</p>
					</div>
				</div>
				<div class="table_col">
					<table>
						<colgroup>
							<col class="title">
							<col class="body">
						</colgroup>
						<tbody>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_name">
										<span>이름</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input type="text" value="" id="member_name" name="member_name" class="text" placeholder="성함을 입력해주세요.">
									</span>
								</td>
							</tr>
							<tr class="input">	
								<th scope="row" class="mandatory">
									<label for="member_user_id">
										<span>아이디</span>
									</label>									
								</th>
								<td>
									<div class="input_group">
										<span class="input_txt w250">
											<input type="text" value="" name="member_user_id" id="member_user_id" maxlength="12" class="text" placeholder="아이디를 입력해주세요.">
										</span>
										<button type="button" class="btn btn_search" id="idCheck">중복확인</button>
										<button type="button" class="btn btn_search" style="background-color:#fff; color:000; font-weight:300;">
											<span>CJ ONE 통합 아이디 안내</span>
										</button>
									</div>
									<p class="msg_info em hide" id="msg_id01">
										6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.
									</p>
									<p class="msg_info em" id="msg_id02"></p>
									<p class="msg_desc">
										CGV, CJ온스타일 등 기존의 CJ ONE 제휴 브랜드 회원님의 경우는 기존에 사용하고 계신
										아이디가 새롭게 생성하신 <br>통합아이디로 변경됩니다.
									</p>
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
										<input type="password" value="" placeholder="비밀번호를 입력해주세요."  maxlength="50" name="member_password" id="member_password" class="text">
									</span>
									<p class="msg_info em hide" id="msg_pwd">
										비밀번호는 4자리 이상 입력해야 합니다.
										<!-- 비밀번호는 영문자,숫자,특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다. -->
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
										<input type="password" placeholder="비밀번호를 재입력해주세요." value="" id="member_password_s" name="member_password_s" class="text">
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
										<div class="select w120">
											<select class="select_wrap"id="birth_yy" name="birth_yy">
											<option value="0">년</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											</select>
											<span class="symbol">년</span>
										</div>
										<div class="select w70">
											<select class="select_wrap" id="birth_mm" name="birth_mm">
											<option value="0">월</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											</select>
											<span class="symbol">월</span>
										</div>
										<div class="select w70">
											<select class="select_wrap" id="birth_dd" name="birth_dd">
											<option value="0">일</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											</select>
											<span class="symbol">일</span>
										</div>
									</div>
									<p class="msg_desc">
										설정하신 생일을 기준으로 15일 전 생일쿠폰이 발행됩니다.
									</p>
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
											<select class="select_wrap"  id="phone_f" name="phone_f">
											<option>010</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
											<option value="070">070</option>
											</select>
											<span class="symbol">-</span>
										</div>
										<div class="select w120">
											<span class="input_txt">
												<input type="text" onkeypress="javascript:checkInputNum();" id="member_phone_m" value="" name="member_phone_m" class="text put">
											</span>
											<span class="symbol">-</span>
										</div>
										<div class="select w120">
											<span class="input_txt">
												<input type="text" id="member_phone_b" onkeypress="javascript:checkInputNum();" value="" name="member_phone_b" class="text put">
											</span>
										</div>
									</div>
									<p class="msg_desc">
										주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수 있습니다.
									</p>
								</td>
							</tr>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_email_f">
										<span>이메일</span>
									</label>									
								</th>
								<td>
							
								<div id="email_ad">
										<div class="select w180">
											<span class="input_txt">
												<input type="text" id="member_email_f" val="" name="member_email_f" placeholder="이메일 아이디" class="text put">
											</span>
											<span class="symbol">@</span>
										</div>
										<div class="select w180">
											<span class="input_txt">
												<input type="text" id="member_email_b2" value="" name="member_email_b2" placeholder="이메일 도메인" class="text put">
											</span>
											<select class="select_wrap" onchange="chooseDomain();" id="member_email_b" name="member_email_b">
											<option value="">직접입력</option>
											<option value="nate.com">nate</option>
											<option value="hanmail.net">hanmail</option>
											<option value="naver.com">naver</option>
											<option value="yahoo.co.kr">yahoo</option>
											<option value="paran.com">paran</option>
											<option value="hotmail.com">hotmail</option>
											<option value="gmail.com">gmail</option>
											<option value="dreamwiz.com">dreamwiz</option>
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
					<h3 class="h3_tit">선택정보</h3>
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
									<div class="input_group" style="height:60px; ">
										<p class="msg_desc" style="font-size:14px; color:#222222;">
										포인트/이벤트/문화공연/상품 소식을 전해드립니다. (공지목적의 발송되는 메일은 제외)
										</p>
										<div class="marketing_agree">
										  <input type="checkbox" id="member_marketing_sms" value="" class="marketing" name="member_marketing_sms">
										  <label for="member_marketing_sms">SMS</label>
										  <input style="margin-left:20px;" type="checkbox" id="member_marketing_email" class="marketing" value="" name="member_marketing_email">
										  <label for="member_marketing_email">EMAIL</label>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
						</table>	
					</div>
			</form>
					<div class="btn_sec col2">
						<button type="button" style="width:160px;" class="btn" id="btn_prev">취소</button>
						<button type="button" class="btn btn_em" onclick="checkInput();" id="btn_join">등록</button>
					</div>	
					
					<div class="final_info">
						<h3 style="font-size:18px; color:#555; font-weight:400;">이용안내</h3>
						<p class="s_txt">
							CJ ONE 회원가입 후에도 각 제휴 브랜드 웹사이트에서 통합 아이디를 사용하여 로그인 하시려면, 각 브랜드 웹사이트의 이용약관에 대한 동의를 거친 후에 이용 가능합니다.
						</p>
						<p class="s_txt">
							개인정보 수집 및 활용 동의 (선택)에 거부한 회원님은 마케팅 정보 수신을 받으실 수 없습니다.			
						</p>
					</div>
					
		</div>
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>


<!-- 아이디 중복체크 ajax -->
<script>
	//form submit 할때 아이디 중복검사 여부 확인용 변수
	let check = true;

	$(function(){
		$('#idCheck').click(function(){
			var member_user_id = $("#member_user_id").val();
					
			$.ajax({
				url:'./idCheck',
				type:'get',
				data:{member_user_id:member_user_id},
				success:function(data){
					console.log("1=중복 / 0=중복x /2=비어있음:" +data);
					if(data ==1){
						//1.아이디가 중복될때
						$("#msg_id01").css("display","none");
						$("#msg_id02").text("이미 사용중인 아이디입니다. 다른 아이디로 입력해주세요.");
						check=true;
					}else if(data==0){						
						$("#msg_id02").text("사용 가능한 아이디 입니다.");
						check=false;
					}else{
						$("#msg_id02").text("아이디를 입력하세요.");
						check=true;
					}
				}
			});
		});	
	});
	 
	 /*취소 버튼*/
	 const bp=document.getElementById('btn_prev');
	 /*등록 버튼*/
	 const ba=document.getElementById('btn_join');
	 const form1=document.getElementById('form1');
	 
	 /*비밀번호 확인*/
	 const pw1=document.getElementById('member_password');
	 const pw2=document.getElementById('member_password_s');
	 const msg_pwds=document.getElementById('msg_pwds');
	 const msg_pwd=document.getElementById('msg_pwd');
	 
	 
	 /*Input id명 선언*/
	 const member_name=document.getElementById('member_name');
	 const member_user_id=document.getElementById('member_user_id');
	 const member_email=document.getElementById('msg_email');
	 const member_phone=document.getElementById('msg_phone');
	 const member_birth=document.getElementById('msg_birth');
	 const birth_yy=document.getElementById('birth_yy');
	 const birth_mm=document.getElementById('birth_mm');
	 const birth_dd=document.getElementById('birth_dd');
	 const phone_m=document.getElementById('member_phone_m');
	 const phone_b=document.getElementById('member_phone_b');
	 const member_email_f=document.getElementById('member_email_f');
	 const member_email_b=document.getElementById('member_email_b');
	 const member_email_b2=document.getElementById('member_email_b2');
	 
	//---------------------------취소 버튼 클릭시 홈페이지로 이동 
	bp.addEventListener('click',function(){
		if(confirm('회원가입을 취소하시겠습니까?')==true){
			location.href="../";		
		}else{
			return false; 
		}	
	});

	//이메일 주소 도메인 선택시 자동 완성되기 
	function chooseDomain(){
		var idx=member_email_b.options.selectedIndex;
		var val=member_email_b.options[idx].value;
		member_email_b2.value=val;
	};
	//숫자만 입력할수 있게 하는 함수 
	function checkInputNum(){
		if((event.keyCode<48)||(event.keyCode>57)){
			event.returnValue=false;
		}
	}
	
	
	//회원가입 유효성검사 
	function checkInput(){
		//이름 입력 유효성 검사
		if( member_name.value.trim()=="") {
	        	alert("이름을 입력해 주세요.");
	            member_name.focus();
	            return false;
	        }
	    //아이디 입력 유효성 검사    
		if( member_user_id.value.trim()=="") {
	        	alert("아이디를 입력해 주세요.");
	            member_user_id.focus();
	            return false;
	        }
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
	    
	    //생년월일 선택 여부 확인 
	    
	    if(birth_yy.value =="0"){
			alert("생년월일을 선택하세요.");
	        birth_yy.focus();
	        return false;
		}
	    if(birth_mm.value =="0"){
			alert("생년월일을 선택하세요.");
	        birth_mm.focus();
	        return false;
		}
		if(birth_dd.value =="0"){
			alert("생년월일을 선택하세요.");
	        birth_dd.focus();
	        return false;
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
	    if(member_email_b.value == "0" && member_email_b2.value.trim() == ""){
	        alert("이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
	        member_email_b2.focus();
	        return false;
	    }
	    
	    if(check){
	    	alert("아이디 중복 확인을 해주세요.");
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
