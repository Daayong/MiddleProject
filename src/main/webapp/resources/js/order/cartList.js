/**
 * 
 */ 

function getCartList() {
	$.ajax({
		async : false,
		type : 'GET',
		url : './getCartList',
		data : {
			
		},
		success: function(result){
			result = result.trim();
			$(".getCartList").html(result);
		},
		error:function(xhr, status, error){
			console.log("error : getCartList");
		}		
	});
}

$().ready(function(){
	getCartList();
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