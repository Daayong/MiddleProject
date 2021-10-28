<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/cs/formCounsel.css" rel="stylesheet">
	
	<title>My쿡킷 - 집밥을 특별하게,쿡킷</title>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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
	<div id="my_wrapper" class="my_wrap">
		<!-- 왼쪽 메뉴탭 -->
		
		<c:import url="../temp/myPage_nav.jsp"></c:import>
		
		
		
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
			
			<div class="order_view my_activity">
				<h3>1:1 문의</h3>
			<div class="top_sec">
				<div class="tab_menu">
					<ul>
						<li class="on"><a nohref="">1:1 문의 작성</a></li>
						 <!-- 선택된 메뉴에 on클래스 추가 -->
						<li><a href="${pageContext.request.contextPath}/myAct/customerCounselList">1:1 문의 내역</a></li>
					</ul>
				</div>
			</div>
			
			<!-- 문의작성 폼 -->
			<form action="./formCounsel" method="POST" enctype="multipart/form-data" >
				<input type="hidden" name="mode" value="create">
				
				<div class="cate_wrap">
					<h4>문의유형<span class="bul_req"><span class="hide">필수 입력</span></span></h4>
					<ul class="rad_tab_wrap">
				
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate1" value="배송" data-csl-ttl="배송" checked="" class="accessibility-keyboard">
										<label for="inquiry_cate1"><span>배송</span></label>
								</span>
							</li>
		
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate2" value="주문/결제" data-csl-ttl="주문/결제" class="accessibility-keyboard">
										<label for="inquiry_cate2"><span>주문/결제</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate3" value="취소/반품" data-csl-ttl="취소/반품" class="accessibility-keyboard">
										<label for="inquiry_cate3"><span>취소/반품</span></label>
								</span>
							</li>
							
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate4" value="쿡킷메뉴/상품" data-csl-ttl="쿡킷메뉴/상품" class="accessibility-keyboard">
										<label for="inquiry_cate4"><span>쿡킷메뉴/상품</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate5" value="회원/포인트" data-csl-ttl="회원/포인트" class="accessibility-keyboard">
										<label for="inquiry_cate5"><span>회원/포인트</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate6" value="이벤트" data-csl-ttl="이벤트" class="accessibility-keyboard">
										<label for="inquiry_cate6"><span>이벤트</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate7" value="영수증/증빙" data-csl-ttl="영수증/증빙" class="accessibility-keyboard">
										<label for="inquiry_cate7"><span>영수증/증빙</span></label>
								</span>
							</li>
				
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate8" value="사이트이용" data-csl-ttl="사이트이용" class="accessibility-keyboard">
										<label for="inquiry_cate8"><span>사이트이용</span></label>
								</span>
							</li>
					
							<li>
								<span class="rad_wrap">
									<input type="radio" name="qna_type" id="inquiry_cate9" value="기타" data-csl-ttl="기타" class="accessibility-keyboard">
										<label for="inquiry_cate9"><span>기타</span></label>
								</span>
							</li>
						
					</ul>
	
					<!-- script 요청사항 : 체크박스 클릭 시 해당 아이디 영역 노출 / 없으면 비노출 -->
					<div class="cate_sum_cont ui_cateSumCont1" id="ship" style="display:block;">
						<div class="noti_box">
							<p class="tit">문의 전 확인해주세요.</p>
							<ul class="bul_list">
								<li class="bul_dot">
									<i class="bullet"></i> 배송 진행 상태는 마이페이지에서 확인하실 수 있습니다.
									<!-- myOrderList link 추가 -->
									<a href="#" class="txt_link"><span>주문/배송조회 바로가기</span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="cate_sum_cont ui_cateSumCont2" id="pay">
						<div class="noti_box">
							<p class="tit">문의 전 확인해주세요.</p>
							<ul class="bul_list">
								<li class="bul_dot">
									<i class="bullet"></i> 결제 및 입금확인 상태는 마이페이지에서 확인하실 수 있습니다.
									
									<!-- myOrderList link 추가 -->
									<a href="#" class="txt_link"><span>주문/배송조회 바로가기</span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="cate_sum_cont ui_cateSumCont3" id="cancel">
						<div class="noti_box">
							<p class="tit">문의 전 확인해주세요.</p>
							<ul class="bul_list">
								<li class="bul_dot">
									<i class="bullet"></i> 주문 취소/반품/환불관련 신청 및 조회는 마이페이지에서 확인하실 수 있습니다.
									<!-- cml link 추가 -->
									<a href="#" class="txt_link"><span>취소/반품조회 바로가기</span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="cate_sum_cont ui_cateSumCont5" id="point">
						<div class="noti_box">
							<p class="tit">문의 전 확인해주세요.</p>
							<ul class="bul_list">
								<li class="bul_dot">
									<i class="bullet"></i> 나의 포인트 및 쿠폰 현황은 마이페이지에서 확인하실 수 있습니다.
									<!-- myCpn link 추가 -->
									<a href="#" class="txt_link"><span>마이페이지 바로가기</span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="cate_sum_cont ui_cateSumCont7" id="reciept">
						<div class="noti_box">
							<p class="tit">문의 전 확인해주세요.</p>
							<ul class="bul_list">
								<li class="bul_dot">
									<i class="bullet"></i> 세금계산서 신청 및 조회는 마이페이지에서 확인하실 수 있습니다.
									<!-- taxBillList link 추가 -->
									<a href="#" class="txt_link"><span>세금계산서 신청 바로가기</span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
	
				<div class="top_sec input_top_sec" >
					<h4>배송</h4><!--.rad_wrap 클릭 시 해당 카테명 뽑아주세요. -->
				</div>
			
				
				<div class="input_order pro_inquiry">
					<dl class="one_dep row1 orderSelectArea">
						<dt>주문/상품 선택</dt>
						<dd>
							<div class="order_list" id="order_list" name="cslPrdList">
		
									
								<!-- 선택된 상품이 없을 때 -->
								<div class="pro_box no_pro"  style="display: block;">
									<span class="txt">문의할 주문번호 또는 상품을 선택해주세요.</span>
								</div>
								<!-- //선택된 상품이 없을 때 -->
	
								<!-- 선택된 상품이 있을 때 -->
								<div class="pro_box pro_info"  style="display: none;">
									<input type="text" id="input_payment_id" readonly="readonly" style="outline: none; border: none;" name="payment_id" value="">
									<span class="txt">/
									<input type="text" id="input_product_name" readonly="readonly" style="outline: none; border: none;" name="qna_product_name" value="">
									
									<span class="hide">상품명</span></span>
									<button type="button" onclick="javascript:cancelCheck();" class="btn_cancle"><span class="hide">선택취소</span></button>
								</div>
								<!-- //선택된 상품이 있을 때 -->
								<button type="button" class="btn sub green" id="lookUp_payment" ><span>조회</span></button>
							</div>
						</dd>
					</dl>
					<dl class="one_dep">
						<dt>문의내용<span class="bul_req"><span class="hide">필수 입력</span></span></dt>
						<dd>
							<div class="textarea">
								<textarea id="qna_content" name="qna_content" spellcheck="false" style="outline: none;" cols="80" rows="5" title="qna_content" placeholder="문의 내용을 입력해주세요"  class="ui_inputLimit" maxlength="1000"></textarea>
								<div id="result" class="result_txt"><span class="ui_inputLimitCount">0</span>/1000자</div>
							</div>
							<div class="btm_noti">
								<ul class="bul_list">
									<li class="bul_dot"><i class="bullet"></i> 고객님의 개인정보(이름,핸드폰 번호, 계좌번호 등) 입력 시 관리자에 의해 임의 삭제될 수 있습니다.</li>
									<li class="bul_dot"><i class="bullet"></i> 개인정보 및 환불계좌번호 변경 등 개인정보 관련 문의는 행복고객센터로 연락 부탁 드립니다.</li>
								</ul>
							</div>
						</dd>
					</dl>
						<dl class="one_dep">
						<dt>첨부파일</dt>
						<dd>
							<div class="scroll">
								<div class="add_file_wrap" style="width: 276px;" >
									<ul>
										<li>
											<div class="add_file_frame">	
												<input type="file" class="trans_add_file" name="file" accept="image/*" multiple="multiple" title="파일 추가 선택">
											<span class="add_file" style="width: 128px; height: 128px;"><span class="hide">파일 추가 선택</span></span>	
											</div>
										</li>
										
									</ul>
								</div>
							</div>
							<div class="file_info">
								<ul class="bul_list">
									<li class="bul_dot">
										<i class="bullet"></i> 최대 5장 등록 (PNG, JPEG, JPG, GIF 포맷)
									</li>
								</ul>
								<span class="file_size"><span class="now">0</span>/30MB</span>
							</div>
						</dd>
					</dl>
						
					<dl class="one_dep answer_alr ui_answerWrap">
						<dt>답변알림<span class="bul_req"><span class="hide">필수 입력</span></span></dt>
						<dd>
						
							<dl class="two_dep">
							
								<dt>
									<div class="chk_wrap">
										<input type="checkbox" id="email" name="checkme" class="accessibility-keyboard"  >
										<label for="email">E-mail 수신	
										</label>
									</div>
								</dt>
								<dd>
									<div class="input_email">
										<div class="input_wrap ema_id dis">
											<input type="text" class="txt emailCheck" disabled="disabled" id="qna_email_id" title="이메일 아이디" name="qna_email_id" value="" onkeyup="this.value=this.value.replace(/[^a-zA-Z-_0-9]/g,'');">
										</div>
										<span class="at">@</span>
										<div class="input_wrap dis">
											<input type="text" class="txt emailCheck" disabled="disabled"  title="이메일 도메인 직접입력" name="qna_email_domain1" id="qna_email_domain1" onkeyup="this.value=this.value.replace(/[^a-zA-Z-_0-9_.]/g,'');">
										</div>
										<span class="item_wrap ui_selectbox dis" >
										<select id="qna_email_domain2" disabled="disabled" class="required emailCheck" name="qna_email_domain2"  title="이메일 도메인 주소 선택" onchange="setEmailDomain(this);">
											<option value="1">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="gmail.com">gmail.com</option>
	
									</select>
											<span class="ico_arr"></span>
										</span>
									</div>
								</dd>
									</dl>
							<dl class="two_dep">
								<dt>
									<div class="chk_wrap">
										<input type="checkbox" id="sms" name="anwer" class="accessibility-keyboard">
										<label for="sms">SMS
											
										</label>
									</div>
								</dt>
								<dd>
									<div class="input_mobile_num">
										<span class="item_wrap ui_selectbox dis" ui-modules="Selectbox,CustomSelectbox">
											<label for="input_phone01" class="hide">휴대폰 앞자리 선택</label>
		
							<!-- check 안할시 disabled 넣어주기 -->
							<select id="input_phone1" name="qna_phone_f" disabled="disabled" class="required phoneCheck" title="휴대폰 앞자리를 선택해주세요." >
									<option value="010" selected="selected">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								
											</select>
											<span class="ico_arr"></span>
										</span>
										<div class="input_wrap dis ">
											<input type="text" class="txt phoneCheck" id="input_phone02" title="휴대폰 중간 4자리" disabled="disabled" maxlength="4" name="qna_phone_m" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
											<button class="ico"><span class="hide">입력 삭제</span></button>
										</div>
										<div class="input_wrap dis ">
											<input type="text" class="txt phoneCheck" id="input_phone03" title="휴대폰 끝 4자리" disabled="disabled" maxlength="4" name="qna_phone_b" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
											<button class="ico"><span class="hide">입력 삭제</span></button>
										</div>
									</div>
								</dd>
							</dl>
							<div class="btm_noti row1">
								<ul class="bul_list">
									<li class="bul_dot"><i class="bullet"></i> 알림수신을 위한 일회성 변경으로 회원 기본정보가 변경되지 않습니다.</li>
								</ul>
							</div>
						</dd>
					</dl>
				</div>
	
				<div class="btn_wrap">
					<button type="button" class="btn white" onclick="location.href ='../myAct/customerCounselList'" ><span>취소</span></button>
					<button type="submit" id="submit_check" class="btn green"><span>확인</span></button>
				</div>
			</form>
			
			<!--// 문의작성 폼 -->
		</div>
		
		<!-- 메인 컨텐츠  -->
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
 	
 	<!-- modal 창 띄우기-->
	 	
	 <div class="ui_modal_wrap" style="display:none; position: fixed; inset: 0px; overflow: auto; z-index: 9000;">
	 
	 <div class="ui_modal_dim" style="position: fixed; inset: 0px; background: rgb(0, 0, 0); opacity: 0.6; z-index: 8000;"></div>
	 
	 <article id="prodListModal" class="lay_wrap ui_modal_container" style="width: 480px; margin-left: -240px; display: block; position: absolute; outline: none; background-clip: padding-box; left: 50%; top: 32%; margin-top: -165px;"  role="dialog" aria-hidden="false" aria-describedby="modal_9_content" aria-labelledby="modal_9_title" tabindex="0">
		<header class="line">
			<h1 id="modal_9_title" style="user-select: none; cursor: move;"><span>주문/상품 선택</span></h1>
		</header>
		<section class="lay_conts lay_scroll" id="modal_9_content">
			<div class="order_delivery">
						<p class="order_tit">${member.member_name}님께서 최근 1개월간 주문하신 내역입니다.</p>
						<div class="delivery_location no_top">
						
						
				<!-- loop -->
								
					<c:set var="tempPaymentID"></c:set>
							<c:forEach var="paymentList" items="${paymentListDTOs}">
							<c:if test="${tempPaymentID ne paymentList.payment_id }">
								<div class="order_prd">
									<div class="top">
										<div class="tit">
											<div class="rad_wrap">
												
												<input type="checkbox" id="order_payment_id" name="order" value="${paymentList.payment_id}" data-prd_nm="${paymentList.product_name}" onchange="javascript:closeProdListModal();" class="accessibility-keyboard">
												<label for="oreder_payment_id" class="order_num">주문번호<span class="ff_avr">${paymentList.payment_id}</span></label>
											</div>
										</div>
									</div>
									
									<div class="prd_list_n">
										<ul>
										
										<c:forEach var="paymentListA" items="${paymentListDTOs}">
										<c:if test="${paymentList.payment_id eq paymentListA.payment_id}">
											<li>
												<div class="rad_wrap">
													<input type="checkbox" id="order_payment_id" name="prod" value="${paymentListA.payment_id}" data-prd-nm="${paymentListA.product_name}" onchange="javascript:closeProdListModal();" class="accessibility-keyboard">
													<label for="oreder_payment_id1">
														<div class="img">
															<img src="/mp/resources/upload/menu/main/${paymentListA.product_id}/${paymentListA.product_name}.jpg" alt="닭한마리와 칼국수" onerror="cj.com.noImg(this)">
														</div>
														<div class="txt" id="product_name"><span class="mt_elps">${paymentListA.product_name}</span>
														</div>
													</label>
												</div>
											</li>
											</c:if>
											</c:forEach>

									</ul>
								</div>
							
							</div>
							<c:set var="tempPaymentID">${paymentList.payment_id}</c:set>
							</c:if>
							</c:forEach>
			
					<!-- //loof -->
						</div>
							</div>
					</section>
					<div class="close">
						<button type="button" class="ui_modal_close"><span class="hide">닫기</span></button>
					</div>
				</article><a href="#" class="vr-focus-area"></a></div>
				 
				<!-- //modal 창 --> 
</div>

<script type="text/javascript">


/* tab 선택시 해당 문의 내용, form 형식 변화  */
$("#inquiry_cate1").on("click", function() {
	$("#ship").show();
	$("#pay").hide();
	$("#cancel").hide();
	$("#point").hide();
	$(".input_top_sec").html('<h4>배송</h4>');
	$(".orderSelectArea").show();
});

$("#inquiry_cate2").on("click", function() {
	$("#pay").show();
	$("#ship").hide();
	$("#cancel").hide();
	$("#point").hide();
	$(".input_top_sec").html('<h4>주문/결제</h4>');
	$(".orderSelectArea").show();
});

$("#inquiry_cate3").on("click", function() {
	$("#cancel").show();
	$("#ship").hide();
	$("#pay").hide();
	$("#point").hide();
	$(".input_top_sec").html('<h4>취소/반품</h4>');
	$(".orderSelectArea").show();
});

$("#inquiry_cate4").on("click", function() {
	$(".cate_sum_cont").not($(this)).hide();
	$(".input_top_sec").html('<h4>쿡킷메뉴/상품</h4>');
	$(".orderSelectArea").hide();
});

$("#inquiry_cate5").on("click", function() {
	$("#point").show();
 	$("#pay").hide();
	$("#cancel").hide(); 
	$("#ship").hide();
	$(".input_top_sec").html('<h4>회원/포인트</h4>');
	$(".orderSelectArea").show();
});

$("#inquiry_cate6").on("click", function() {
	$(".cate_sum_cont").not($(this)).hide();
	$(".input_top_sec").html('<h4>이벤트</h4>');
	$(".orderSelectArea").hide();
});

$("#inquiry_cate7").on("click", function() {
	$("#bill").show();
 	$("#pay").hide();
	$("#cancel").hide(); 
	$("#ship").hide();
	$("#point").hide();
	$(".input_top_sec").html('<h4>영수증/증빙</h4>');
	$(".orderSelectArea").show();
});
$("#inquiry_cate8").on("click", function() {
	$(".cate_sum_cont").not($(this)).hide();
	$(".input_top_sec").html('<h4>사이트이용</h4>');
	$(".orderSelectArea").hide();
});
$("#inquiry_cate9").on("click", function() {
	$(".cate_sum_cont").not($(this)).hide();
	$(".input_top_sec").html('<h4>기타</h4>');
	$(".orderSelectArea").hide();
});


/* modal 창 */

$(document).ready(function(){

    $( "#lookUp_payment").click(function () {
    	$(".ui_modal_wrap").css({"display" : "block"});	
        $( ".pro_box" ).each( function () {
            this.reset();
        });
    });
});




$(".ui_modal_close").on("click", function() {
	$(".ui_modal_wrap").css({"display" : "none"});
})

$("#order_payment_id").on("click", function() {
	var payment_id = $('input:checkbox[id="order_payment_id"]').val();
	var product_name = $('#order_payment_id').data("prd_nm");
	
	
	
	$("#input_payment_id").val(payment_id);
	$("#input_product_name").val(product_name);
	
});




function closeProdListModal(){
	$(".ui_modal_wrap").hide();
	$(".no_pro").hide();
	$(".pro_info").show();
}

function cancelCheck() {
	$(".pro_info").hide();
	$(".no_pro").show();
}



/* 글자수 카운트, 제한 */
$(document).ready(function() {

        $('#qna_content').on('keyup', function() {
            $('#result').html($(this).val().length+ '/ 1000자');
            if($(this).val().length > 1000) {
                $(this).val($(this).val().substring(0, 1000));
                $('#result').html("1,000 / 1000자");
            }
        });
    });
    

/* 답변 알림 체크 */
	
	$('#email').on('click',function () {
		if ($("#email").prop('checked')) {
			$(".emailCheck").prop("disabled", false);	
		  } else {
				$(".emailCheck").prop("disabled", true);	
				
		}
	});
	
	$('#sms').on('click',function () {
		if ($("#sms").prop('checked')) {
			$(".phoneCheck").prop("disabled", false);	
		  } else {
				$(".phoneCheck").prop("disabled", true);	
				
		}
	});
	
	/* email 도메인 선택 */
	
	function setEmailDomain(ele) {
		var $ele = $(ele);
		if($ele.val() == "1"){
			$("#qna_email_domain1").attr('readonly', false);
			$("#qna_email_domain1").val('');		
		}else{
			$("#qna_email_domain1").attr('readonly', true);
			$("#qna_email_domain1").val($ele.val());			
		}
	}



/* 폼 제출시 유효성 검사 */
 $("#submit_check").on("click", function() {
		/* 내용 검사 */
		if($("#qna_content").val() == ""){
			alert('내용을 입력해주세요');
			$("#qna_content").focus();
			return false;
		}
		
		/* email or sms 중 하나가 선택되어야함 */
		if($("#email").prop("checked") || $("#sms").prop("checked")){

			/* email이 체크되었을때 유효검사 */
			if($("#email").prop("checked")){ 
				if($("#qna_email_id").val() == ""){
					alert('이메일을 확인해주세요');
					$("#qna_email_id").focus();
					return false;
				}else if($("#qna_email_domain1").val() == "" ){
					alert('이메일이 형식에 맞지않습니다.다시 입력해주세요.');
					$("#qna_email_domain1").focus();
					return false;
				}
			
			/* sms가 체크되었을때 */
			}else if($("#sms").prop("checked")){
				if($("#input_phone02").val() == ""  || $("#input_phone02").val().length !=4){
					$("#input_phone02").focus();
					alert('연락처를 확인해주세요');
					return false;
				}else if($("#input_phone03").val() == "" || $("#input_phone03").val().length !=4){
					$("#input_phone03").focus();
					alert('연락처를 확인해주세요.');
					return false;
				}
			}
			
			
		alert("정상적으로 작성되었습니다.");
			
		}else{
			alert('Email, SMS 중 최소 1개는 선택하셔야 합니다.');
			return false;			
		}
		
});

	
	
	

</script>

</body>
</html>