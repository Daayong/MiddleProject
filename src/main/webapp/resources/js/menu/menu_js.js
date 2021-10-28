
/* =================== menu_main 페이지 ============== */

$(document).on("click", ".click_menu", function() {
	
	let id = $(this).children("#product_id").val();
	location.href="./menu_detail?product_id=" + id;
	/* location.href="cookit_menu/menu_detail?prdNum";  => 나중에 DB연결 후 상품 번호 전달 */
	
});

let date = "";
/* 주문일 */
$(".date").on("click", function () {
	date = $(this).val();
	$(this).css({
		"color" : "white",
		"background-color" : "#353535",
		"background-size" : "150px 150px",
		"border-radius" : "50px"
	});
	$(".date").not(this).css({
		"color" : "black",
		"background-color" : "white"
	});
 	$.ajax({
 		url: 'menu_main?date=' + date,
		type: "get",
		dataType: "html",
		success: function(res){
			let a = $(res).find("#item_wrap").html();
			$("#item_wrap").html(a);
			date = $(this).val();
		}
	}); 
});

/* 신메뉴, 인기순, 가격순 등등 정렬하는 부분. */
$(document).on("click", ".sortc_btn", function(){
	$(".sortc_check.add").removeClass("add");
	$(this).prev(".sortc_check").addClass("add");
	let sort_type = $(this).val();
	
	$.ajax({
		url: 'menu_main?kind=' + sort_type + '&date=' + date,
		type: "get",
		dataType: "html",
		success: function(res){
			let a = $(res).find("#item_wrap").html();
			$("#item_wrap").html(a);
		}
	});
});


/* ============== menu_search 페이지 ============== */
$(document).on("click", ".btn_srch", function(){
	
	let search_name = $("#fn_txt_srch").val();
	
	$.ajax({
		url: 'menu_search?product_name=' + search_name,
		type: 'get',
		dataType: 'html',
		success: function(res){
			let up = $(res).find("#item_wrap").html();
			$("#item_wrap").html(up);
			
			let down = $(res).find("#item_wrap2").html();
			$("#item_wrap2").html(down);
		}
	});
});


/* ============== menu_detail 페이지 ============== */
$("#description").click(function() {
	$(".description").show();
	$(".productInfo").hide();
	$(".reviews").hide();
	$(".orderHelp").hide();
	
	$(".menuLi:first").css("border-bottom","solid 2px black");
	$(".menuLi:eq(1)").css("border-bottom","none");
	$(".menuLi:eq(2)").css("border-bottom","none");
	$(".menuLi:last").css("border-bottom","none");
});

$("#productInfo").click(function() {
	$(".description").hide();
	$(".productInfo").show();
	$(".reviews").hide();
	$(".orderHelp").hide();
	
	$(".menuLi:first").css("border-bottom","none");
	$(".menuLi:eq(1)").css("border-bottom","solid 2px black");
	$(".menuLi:eq(2)").css("border-bottom","none");
	$(".menuLi:last").css("border-bottom","none");
});

$("#review").click(function() {
	$(".description").hide();
	$(".productInfo").hide();
	$(".reviews").show();
	$(".orderHelp").hide();
	
	$(".menuLi:first").css("border-bottom","none");
	$(".menuLi:eq(1)").css("border-bottom","none");
	$(".menuLi:eq(2)").css("border-bottom","solid 2px black");
	$(".menuLi:last").css("border-bottom","none");
});

$("#orderHelp").click(function() {
	$(".description").hide();
	$(".productInfo").hide();
	$(".reviews").hide();
	$(".orderHelp").show();
	
	$(".menuLi:first").css("border-bottom","none");
	$(".menuLi:eq(1)").css("border-bottom","none");
	$(".menuLi:eq(2)").css("border-bottom","none");
	$(".menuLi:last").css("border-bottom","solid 2px black");
});

/* 위에 이거 너무 김 더 좋은방법으로 바꾸기 */


/* 찜 버튼 로그인 여부 확인 */
const session = $("#session").val();


/* sleep 함수 */
function sleep(ms){
	return new Promise(resolve=>setTimeout(resolve,ms));
}

/* 찜 추가하기 */
$(".zzim").click(function (){
		
	if(session == ""){
		alert("로그인 후 이용가능합니다.");
		return false;
	}
	
	let product_id = $("input[name=product_id]").val();
	//let product_name = $(this).parent().prevAll(".click_menu").children("#product_name").val();
	
	$.ajax({
		url : 'setZzim?product_id=' + product_id,
		type : "get",
		success : async function(result){
			
			if(result==1){
				$(".zzimin_txt").text("찜하기 완료!");
				$(".zzimin_img").css({
					"visibility" : "visible"
				});
				
				await sleep(1000);
				
				$(".zzimin_img").css({
					"visibility" : "hidden"
				});
			}
			else{
				alert("해당 상품은 이미 찜목록에 있습니다!");
			}
		},
		error:function(request,status,error){
			
	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        
	    }		
	});
	
});

/* 장바구니에 추가하기 */

$(".cart_btn").click(function(){
	
	if(session == ""){
		alert("로그인 후 이용가능합니다.");
		return false;
	}else if($("input[name=product_cnt]").val() == 0){
		
		alert("주문 일자와 수량을 선택해주세요.")
		return false;
	}
	
	let product_id = $("input[name=product_id]").val();
	let cart_delivery_date = $("#prd_select option:selected").val();
	
	let month = cart_delivery_date.substr(5,2);
	let date = cart_delivery_date.substr(8,2);
	
	let cart_quantity = $("input[name=product_cnt]").val();
	
	$.ajax({
		url : "cart_insert?product_id=" + product_id + "&cart_delivery_date=" + cart_delivery_date + "&cart_quantity=" + cart_quantity,
		type : "get",
		success : async function(){
			$(".cartin_txt").text("배송일 " + month + "/" + date);
			$(".cartin_img").css({
				"visibility" : "visible"
			});
			await sleep(1000);
			$(".cartin_img").css({
				"visibility" : "hidden"
			});
		}
	});
});


/* 배송일 선택후 수량 선택하는 박스 나오게하기 및 박스 제거 */

// 초기 설정
$(".prd_count").css({
	"display" : "none"
});
$(".quantity").text("1");
$("#product_total_price").val(0);
$("#product_cnt_value").val(0);

// 재고 수
let maxStock = 0;

//
// 셀렉트 박스
$("#prd_select").change(function(){
	
	// jquery data로 남은재고수 가져오기
	maxStock = $("#prd_select option:selected").data("stock");
	
	let select_date= $("#prd_select option:selected").val();
	
	if(select_date == ""){
		$(".prd_count").css({
			"display" : "none"
		});
		$("#product_total_price").val(0);
		$("#product_cnt_value").val(0);
		$("#cnt_value").text("0");
		$("#total_value").text("0");
	}else{
		$("#product_total_price").val($("#prd_price").val());
		$("#product_cnt_value").val(1);
		$(".quantity").text("1");
		$("#cnt_value").text("1");
		$("#total_value").text($("#prd_price").val());
	}
	// 선택 날짜 값 받아오기 default = ""
	// ex) "2021-10-18"
	
	
	
	// 해당 일수 요일 배열 값
	let weekday = ["일", "월", "화", "수", "목", "금", "토"];
	
	if(select_date != ""){
		const parseYY = select_date.substr(0,4);
		const parseMM = select_date.substr(5,2);
		const parseDD = select_date.substr(8,2);
		
		// 선택 날짜 값 세팅 후 보내주기
		let setDate = new Date(parseYY, parseMM-1, parseDD);
		
		// prd_count 안 날짜 .date
		$(".date").text(setDate.getFullYear() + "-" + (setDate.getMonth()+1) + "-" + setDate.getDate() + "(" + weekday[setDate.getDay()] + ")");
		
		$(".prd_count").css({
			"display" : "block"
		});
	}	
});

// 셀렉트 박스 삭제 버튼
$(".btn_del_order").click(function(){
	$(".prd_count").css({
		"display" : "none"
	});
	
	// 초기화
	$("#prd_select option:first").val("");
	$("#product_total_price").val(0);
	$("#product_cnt_value").val(0);
	$(".quantity").text("1");
	$("#cnt_value").text("0");
	$("#total_value").text("0");
	
	//셀렉트박스 1번선택
	$("#prd_select option:first").prop("selected", "selected");
});

/* detail_menu 수량변경시 나타나는 이벤트들 */

let oneStockPrice = $("#prd_price").val();
let totalPrice;

$(".minus").on("click", function(){
	let cnt = parseInt($("#product_cnt_value").val()) - 1;
	
	if(cnt < 1){
		alert("최소 수량은 1개입니다.");
		return false;
	}
	
	$("#product_cnt_value").val(cnt);
	
	totalPrice = cnt * oneStockPrice;
	
	$(".quantity").text(cnt);
	$("#cnt_value").text(cnt);
	$("#total_value").text(totalPrice);
	
	// hidden
	$("#product_total_price").val(totalPrice);
	$("#product_cnt_value").val(cnt);
	
	let a = $("#product_total_price").val();
	let b = $("#product_cnt_value").val();
	
	console.log(a);
	console.log(b);
	
});
$(".plus").on("click", function(){
	
	let cnt = parseInt($("#product_cnt_value").val()) + 1;
	
	if(cnt > 10){
		alert("1인 최대 주문수량은 10개입니다. 대량 주문은 전화문의 바랍니다.");
		return false;
	}else if(cnt > maxStock){
		alert("현 주문일자의 남은 재고 수는 " + maxStock + " 개 입니다. 다른 일자로 주문해주세요.");
		return false;
	}
	
	$("#product_cnt_value").val(cnt);
	
	totalPrice = cnt * oneStockPrice;
	
	$(".quantity").text(cnt);
	$("#cnt_value").text(cnt);
	$("#total_value").text(totalPrice);
	
	// hidden
	$("#product_total_price").val(totalPrice);
	$("#product_cnt_value").val(cnt);
	
	let a = $("#product_total_price").val();
	let b = $("#product_cnt_value").val();
	
	console.log(a);
	console.log(b);
});

/* detail_menu 선택한거 아래밑줄표시 */
/* 페이지 로드시 기본값 */
$(document).ready(function() {
	$(".menuLi:first").css("border-bottom","solid 2px black");
	$(".productInfo").hide();
	$(".reviews").hide();
	$(".orderHelp").hide();
});

/* 배송안내 더보기 버튼 */
let dropBtnValue = $(".dropBtn_hide").attr("data-text-hide");

$(".dropBtn").on("click", function(){
	
	if(dropBtnValue == "off"){
		$(this).parent().next().css("display", "block");
		$(this).children(".downArrow").css("transform", "rotate(-90deg)");
		dropBtnValue = "on";
		$(".dropBtn_hide").attr("data-text-hide", dropBtnValue);
	}else{
		$(this).parent().next().css("display", "none");
		$(this).children(".downArrow").css("transform", "rotate(90deg)");
		dropBtnValue = "off";
		$(".dropBtn_hide").attr("data-text-hide", dropBtnValue);
	}

});

/* 슬라이더 */
$(document).ready(function() {
	let number;
    $("#lightSlider").lightSlider({
        item: 5,
        autoWidth: 90,
        slideMove: 1, // slidemove will be 1 if loop is true
        slideMargin: 10,
 
        addClass: '',
        mode: "slide",
        useCSS: true,
        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
        easing: 'linear', //'for jquery animation',////
 
        speed: 400, //ms'
        auto: false,
        loop: false,
        slideEndAnimation: false,
        pause: 2000,
 
        keyPress: false,
        controls: true,
        prevHtml: '',
        nextHtml: '',
 
        rtl:false,
        adaptiveHeight:false,
 
        vertical:false,
        verticalHeight:500,
        vThumbWidth:100,
 
        thumbItem:10,
        pager: false,
        gallery: false,
        galleryMargin: 5,
        thumbMargin: 5,
        currentPagerPosition: 'middle',
 
        enableTouch:false,
        enableDrag:false,
        freeMove:false,
        swipeThreshold: 40,
 
        responsive : [],
 
        onBeforeStart: function (el) {},
        onSliderLoad: function (el) {},
        onBeforeSlide: function (el) {},
        onAfterSlide: function (el) {},
        onBeforeNextSlide: function (el) {},
        onBeforePrevSlide: function (el) {}
    });
    
    let slider2 = $("#lightSlider2").lightSlider({
        item: 1,
        autoWidth: 600,
        slideMove: 1, // slidemove will be 1 if loop is true
        slideMargin: 0,
 
        addClass: '',
        mode: "slide",
        useCSS: true,
        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
        easing: 'linear', //'for jquery animation',////
 
        speed: 400, //ms'
        auto: false,
        loop: false,
        slideEndAnimation: true,
        pause: 2000,
 
        keyPress: false,
        controls: false,
        prevHtml: '',
        nextHtml: '',
 
        rtl:false,
        adaptiveHeight:false,
 
        vertical:false,
        verticalHeight:500,
        vThumbWidth:100,
 
        thumbItem:10,
        pager: false,
        gallery: false,
        galleryMargin: 5,
        thumbMargin: 5,
        currentPagerPosition: 'middle',
 
        enableTouch:false,
        enableDrag:false,
        freeMove:false,
        swipeThreshold: 40,
 
        responsive : [],
 
        onBeforeStart: function (el) {},
        onSliderLoad: function (el) {},
        onBeforeSlide: function (el) {},
        onAfterSlide: function (el) {},
        onBeforeNextSlide: function (el) {},
        onBeforePrevSlide: function (el) {}
    });
    
    $(".slide_item:first").children().css({
    	"border": "5px solid #bdd61a",
    	"opacity": "1"
    });
    
    $(".slide_item").on("click", function () {
    	let select = $(this);
    	number = $(this).val();
    	slider2.goToSlide(number);
    	
    	$(".slide_item").children().not(select).css({
    		"border": "none",
	    	"opacity": "0.5"
    	})
    	$(this).children().css({
    		"border": "5px solid #bdd61a",
	    	"opacity": "1"
    	});
	});
});