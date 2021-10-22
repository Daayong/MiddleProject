<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<title>아이디/비밀번호 찾기 | CJ ONE</title>
	
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
		
		#container .cont_header {display:block; padding-top:75px; text-align:center;}
		#container .h1_tit{font-size:48px; line-height:48px; color:#222; }
		#container .cont_header .h_desc {padding-top:30px; color:#555; font-size:16px; font-weight:380; letter-spacing:-0.5px;}
		
		#container .id_find_wrap{width:1060px; height:432px;display:block;  padding:50px; border-top:1px solid #222; background-color:#f8f8f8; margin-bottom:60px; }
		.find_area >div{position:absolute;width:960px; }
		.tit_box{position:relative; width:100%; }
		.border{display:inline-block; float:left; width:470px;border-right:2px solid #ddd; }
		.findId{display:inline-block; width:420px; float:left; text-align:center; }
		.ffrm input{display:inline-block; width:350px; height:35px; margin-bottom:20px; }
		
		.findPw{display:inline-block; width:430px;float:right; text-align:center; }
		.ffrm2 input{display:inline-block; width:350px; height:35px; margin-bottom:20px;  }
		.btn{width:200px; height:40px; background-color:#333333; color:#fff; margin-top:20px; }
		.desc{margin:10px 0 20px 0;  }
		.desc .em{color:#EE6900; font-style:normal;}
		.goback{width:1060px;margin:30px 0 10px; }
		.goback a{display:block;background: url(${pageContext.request.contextPath}/resources/images/common/ico_home.png) 84% no-repeat; font-size:14px; }
		.goback a span{display:block; text-align:right; color:#606060; }
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/member_nav.jsp"></c:import>	
	<section id="container">
		<div class="cont_header" >
			<h1 class="h1_tit">아이디 / 비밀번호 찾기</h1>
			<P class="h_desc">
				아이디 혹은 비밀번호가 기억나지 않으세요? 간편하게 확인하실 수 있습니다.
			</P>
		</div>
		<div class="goback">
			<a href="${pageContext.request.contextPath}"><span>COOKIT홈페이지로 돌아가기</span></a>
		</div>
		<div class="id_find_wrap">
			<div class="find_area">
				<div>
					<div class="tit_box">
						<div class="border">
						<div class="box findId">
							<h2 class="h3_tit">아이디 찾기</h2>
							<p class="desc">입력하신 정보는 아이디 찾기에만 사용되며 <em class="em">저장되지 않습니다.</em></p>
							<form  class="ffrm" id="findIdForm" method="GET">
								<input type="text" name="member_name" id="Imember_name" placeholder="&nbsp; 이름을 입력해주세요">
								<input type="text" name="member_birth" id="Imember_birth" placeholder="&nbsp; 법정생년월일 8자리를 입력해주세요(숫자만 입력)">
								<input type="text" name="member_phone" id="Imember_phone" placeholder="&nbsp; 휴대전화번호를 입력해주세요(숫자만 입력)">	
								<p id="id_msg" class="em"></p>
								<button class="fId_btn btn" type="button"  id="find_id">아이디찾기</button>	
							</form>
						</div>
						</div>
						<div class="box findPw">
							<h2 class="h3_tit">비밀번호 찾기</h2>
							<p class="desc">입력하신 정보는 임시비밀번호 발급에만 사용되며 <em class="em">저장되지 않습니다.</em></p>
							<form class="ffrm2" id="findPwForm" method="GET">
								<input type="text" name="member_user_id" id="Pmember_id" placeholder="&nbsp; 아이디를 입력해주세요">
								<input type="text" name="member_birth" id="Pmember_birth" placeholder="&nbsp; 법정생년월일 8자리를 입력해주세요(숫자만 입력)">
								<input type="text" name="member_phone" id="Pmember_phone" placeholder="&nbsp; 휴대전화번호를 입력해주세요(숫자만 입력)">	
								<button class="fPw_btn btn" type="button" name="quickpass" id="quickpass">임시비밀번호 발급하기</button>	
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>


<script type="text/javascript"> 
//아이디 찾기(콘솔창에 띄워줄것)
$(function(){
	$('#find_id').click(function(){
		var member_birth = $("#Imember_birth").val();
		var member_user_id = $("#member_user_id").val();
		var member_name = $("#Imember_name").val();
		var member_phone = $("#Imember_phone").val();
		$.ajax({
			url:'./findId',
			type:'post',
			data:{member_birth:member_birth,member_name:member_name,member_phone:member_phone},
			success:function(data){
				if(data =='1'){
					alert("정보와 일치하는 아이디가 없습니다.");
				}else{
					var msg='고객님의 아이디는 '+data+' 입니다.';
					alert(msg);
					
				}
			}
		});
	});	
});

//임시비밀번호 발급(콘솔창에 띄워줄것)
$(function(){
	$('#quickpass').click(function(){
		var member_birth = $("#Pmember_birth").val();
		var member_user_id = $("#Pmember_id").val();
		var member_phone = $("#Pmember_phone").val();
		$.ajax({
			url:'./quickPass',
			type:'post',
			data:{member_birth:member_birth,member_user_id:member_user_id,member_phone:member_phone},
			success:function(data){
				console.log(data);
				if(data =='1'){
					alert("일치하는 정보가 없습니다.");
				}else{
					var msg='발급된 임시 비밀번호는 "'+data+'" 입니다. 비밀번호는 MY쿡킷>고객정보변경 페이지에서 변경 하실 수 있습니다.';
					alert(msg);
				}
			}
		});
	});	
});




</script>
</body>
</html>
