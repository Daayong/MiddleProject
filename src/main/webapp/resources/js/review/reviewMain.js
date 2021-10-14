/**
 * 
 */

(function init(){
//	slide_contents 0번째 컨텐츠 aria-hidden속성 변환
//	$('.best_review').find('[data-slide_contents_index = 0]').attr('aria-hidden', 'false');
})()





function openDetail(){
	var url = "../review/reviewOpenDetail";
	var name = "popup test";
	var option = "width = 845, height = 820, top = 0, left = 0, location = no, scrollbars = yes"
	window.open(url, name, option);
}





$('.btn_arrow').click(function() {
	
//	transform 값 계산
	const slide_list = $(this).parents('.slide_list');
	const slide_track = slide_list.children('.slide_track');
	let transformVal = slide_track.css('transform').split(',')[4];

/* slideContentsSize : 슬라이드 거리 계산 (slide_contents width, margin-right 합) */
	let slide_contents = slide_track.children('.slide_contents');
	let width = parseInt(slide_contents.css('width').split('px')[0]);
	let margin_right = parseInt(slide_contents.css('margin-right').split('px')[0]);
	let slideContentsSize = width + margin_right;

//	slide_contents 개수 계산
	let slideContentsCnt = 5;
	
//	if : 중복클릭 방지용
	if(transformVal % slideContentsSize == 0) {		
		
//		슬라이드 네비 넘버
		slide_nav_num = Number(slide_list.find('.num > em').html());		
		
//		슬라이드 방향 체크 및 네비 넘버 값 증감
		if ($(this).attr('id') == "next") {
			transformVal -= slideContentsSize;
			slide_nav_num++;
		} else {
			transformVal -= -slideContentsSize;		
			slide_nav_num--;
		}
		
//		슬라이드
		slide_track.css( 'transition', 'transform 1200ms ease 0s' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
	
//		한바퀴 돌았을 경우 rePosition();
		if (transformVal < slideContentsCnt * -slideContentsSize) {
			transformVal = -slideContentsSize;
			slide_nav_num = 1
			rePosition();
		}
		else if (transformVal > -slideContentsSize) {
			transformVal = slideContentsCnt * -slideContentsSize;
			slide_nav_num = slideContentsCnt
			rePosition();
		}
		function rePosition() {			
			setTimeout(function(){
				slide_track.css( 'transition', '' );
				slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
			}, 1200);
		}
		
//		슬라이드 네비 넘버 대입
		slide_list.find('.num > em').html(slide_nav_num);
		
	}
});





function loadList(i){
	console.log("hello");
}





/** 맛 리뷰 클릭 이벤트 : class="review_module" 에 "open" 클래스 추가 or 삭제 */
$('.link_more').click(function(){
	const review_module = $(this).parents('.review_module');
	let className = review_module.attr('class');
	let lastName = className.substring(className.length - 4, className.length);
	
	if (lastName == "open"){
		review_module.attr('class', className.substring(0, className.length - 5));
	} else {
		review_module.attr('class', className + ' open');
	}
});