/**
 * 
 */ 

$().ready(function(){
	inputCheckedCheck();
	priceSetting();
	countProduct();	
});

function countProduct() {	
	
	let label = $('.chk_wrap').find('label');
	let count = 0;
	
	$('.detail_info_content').each(function(){
		$(this).find('.product_wrap').each(function(){			
			if($(this).find('input').is(':checked') == true){	
				count++;			
			}
		});
	});	
	
	label.html("총 "+count+"/"+label.data('size')+"개");		
}

function priceSetting() {
	let total_payment_price = 0;
	let delivery = 0;
	$('.detail_info_content').each(function(){
		
		let prd_total_price = 0;
		$(this).find('.product_wrap').each(function(){
			
			let prd_price = 
				$(this).find('.price').data('price') *
				$(this).find('.quantity').data('quantity');		
			$(this).find('.prd_price').data('prd_price', prd_price);
			$(this).find('.prd_price').html(prd_price.toLocaleString() + "원");
			
			if($(this).find('input').is(':checked') == true){	
				prd_total_price += prd_price;			
			}
		});
		
	//	상품금액 x원
		$(this).find('.prd_total_price').data('prd_total_price', prd_total_price);
		$(this).find('.prd_total_price').html("상품금액<strong>"+prd_total_price.toLocaleString()+"원</strong>");
		total_payment_price += prd_total_price;
		
	//	배송비 x원
		if (prd_total_price < 40000 && prd_total_price > 0){	
			$(this).find('.delivery').data('delivery_price', 3000);
			$(this).find('.delivery').html("배송비<strong>"+(3000).toLocaleString()+"원</strong>");	
			delivery += 3000;
		} else {			
			$(this).find('.delivery').data('delivery_price', 0);
			$(this).find('.delivery').html("배송비<strong>"+(0).toLocaleString()+"원</strong>");	
		}
		
	//	총 x원
		let prd_total_payment = 
			$(this).find('.prd_total_price').data('prd_total_price') +
			$(this).find('.delivery').data('delivery_price');
		$(this).find('.total').data('prd_total_payment', prd_total_payment);
		$(this).find('.total').html("총<strong>"+prd_total_payment.toLocaleString()+"원</strong>");
	});
	$('.total_payment').find('.total_payment_price').data('total_payment_price', total_payment_price);
	$('.total_payment').find('.total_payment_price').html("총 상품금액<strong>"+total_payment_price.toLocaleString()+"원</strong>");
	$('.total_payment').find('.delivery').data('delivery', delivery);
	$('.total_payment').find('.delivery').html("총 배송비<strong>"+delivery.toLocaleString()+"원</strong>");
	$('.total_payment').find('.total').html("총 결제예정금액<strong>"+(total_payment_price+delivery).toLocaleString()+"원</strong>");
}

function inputCheckedCheck(clickWho){
	
//	전체 체크
	$('.prd_select').find('input').prop('checked', true);
	
	$('.detail_info_content').each(function(){
		
//		요일 체크
		let delivery_dateInput = $(this).find('.delivery_date').find('input')
		if(clickWho == "delivery_date"){
			$(this).find('.product_list').find('input').each(function(){
				if(delivery_dateInput.is(':checked') == true){
					$(this).prop('checked', true);
				} else {
					$(this).prop('checked', false);					
				}
			});			
		}
		delivery_dateInput.prop('checked', true);
		
//		상품 체크
		$(this).find('.product_list').find('input').each(function(){
			if($(this).attr('disabled') != "disabled" && $(this).is(':checked') == false){
				delivery_dateInput.prop('checked', false);
				$('.prd_select').find('input').prop('checked', false);
			};
		})
		
		
	});
	
	let delivery_dateInput = $(this).parents('.detail_info_content').find('.delivery_date').find('input')
	delivery_dateInput.prop('checked', true);
	
	$('.product_list').find('input').each(function() {
		if($(this).attr('disabled') != "disabled" && $(this).is(':checked') == false){
			delivery_dateInput.prop('checked', false);
		};
	});
}

//		disabled 처리
function disabledSetting(){		
	$('.product_wrap').each(function(){
		if($(this).find('input').attr('disabled') == "disabled"){		
			$(this).find('input').prop('checked', false);
		}
	});
}

$('#all_select').click(function(){
	
	if($(this).is(':checked') == true) {
//		전체 체크
		$('input').prop('checked', true);		
	} else {
//		전체 체크 해제
		$('input').prop('checked', false);
	}
	disabledSetting();
	priceSetting();
	countProduct();
});

$('.delivery_date').find('input').click(function(){
	inputCheckedCheck("delivery_date");
	disabledSetting();
	priceSetting();
	countProduct();
})

$('.product_list').find('input').click(function(){
	inputCheckedCheck("product_list");
	priceSetting();
	countProduct();
});

// ===== ===== ===== 슬라이드 기능 ===== ===== ===== 
const slide_nav_wrap = $('.slide_nav_wrap');
const slide_track = $('.slide_track');
const slide_contentSize = Math.abs(slide_track.css('transform').split(',')[4]);

let slide_nav_num;
const slide_nav_count = Number($('.slide_nav_wrap > strong').html());

 $('.btn_arrow').click(function(){
	
//	transform 값 계산
	let transformVal = slide_track.css('transform').split(',')[4];	
	
	if(transformVal % slide_contentSize == 0) {
		
//		슬라이드 네비 넘버
		slide_nav_num = Number($('.slide_nav_wrap > em').html());
				
//		슬라이드 방향 체크 및 네비 넘버 값 증감
		if ($(this).attr('id') == "next") {
			transformVal -= slide_contentSize;
			slide_nav_num++;
		} else {
			transformVal -= -slide_contentSize;		
			slide_nav_num--;
		}
		
//		슬라이드
		slide_track.css( 'transition', 'transform 300ms ease 0s' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
		
		oneRound(transformVal);
		
//		슬라이드 네비 넘버 대입
		$('.slide_nav_wrap > em').html(slide_nav_num);
		
	}
});
			
//		한바퀴 돌았을 경우
function oneRound(transformVal) {
	if (transformVal < slide_nav_count * -slide_contentSize) {
		transformVal = -slide_contentSize;
		slide_nav_num = 1
	}
	else if (transformVal > -slide_contentSize) {
		transformVal = slide_nav_count * -slide_contentSize;
		slide_nav_num = slide_nav_count
	}
	
	setTimeout(function(){
		slide_track.css( 'transition', '' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
	}, 300);
}

// ===== ===== ===== /슬라이드 기능 ===== ===== ===== 