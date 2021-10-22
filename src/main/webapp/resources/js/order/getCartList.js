/**
 * 
 */

$().ready(function(){
	isAllChecked();
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
	let total_product_price = 0;
	let delivery_price = 0;
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
		total_product_price += prd_total_price;
		
	//	배송비 x원
		if (prd_total_price < 40000 && prd_total_price > 0){	
			$(this).find('.delivery_price').data('delivery_price', 3000);
			$(this).find('.delivery_price').html("배송비<strong>"+(3000).toLocaleString()+"원</strong>");	
			delivery_price += 3000;
		} else {			
			$(this).find('.delivery_price').data('delivery_price', 0);
			$(this).find('.delivery_price').html("배송비<strong>"+(0).toLocaleString()+"원</strong>");	
		}
		
	//	총 x원
		let total_date_price = 
			$(this).find('.prd_total_price').data('prd_total_price') +
			$(this).find('.delivery_price').data('delivery_price');
		$(this).find('.total_date_price').data('total_date_price', total_date_price);
		$(this).find('.total_date_price').html("총<strong>"+total_date_price.toLocaleString()+"원</strong>");
	});
	$('.total_payment_price_wrap').find('.total_product_price').data('total_product_price', total_product_price);
	$('.total_payment_price_wrap').find('.total_product_price').html("총 상품금액<strong>"+total_product_price.toLocaleString()+"원</strong>");
	$('.total_payment_price_wrap').find('.total_delivery_price').data('total_delivery_price', delivery_price);
	$('.total_payment_price_wrap').find('.total_delivery_price').html("총 배송비<strong>"+delivery_price.toLocaleString()+"원</strong>");
	let total_payment_price = total_product_price + delivery_price;
	$('.total_payment_price_wrap').find('.total_payment_price').data('total_payment_price', total_payment_price);
	$('.total_payment_price_wrap').find('.total_payment_price').html("총 결제예정금액<strong>"+total_payment_price.toLocaleString()+"원</strong>");
}

function isAllChecked(){
	
//	전체선택 checked
	$('.all_select').prop('checked', true);
	
	$('.detail_info_content').each(function(){
		
//		배송일 checked
		let delivery_dateInput = $(this).find('.delivery_date').find('input')
		delivery_dateInput.prop('checked', true);
		
		$(this).find('.product_list').find('input').each(function(){
			
			if($(this).attr('disabled') != "disabled" && $(this).is(':checked') == false) { // 상품 unChecked 일 경우
				delivery_dateInput.prop('checked', false); // 전체선택 unChecked
				$('.all_select').prop('checked', false); // 배송일 unChecked
			};
			
		})		
		
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

// ===== ===== ===== 전체 체크박스 ===== ===== ===== 
$('.getCartList').on('click', '#all_select', function(){
	
	let boolean;
	let cart_state;
	if($(this).is(':checked') == true) {
		boolean = true;
		cart_state = "checked"
	}
	else {
		boolean = false;
		cart_state = "unChecked"
	}
	
	$.ajax({
		async : false,
		type : 'GET',
		url : './updateCartStateAll',
		data : {
			cart_state : cart_state
		},
		success : function(){	
			$('input').prop('checked', boolean);			
			getCartList();
			isAllChecked();
			priceSetting();
			countProduct();
		},
		error : function(xhr, status, error){
			console.log("error");				
		}			
	});	
	
});

// ===== ===== ===== 요일 체크박스 ===== ===== ===== 
$('.delivery_date').find('input').click(function(){
	
	let boolean;
	let cart_state;
	let cart_delivery_date = $(this).data('delivery_date').substring(0, 10);
	if ($(this).is(':checked') == true) {
		boolean = true;
		cart_state = "checked"
	}
	else {
		boolean = false;
		cart_state = "unChecked"
	}
	
	$.ajax({
		async : false,
		type : 'GET',
		url : './updateCartStateDate',
		data : {
			cart_state : cart_state,
			cart_delivery_date : cart_delivery_date
		},
		success : function(){	
			$(this).parents('.delivery_date').siblings('.product_list').find('input').each(function(){
				$(this).prop('checked', boolean);
			});				
			getCartList();
			isAllChecked();
			priceSetting();
			countProduct();
		},
		error : function(xhr, status, error){
			console.log("error");				
		}			
	});
})

// ===== ===== ===== 상품 체크박스 ===== ===== ===== 
$('.product_list').find('input').click(function(){
	
	let cart_id = $(this).parents('.product_wrap').data('cart_id');
	let cart_state;
	if ($(this).is(':checked') == true) {
		cart_state = "checked"
	}
	else {
		cart_state = "unChecked"
	}	
	
	$.ajax({
		async : false,
		type : 'GET',
		url : './updateCartStateOne',
		data : {
			cart_state : cart_state,
			cart_id : cart_id
		},
		success : function(){
			getCartList();
			isAllChecked();
			priceSetting();
			countProduct();
		},
		error : function(xhr, status, error){
			console.log("error");				
		}			
	});
	
});

// ===== ===== ===== 삭제 버튼 ===== ===== ===== 
$('.prd_del').click(function(){
	
	let cart_id = $(this).parents('.product_wrap').data('cart_id');
	
	$.ajax({
		async : false,
		type : 'GET',
		url : './deleteCartOne',
		data : {
			cart_id : cart_id
		},
		success : function(){
			getCartList();
			isAllChecked();
			priceSetting();
			countProduct();
		},
		error : function(xhr, status, error){
			console.log("error");				
		}	
	});
});

// ===== ===== ===== 수량 버튼 ===== ===== ===== 
$('.btn_quantity').click(function(){
	
	
	let increment = $(this).attr('class').split(' ')[1];
	let cart_quantity = Number($(this).siblings('span').data('quantity'));
	
	if (increment == "minus" && cart_quantity == 1){
		console.log("error");
	} else {
		if (increment == "plus") { cart_quantity++ }
		else { cart_quantity-- }
		let cart_id = $(this).parents('.product_wrap').data('cart_id');
		
			$.ajax({
				async : false,
				type : 'GET',
				url : './updateCartQuantity',
				data : {
					cart_id : cart_id,
					cart_quantity : cart_quantity
				},
				success : function(){
					getCartList();
					isAllChecked();
					priceSetting();
					countProduct();
				},
				error : function(xhr, status, error){
					console.log("error");					
				}	
			});		
	}

});

// ===== ===== ===== 선택, 품절/마감 삭제 버튼 ===== ===== ===== 
$('.prd_select').find('button').click(function(){
	if ($(this).data('del-type') == "c") {
		$('.product_wrap').each(function(){
			if($(this).find('input').is(':checked') == true){
				$(this).find('.prd_del').trigger('click');
			}
		});			
	} else {
		$('.product_wrap').each(function(){
			if($(this).find('input').attr('disabled') == "disabled"){
				$(this).find('.prd_del').trigger('click');
			}
		});		
	}
});

// ===== ===== ===== 선택 주문하기 버튼 ===== ===== ===== 
$('.orderChoiceBtn').click(function(){
	if ($('.total_payment_price').data('total_payment_price') > 0){
		location.href = './orders'		
	} else {
		alert("선택하신 상품이 없습니다.");
	}
});

// ===== ===== ===== 전체 주문하기 버튼 ===== ===== ===== 
$('.orderBtn').click(function(){
	
	$.ajax({
		async : false,
		type : 'GET',
		url : './updateCartStateAll',
		data : {
			cart_state : "checked"
		},
		success : function(){	
			$('input').prop('checked', true);			
			getCartList();
			isAllChecked();
			priceSetting();
			countProduct();
			location.href = './orders'
		},
		error : function(xhr, status, error){
			console.log("error");				
		}			
	});	
	
});