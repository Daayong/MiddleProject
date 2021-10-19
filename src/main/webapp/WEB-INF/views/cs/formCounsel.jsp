<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/cs/formCounsel.css" rel="stylesheet">
	
	<title>My쿡킷 - 집밥을 특별하게,쿡킷</title>
	
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
			<form name="counselForm" onsubmit="return false;">
				<input type="hidden" name="mode" value="create">
				
				<div class="cate_wrap">
					<h4>문의유형<span class="bul_req"><span class="hide">필수 입력</span></span></h4>
					<span class="hide">이하 내역 기간별 선택 항목은 라디오 버튼이며, 방향키로써 각각 항목 이동 가능합니다.</span> <!-- 190624_수정 -->
					<ul class="rad_tab_wrap">
				
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate1" value="0401" data-csl-ttl="배송" checked="" class="accessibility-keyboard">
										<label for="inquiry_cate1"><span>배송</span></label>
								</span>
							</li>
		
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate2" value="0402" data-csl-ttl="주문/결제" class="accessibility-keyboard">
										<label for="inquiry_cate2"><span>주문/결제</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate3" value="0403" data-csl-ttl="취소/반품" class="accessibility-keyboard">
										<label for="inquiry_cate3"><span>취소/반품</span></label>
								</span>
							</li>
							
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate4" value="0404" data-csl-ttl="쿡킷메뉴/상품" class="accessibility-keyboard">
										<label for="inquiry_cate4"><span>쿡킷메뉴/상품</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate5" value="0405" data-csl-ttl="회원/포인트" class="accessibility-keyboard">
										<label for="inquiry_cate5"><span>회원/포인트</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate6" value="0406" data-csl-ttl="이벤트" class="accessibility-keyboard">
										<label for="inquiry_cate6"><span>이벤트</span></label>
								</span>
							</li>
						
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate7" value="0407" data-csl-ttl="영수증/증빙" class="accessibility-keyboard">
										<label for="inquiry_cate7"><span>영수증/증빙</span></label>
								</span>
							</li>
				
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate8" value="0408" data-csl-ttl="사이트이용" class="accessibility-keyboard">
										<label for="inquiry_cate8"><span>사이트이용</span></label>
								</span>
							</li>
					
							<li>
								<span class="rad_wrap">
									<input type="radio" name="cslCtgrId" id="inquiry_cate9" value="0409" data-csl-ttl="기타" class="accessibility-keyboard">
										<label for="inquiry_cate9"><span>기타</span></label>
								</span>
							</li>
						
					</ul>
	
					<!-- script 요청사항 : 체크박스 클릭 시 해당 아이디 영역 노출 / 없으면 비노출 -->
					<div class="cate_sum_cont ui_cateSumCont1" style="display:block;">
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
					<div class="cate_sum_cont ui_cateSumCont2">
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
					<div class="cate_sum_cont ui_cateSumCont3">
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
					<div class="cate_sum_cont ui_cateSumCont5">
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
					<div class="cate_sum_cont ui_cateSumCont7">
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
					<!-- //script 요청사항 : 체크박스 클릭 시 해당 아이디 영역 노출 / 없으면 비노출 -->
				</div>
	
				<div class="top_sec input_top_sec">
					<h4>배송</h4><!-- 스크립트 요청 사항 : .rad_wrap 클릭 시 해당 카테명 뽑아주세요. -->
				</div>
				<div class="input_order pro_inquiry">
					<dl class="one_dep row1 orderSelectArea">
						<dt>주문/상품 선택</dt>
						<dd>
							<div class="order_list" name="cslPrdList">
		
									
								<!-- 선택된 상품이 없을 때 -->
								<div class="pro_box no_pro">
									<span class="txt">문의할 주문번호 또는 상품을 선택해주세요.</span>
								</div>
								<!-- //선택된 상품이 없을 때 -->
	
								<!-- 선택된 상품이 있을 때 -->
								<div class="pro_box pro_info" style="display: none;">
									
								</div>
								
								<div class="pro_box pro_info" style="display: none;">
									<span class="txt">
										<span class="hide">상품명</span>
									</span>
								<input type="hidden" name="csPrdCd" value="">
								</div>
								<!-- //선택된 상품이 있을 때 -->
								<button type="button" class="btn sub green" onclick="javascipt:openProdListModal(1);"><span>조회</span></button>
							</div>
						</dd>
					</dl>
					<dl class="one_dep">
						<dt>문의내용<span class="bul_req"><span class="hide">필수 입력</span></span></dt>
						<dd>
							<input id="input-text-0" type="hidden" name="cslTtl" value="">
							<div class="textarea">
								<textarea id="question_cont" cols="80" rows="5" title="문의내용 작성란" placeholder="문의 내용을 입력해주세요" class="ui_inputLimit" maxlength="1000" name="cusCslTxt" data-count-target="#result" data-auto-resize="true"></textarea>
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
								<div class="add_file_wrap" >
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
										<input type="checkbox" id="email" name="anwer" class="accessibility-keyboard">
										<label for="email">E-mail 수신
											
										</label>
									</div>
								</dt>
								<dd>
									<div class="input_email">
								
										<div class="input_wrap ema_id dis">
											<input type="text" class="txt" id="email" title="이메일 아이디" name="cusMailAdr" value="">
										</div>
										<span class="at">@</span>
										<div class="input_wrap dis">
											<input type="text" class="txt" title="이메일 도메인 직접입력" name="cusMailAdr2">
										</div>
										<span class="item_wrap ui_selectbox dis" ui-modules="Selectbox,CustomSelectbox">
											<label for="fn_selc_val" class="hide">이메일 도메인 선택</label>

									<select id="fn_selc_val" class="required">
		
										<option value="0">직접입력</option>
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
							<select id="input_phone1" name="cusMblNo1" class="required" title="휴대폰 앞자리를 선택해주세요." >
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
											<input type="text" class="txt" id="input_phone02" title="휴대폰 중간 4자리" placeholder="" maxlength="4" readonly="" name="cusMblNo2" value="">
											<button class="ico"><span class="hide">입력 삭제</span></button>
										</div>
										<div class="input_wrap dis ">
											<input type="text" class="txt" id="input_phone03" title="휴대폰 끝 4자리" placeholder="" maxlength="4" readonly="" name="cusMblNo3" value="">
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
					<button class="btn white" onclick="cancel()"><span>취소</span></button>
					<button class="btn green" onclick="location.href = './formCounselComplete'"><span>확인</span></button>
				</div>
			</form>
		</div>
		
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

</body>
</html>