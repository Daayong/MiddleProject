/**
 * 
 */

$('.btn_arrow').click(function() {
	
//	transform 값 계산
	const slide_list = $(this).parents('.slide_list');
	let slide_track = slide_list.children('.slide_track');	
	let transformVal = slide_track.css('transform').split(',')[4];	
	
//	slide_contents width, margin-right 합 계산
	let slide_contents = slide_track.children('.slide_contents');
	let width = parseInt(slide_contents.css('width').split('px')[0]);
	let margin_right = parseInt(slide_contents.css('margin-right').split('px')[0]);
	let slideContentsSize = width + margin_right;
	
//	slide_contents 개수 계산
	let slideContentsCnt = 5;
	
//	if : 중복클릭 방지용
	if(transformVal % slideContentsSize == 0) {				
		
		//	슬라이드
		if ($(this).attr('id') == "next") {	transformVal -= slideContentsSize; }
		else { transformVal -= -slideContentsSize; }
		slide_track.css( 'transition', 'transform 1200ms ease 0s' );
		slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
	
		//	한바퀴 돌았을 경우
		if (transformVal < slideContentsCnt * -slideContentsSize) {
			transformVal = -slideContentsSize;
			rePosition();
		}
		else if (transformVal > -slideContentsSize) {
			transformVal = slideContentsCnt * -slideContentsSize;
			rePosition();
		}		
		function rePosition() {
			setTimeout(function(){
				slide_track.css( 'transition', '' );
				slide_track.css( 'transform', 'translate3d(' + transformVal + 'px, 0px, 0px)' );
			}, 1200);
		}
	}
});





function loadList(i){
	console.log("hello");
}





$('.link_more').click(function(){
	console.log("hello");
	const review_module = $(this).parents('.review_module');
	let className = review_module.attr('class');
	let lastName = className.substring(className.length - 4, className.length);
	
	if (lastName == "open"){
		review_module.attr('class', className.substring(0, className.length - 5));
	} else {
		review_module.attr('class', className + ' open');
	}
});