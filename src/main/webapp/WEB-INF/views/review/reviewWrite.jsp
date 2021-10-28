<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/review/reviewWrite.css" rel="stylesheet">
	

	<title>Insert title here</title>
	
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
	
	
	
	
	
		<div class="content">
		
<!-- ===== ===== ===== left_menu ===== ===== ===== -->
			<c:import url="../temp/myPage_nav.jsp"></c:import>
			
<!-- ===== ===== ===== rigth_content ===== ===== ===== -->
			<div class="rigth_content">
				<form action="./reviewInsert" method="post" id="reviewForm" enctype="multipart/form-data" >
				
					<input type="text" name="product_id" value="${paymentListDTO.product_id}" hidden="">
					<input type="text" name="member_id" value="${member.member_id}" hidden="">
					<input type="text" name="cart_id" value="${paymentListDTO.payment_id}" hidden="">
				
					<h3>리뷰</h3>
					<div class="favorite_salty_wrap">
						<span class="favorite">평소 입맛 취향을 알려주세요</span>
						<p class="tit">${member.member_name}님이 짭짤한 맛을 좋아하는 정도는?</p>
						
						<ul class="favorite_list">
						
							<li>
								<input type="radio" id="taste0" class="radio_salty" title="맛취향을 선택해주세요." name="favorite_salty" value="">
								<label for="taste0"><span class="txt">좋아하지<br> 않음</span></label>
							</li>
						
							<li>
								<input type="radio" id="taste1" class="radio_salty" title="맛취향을 선택해주세요." name="favorite_salty" value="" checked="">
								<label for="taste1"><span class="txt">약간<br> 짭짤한맛</span></label>
							</li>
						
							<li>
								<input type="radio" id="taste2" class="radio_salty" title="맛취향을 선택해주세요." name="favorite_salty" value="">
								<label for="taste2"><span class="txt">적당히<br> 짭짤한맛</span></label>
							</li>
						
							<li>
								<input type="radio" id="taste3" class="radio_salty" title="맛취향을 선택해주세요." name="favorite_salty" value="">
								<label for="taste3"><span class="txt">아주<br> 짭짤한맛</span></label>
							</li>
						
						</ul>
					</div>
					<div class="input_taste">
						<h4>${paymentListDTO.product_name}의 맛을 평가해주세요</h4>
						<div class="input_taste_form detail">
							<div class="left">
								상세평가
							</div>
							<div class="right">
								<ul class="product_salty required">
									<li>
										<span>짭짤한 맛의 정도는 어떠셨나요?</span>
										<span class="bul_req"></span>
									</li>
									<div class="bar"></div>
									<li class="list1">
										<input type="radio" id="salty0" name="review_salty" value="0">
										<label for="salty0"></label>
										<span>약간 짭짤했어요</span>
									</li>
									<li class="list2">
										<input type="radio" id="salty1" name="review_salty" value="1" >
										<label for="salty1"></label>
										<span>적당했어요</span>
									</li>
									<li class="list3">
										<input type="radio" id="salty2" name="review_salty" value="2" >
										<label for="salty2"></label>
										<span>아주 짭짤했어요</span>
									</li>
								</ul>
								<ul class="required">
									<li>
										<span>조리하기 쉬워요</span>
										<span class="bul_req"></span>
									</li>
									<li>
										<input type="radio" id="easy0" name="review_easy" value="1">
										<label for="easy0">그렇다</label>
									</li>
									<li>
										<input type="radio" id="easy1" name="review_easy" value="0">
										<label for="easy1">아니다</label>
									</li>
								</ul>
								<ul class="required">
									<li>
										<span>재료가 신선해요</span>
										<span class="bul_req"></span>
									</li>
									<li>
										<input type="radio" id="fresh0" name="review_fresh" value="1">
										<label for="fresh0">그렇다</label>
									</li>
									<li>
										<input type="radio" id="fresh1" name="review_fresh" value="0">
										<label for="fresh1">아니다</label>
									</li>
								</ul>
								<ul class="required">
									<li>
										<span>양이 많아요</span>
										<span class="bul_req"></span>
									</li>
									<li>
										<input type="radio" id="many0" name="review_many" value="1">
										<label for="many0">그렇다</label>
									</li>
									<li>
										<input type="radio" id="many1" name="review_many" value="0">
										<label for="many1">아니다</label>
									</li>
								</ul>
								<ul class="required">
									<li>
										<span>맛있어요</span>
										<span class="bul_req"></span>
									</li>
									<li>
										<input type="radio" id="delicious0" name="review_delicious" value="1">
										<label for="delicious0">그렇다</label>
									</li>
									<li>
										<input type="radio" id="delicious1" name="review_delicious" value="0">
										<label for="delicious1">아니다</label>
									</li>
								</ul>
							</div>
						</div>
						<div class="input_taste_form star">
							<div class="left">
								별점
								<span class="bul_req"></span>
							</div>
							<div class="right">
								<div class="star_box">
									<input type="number" name="review_star" value="100">
									<button type="button" class="rate on" data-rate="20" data-text="1개 기대보다 많이 아쉬웠어요." data-no="1"></button>
									<button type="button" class="rate on" data-rate="40" data-text="2개 조금 아쉬웠어요." data-no="2"></button>
									<button type="button" class="rate on" data-rate="60" data-text="3개 괜찮았어요." data-no="3"></button>
									<button type="button" class="rate on" data-rate="80" data-text="4개 정말 맛있었어요." data-no="4"></button>
									<button type="button" class="rate on" data-rate="100" data-text="5개 강력 추천! 완전 맛있어요." data-no="5"></button>
									<span class="result_text">5개 강력 추천! 완전 맛있어요.</span>
								</div>
							</div>
						</div>
						<div class="input_taste_form review">
							<div class="left">
								리뷰
								<span class="bul_req"></span>
							</div>
							<div class="right">
								<textarea cols="80" rows="5"placeholder="리뷰를 작성해주세요." name="review_txt" required></textarea>
							</div>
						</div>
						<div class="input_taste_form tip">
							<div class="left">
								꿀팁
							</div>
							<div class="right">
								<textarea cols="80" rows="5"placeholder="더 맛있게 먹을 수 있는 고객님만의 꿀팁을 공유해주세요!" name="review_tip" required></textarea>
							</div>
						</div>
						<div class="input_taste_form file">
							<div class="left">
								첨부파일
							</div>
							<div class="right">
								
								<div class="add_file_wrap">
									
									<div class="multipartFile_wrap">
										<input type="file" id="add_file1" class="add_file" name="multipartFile" data-num="1">
										<label for="add_file1"></label>
									</div>
									
									<ul>
										<!-- #add_file change 이벤트 추가 li 영역 -->
									</ul>
								</div>
								
								<div class="file_info">
									<div class="dot"></div>
									<span> 최대 5장 등록 (PNG, JPEG, JPG, GIF 포맷)</span>
								</div>
							</div>
						</div>
					</div>
					<div class="btn_wrap">
						<button type="button" class="btn white" onclick="history.back()"><span>취소</span></button>
						<button type="button" class="btn green" onclick="save()"><span>확인</span></button>
					</div>
					<div class="test"></div>
				</form>
			</div>
		</div>
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	$('.rate').click(function(){
		let allStar = $('.rate')
		let clickStar = $(this);
		let text = clickStar.data('text');
		let result_text = $('.result_text');
		let inputNum = clickStar.siblings('input');
		
		allStar.removeClass('on');
		allStar.each(function(){
			if($(this).data('no') <= clickStar.data('no')){
				$(this).addClass('on');
				inputNum.val($(this).data('rate'));
			}
		});
		result_text.html(text);
	});
</script>

<script type="text/javascript">
	$('.multipartFile_wrap').on('change', '.add_file', function(){
		const multipartFile_wrap = $(this).parent();
		const ul = multipartFile_wrap.siblings('ul');

		const label = $(this).siblings('label');
		label.addClass('hidden')
		
		if (ul.find('li').length < 4){
			addInput(multipartFile_wrap, $(this).data('num'));		
		}
		addLi(ul);
		
		setNum(multipartFile_wrap, ul);
		
		let lastLi = ul.find('li').last();
		readURL(this, lastLi.find('img'));	
		
	});
	
	function addInput(multipartFile_wrap, finalNum){
		finalNum++
		let Html
			="<input type='file' id='add_file"+finalNum+"' class='add_file' name='multipartFile' data-num='"+finalNum+"'>"
			+"<label for='add_file"+finalNum+"'></label>"
		multipartFile_wrap.append(Html);
	}
	
	function addLi(ul){
		let Html
			="<li>"
			+"<div class='dim_div'><span class='num'></span></div>"
			+"<img src=''>"
			+"<button type='button' class='btn_delete'></button>"
			+"</li>";	
		ul.append(Html);
	}
	
	function setNum(multipartFile_wrap, ul){
		let cnt = 1;
		multipartFile_wrap.find('.add_file').each(function(){
			$(this).data('num', cnt);
			$(this).attr('id', 'add_file' + cnt);
			$(this).next().attr('for', 'add_file' + cnt);
			cnt++;
			console.log($(this).data('num'));
		});
		console.log("==============");
		cnt = 1;
		ul.find('.num').each(function(){
			$(this).html(cnt++);
		});
	}
	
	function readURL(input, img_tag) {
		if (input.files && input.files[0]) {
			
			var reader = new FileReader();			
			reader.onload = function(e) {
				img_tag.attr('src', e.target.result);
			}
			
			reader.readAsDataURL(input.files[0]);
		}		
	}		
</script>

<script type="text/javascript">
	$('.add_file_wrap').on('click', '.btn_delete', function(){
		const ul = $(this).parents('ul');
		const li = $(this).parent('li');
		const multipartFile_wrap = ul.siblings('.multipartFile_wrap');
		
		let delNum = li.find('.num').html();
		multipartFile_wrap.find('input').each(function(){
			if($(this).data('num') == delNum){
				$(this).next().remove();
				$(this).remove();
				return;
			}
		})
		li.remove();		
		setNum(multipartFile_wrap, ul);
		
		let lastNum = Number(multipartFile_wrap.children('input').last().data('num'));
		if(ul.find('li').length == 4){
			addInput(multipartFile_wrap, lastNum);			
		}
	});
</script>

<script type="text/javascript">
	function save() {		
		if(!validate()){ return; }
		
		$('#reviewForm').submit();
		
// 		let f = $('#reviewForm');
// 		let o = f.serializeArray();
// 		console.log(o);
		
// 		f = $('#reviewForm')[0];
// 		let formData = new FormData(f);
// 		console.log(formData);
// 		console.log(formData.get('multipartFile[]'));
		
// 		$.ajax({
// 			type		:	'post',
// 			url			:	'./reviewInsert',
// 			processData	:	false,
// 	        contentType	:	false,
// 			data		:	{
// 				o,
// 				formData,
// 			},
// 			success		:	function(i) {
// 				console.log("done : " + i);
// 			},
// 			error		:	function(request, status, error){
// 				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
// 			},
// 		});
	}
	
	function validate() {
		if($('input[name=review_salty]:checked').val() == null){
			alert("맛평가를 선택해주세요.");
			$('.required')[0].scrollIntoView({ behavior: 'auto', block: 'center', inline: 'center' });
			return false;
		}
		if($('input[name=review_easy]:checked').val() == null){
			alert("리뷰 항목을 선택해주세요.");
			$('.required')[1].scrollIntoView({ behavior: 'auto', block: 'center', inline: 'center' });
			return false;
		}
		if($('input[name=review_fresh]:checked').val() == null){
			alert("리뷰 항목을 선택해주세요.");
			$('.required')[2].scrollIntoView({ behavior: 'auto', block: 'center', inline: 'center' });
			return false;
		}
		if($('input[name=review_many]:checked').val() == null){
			alert("리뷰 항목을 선택해주세요.");
			$('.required')[3].scrollIntoView({ behavior: 'auto', block: 'center', inline: 'center' });
			return false;
		}
		if($('input[name=review_delicious]:checked').val() == null){
			alert("리뷰 항목을 선택해주세요.");
			$('.required')[4].scrollIntoView({ behavior: 'auto', block: 'center', inline: 'center' });
			return false;
		}
		if($('textarea[name=review_txt]').val() == ""){
			alert("리뷰를 작성해주세요.");
			$('textarea[name=review_txt]').focus();
			$('textarea[name=review_txt]')[0].scrollIntoView({ behavior: 'auto', block: 'center', inline: 'center' });
			return false;
		}
		return true;
	}
</script>
</body>

</html>