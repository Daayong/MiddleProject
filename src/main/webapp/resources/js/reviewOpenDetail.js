/**
 * 
 */ 
 
const slide_wrap = $('.slide_wrap');
const slide_track = $('.slide_track');
const img_wrapWidth = parseInt($('.img_wrap').css('width').split('px')[0]);
let slide_nav_num = Number($('.num > em').html());
let slide_nav_count = Number($('.num > strong').html());

 $('.btn_arrow').click(function(){
	
//	transform 값 계산
	let transformVal = slide_track.css('transform').split(',')[4];	
	
	if(transformVal % img_wrapWidth == 0) {
		
//		슬라이드 네비 넘버
		slide_nav_num = Number(slide_wrap.find('.num > em').html());
				
//		슬라이드 방향 체크 및 네비 넘버 값 증감
		if ($(this).attr('id') == "next") {
			transformVal -= img_wrapWidth;
			slide_nav_num++;
		} else {
			transformVal -= -img_wrapWidth;		
			slide_nav_num--;
		}
		
//		슬라이드
		slide_track.css( 'transition', 'transform 300ms ease 0s' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
		
		oneRound(transformVal);
		
//		슬라이드 네비 넘버 대입
		slide_wrap.find('.num > em').html(slide_nav_num);
		
	}
});

// ===== ===== ===== - ===== ===== =====
			
//		한바퀴 돌았을 경우
function oneRound(transformVal) {
	if (transformVal < slide_nav_count * -img_wrapWidth) {
		transformVal = -img_wrapWidth;
		slide_nav_num = 1
	}
	else if (transformVal > -img_wrapWidth) {
		transformVal = slide_nav_count * -img_wrapWidth;
		slide_nav_num = slide_nav_count
	}
	
	setTimeout(function(){
		slide_track.css( 'transition', '' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
	}, 300);
}

// ===== ===== ===== - ===== ===== =====

let mouseSlide = "end";
let tempTransformVal;
let startX;
let moveX;
$('.slide_track').on({
	
	mousedown: function() {
		let transformVal = slide_track.css('transform').split(',')[4];	
		if(transformVal % img_wrapWidth == 0){
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
		if (moveX > 155) {
			transformVal = tempTransformVal + img_wrapWidth;
			slide_nav_num--;
		} else if (moveX < -155) {
			transformVal = tempTransformVal - img_wrapWidth;	
			slide_nav_num++;	
		} else {
			transformVal = tempTransformVal;
		}
		$('.slide_track').css( 'transition', 'transform 300ms ease 0s' );
		$('.slide_track').css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
		
		oneRound(transformVal);
		
		slide_wrap.find('.num > em').html(slide_nav_num);
	}
}