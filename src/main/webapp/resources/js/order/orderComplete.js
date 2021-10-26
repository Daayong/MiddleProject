/**
 * 
 */ 
 
$().ready(function(){
	$('.product_detail').each(function(){
		let date_order_quantity = 0;
		let date_product_price = 0;
		$(this).find('.info_wrap').each(function(){
			date_order_quantity += $(this).find('.quantity').data('quantity');
			date_product_price += $(this).find('.price').data('price');
		});
		if (date_product_price < 40000) {
			$(this).find('.delivery_price').html("배송비 3,000원");
		}
		$(this).find('.order_product').html("주문상품 총 "+date_order_quantity+"개");			
	});
});

// ===== ===== ===== tip ===== ===== =====

$('.tip_toggle').click(function(){
	const parent = $(this).parent();
	let parentClassName = parent.attr('class');
	let parentLastName = parentClassName.substring(parentClassName.length - 2, parentClassName.length);

	if(parentLastName == "on"){
		$('.slide_area').slideUp(200);
		parent.attr('class', parentClassName.substring(0, parentClassName.length - 3))
	} else {
		$('.slide_area').slideDown(200);
		parent.attr('class', parentClassName + ' on')
	}
	
});

// ===== ===== ===== /tip ===== ===== =====
 
// ===== ===== ===== slide_track ===== ===== =====
// ===== 화살표 클릭 이벤트 =====
const slide_track = $('.slide_track');
const slide_contentWidth = 338;
const slide_contentCount = 5;

 $('.btn_arrow').click(function(){
	
//	transform 값 계산
	let transformVal = slide_track.css('transform').split(',')[4];	
	
	if(transformVal % slide_contentWidth == 0) {
				
//		슬라이드 방향 체크 및 값 증감
		if ($(this).attr('id') == "next") {
			transformVal -= slide_contentWidth;
		} else {
			transformVal -= -slide_contentWidth;	
		}
		
//		슬라이드
		slide_track.css( 'transition', 'transform 300ms ease 0s' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
		
		oneRound(transformVal);
		
	}
});
			
// ===== 한바퀴 돌았을 경우 =====
function oneRound(transformVal) {
	if (transformVal < slide_contentCount * -slide_contentWidth) {
		transformVal = -slide_contentWidth;
	}
	else if (transformVal > -slide_contentWidth) {
		transformVal = slide_contentCount * -slide_contentWidth;
	}
	
	setTimeout(function(){
		slide_track.css( 'transition', '' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
	}, 300);
}

// ===== 드래그 이벤트 =====
let mouseSlide = "end";
let tempTransformVal;
let startX;
let moveX;
$('.slide_track').on({
	
	mousedown: function() {
		let transformVal = slide_track.css('transform').split(',')[4];	
		if(transformVal % slide_contentWidth == 0){
			mouseSlide = "start";
			tempTransformVal = parseInt($('.slide_track').css('transform').split(',')[4]);
			startX = event.pageX;
			moveX = 0;
			$('.slide_track').css( 'transition', '' );
		}
	},
	
	mousemove: function() {
		if(mouseSlide == "start"){	
		moveX = event.pageX - startX;
		let transformVal = tempTransformVal + moveX;
		$(this).css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
		}		
	},
	
	mouseup: function() {
		dragRePosition();
	},
	
	mouseleave: function() {
		dragRePosition();
	}
	
});

function dragRePosition() {
	if(mouseSlide == "start"){
		mouseSlide = "end";
		let transformVal
		if (moveX > 198) {
			transformVal = tempTransformVal + slide_contentWidth;
		} else if (moveX < -198) {
			transformVal = tempTransformVal - slide_contentWidth;	
		} else {
			transformVal = tempTransformVal;
		}
		$('.slide_track').css( 'transition', 'transform 300ms ease 0s' );
		$('.slide_track').css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
		
		oneRound(transformVal);
		
	}
}

// ===== ===== ===== /slide_track ===== ===== =====

$('#compBtnMenu').click(function(){ //'COOKTI 메뉴' 로 이동
	$(location).attr('href', '/mp/menu/menu_main');
});

$('#compBtnOdrDtl').click(function(){ //주문번호 조회하여 '주문/배송조회' or '취소/반품조회' 로 이동
	$(location).attr('href', '#');
});