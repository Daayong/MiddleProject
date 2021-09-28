/**
 * 
 */

$('.btn_arrow.next').click(function() {
	
	let transformVal = $('.slide_track').css('transform');
	let arr = transformVal.split(',');
	
	let slideContentsWidth = 568;
	let slideContentsCnt = 5;
	
	if(arr[4] % slideContentsWidth == 0) {
		switch (arr[4] / -slideContentsWidth) {
			case slideContentsCnt	: arr[4] = -slideContentsWidth; break;
							default	: arr[4] -= slideContentsWidth;
		}
	console.log($(this).parents('.slide_list').children('.slide_track'));
	$(this).parents('.slide_list').children('.slide_track').css(
		'transform', 'translate3d(' + arr[4] + 'px, 0px, 0px)',
	);
		
	}
});