/**
 * 
 */
 
 $().ready(function(){	
	let total_product_price = 0;
	let total_delivery_price = 0;
	$('.prd_detail_wrap').each(function(){
		let date_product_price = 0;
		$(this).find('.price_wrap').each(function(){
			date_product_price += $(this).data('price_wrap');
		});
		if (date_product_price < 40000) {
			$(this).find('.delivery_price').html("배송비 +3,000원");
			$(this).find('.delivery_price').data('delivery_price', 3000);	
			total_delivery_price += 3000;		
		}
		total_product_price += date_product_price;
	});
	$('.total_product_price').html(total_product_price.toLocaleString() + "원");
	$('.total_product_price').data('total_product_price', total_product_price);
	$('.total_delivery_price').html("+" + total_delivery_price.toLocaleString() + "원");
	$('.total_delivery_price').data('total_delivery_price', total_delivery_price);
	let total_payment_price = total_product_price + total_delivery_price;
	$('.total_payment_price').html(total_payment_price.toLocaleString() + "원");
	$('.total_payment_price').data('total_payment_price', total_payment_price);
});

$('.rec_link').click(function(){
	let url = "../member/addAddress";
	let name = "addAddress";
	let width = 475;
	let height = 495;
	let top = (window.innerHeight - height) / 2 + screenY;
    let left = (window.innerWidth - width) / 2 + screenX;    
	let option = "width = "+width+", height = "+height+", top = "+top+", left = "+left+", location = no, scrollbars = yes";
	window.open(url, name, option);	
});
 
//===== ===== ===== 포인트 사용 ===== ===== =====
$('#check0').click(function(){
	let member_point = Number($(this).parents('li').data('member_point'));
	let checkBox = $(this);
	let span = $(this).siblings('span');
	let use_point_input = $('.cj_one_point').find('.use_point_input');	
	let use_point = $('.use_point');
	
	if (checkBox.is(':checked') == true){
		span.html("0P");
		use_point_input.val(member_point.toLocaleString() + "원");
		use_point.html(member_point.toLocaleString() + "원");
		use_point.data('use_point', member_point);		
	} else {
		span.html(member_point.toLocaleString() + "P");
		use_point_input.val("");
		use_point.html("0원");
		use_point.data('use_point', 0);
	}
	
	setTotalPaymentPrice();
});
 
$('.cj_one_point').on('keyup focus', '.use_point_input', function(){
	$(this).val($(this).val().replace(/[^0-9]/g, ""));
});
 
 $('.cj_one_point').on('blur', '.use_point_input', function(){
	let parent = $(this).parent();
	let member_point = parent.data('member_point');
	
	let checkBox = parent.find('.check_wrap').find('input');
	let span = parent.find('.check_wrap').find('span');
	let use_point_input = parent.find('.use_point_input');
	let inputVal = Number(use_point_input.val());
	
	let use_point = $('.use_point');
	
	if(inputVal != "" && inputVal <= member_point){
		checkBox.prop('checked', true);
		span.html((member_point - inputVal).toLocaleString() + "P")
		use_point_input.val(inputVal.toLocaleString() + "원")
		
		use_point.html(inputVal.toLocaleString() + "원");
		use_point.data('use_point', inputVal);
	} else {
		if (inputVal > member_point) { alert("보유하신 포인트를 초과하였습니다."); }
		
		checkBox.prop('checked', false);
		span.html(member_point.toLocaleString() + "P")
		use_point_input.val("")
		
		use_point.html("0원");
		use_point.data('use_point', 0);
	}
	
	setTotalPaymentPrice();
});
 
let setTotalPaymentPrice = function(){
	let total_product_price = $('.total_product_price').data('total_product_price');
	let total_delivery_price = $('.total_delivery_price').data('total_delivery_price');
	let use_point = $('.use_point').data('use_point');	
	let total_payment_price = total_product_price + total_delivery_price - use_point;
	$('.total_payment_price').html(total_payment_price.toLocaleString() + "원");
	$('.total_payment_price').data('total_payment_price', total_payment_price);
}
 
//===== ===== ===== order_sticky ===== ===== =====
 $(window).scroll(function(){
	let order_content = $('.order_content');
	let order_sticky = $('.order_sticky');
	
	let contentOffsetTop = order_content.offset().top;
	let stickyOffsetTop = order_sticky.offset().top;
	let scrollTop = $(document).scrollTop();
	let translateY = (scrollTop - contentOffsetTop);
	
	if (scrollTop >= stickyOffsetTop) {
		order_sticky.css('transform', 'translateY('+translateY+'px)');
	}	
	else if (scrollTop < stickyOffsetTop && stickyOffsetTop > contentOffsetTop) {
		if(translateY < 0) { translateY = 0 }
		order_sticky.css('transform', 'translateY('+translateY+'px)');
	}
	
});

//===== ===== ===== 결제하기 버튼 클릭 ===== ===== =====
$('#orderBtn').click(function(){
	let address_id = Number($('.delivery_location').data('address_id'))
	let total_product_price = Number($('.total_product_price').data('total_product_price'));
	let total_delivery_price = Number($('.total_delivery_price').data('total_delivery_price'));
	let use_point = Number($('.use_point').data('use_point'));
	let total_payment_price = Number($('.total_payment_price').data('total_payment_price'));
	let save_point = Number(Math.round((total_product_price - use_point) * 0.02));
	
	let product_sell_count = Number($('.cart_quantity').data('cart_quantity'));
	let product_id = Number($('.product_id').val());
	let product_regdate = $('.product_regdate').val();
	
	$.ajax({
		async : false,
		type : 'GET',
		url : './insertPayment',
		data : {
			address_id						: address_id			,
			payment_total_product_price     : total_product_price 	,
			payment_total_delivery_price    : total_delivery_price	,
			payment_use_point               : use_point           	,
			payment_total_payment_price     : total_payment_price	,
			save_point						: save_point			,
			product_id : product_id,
			product_regdate : product_regdate,
			product_sell_count : product_sell_count
		},
		success : function(result){
			result
			location.href = './orderComplete?payment_id=' + result;
		},
		error : function(xhr, status, error){
			console.log("error");				
		}			
	});	
});