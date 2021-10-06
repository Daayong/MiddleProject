/* menu_main 페이지 */

$(".click_menu").on("click", function() {
	
	let id = $(this).children("#product_id").val();
	location.href="./menu_detail?product_id=" + id;
	/* location.href="cookit_menu/menu_detail?prdNum";  => 나중에 DB연결 후 상품 번호 전달 */
	
});

/* menu_detail 페이지 */
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


/* detail_menu 수량변경시 나타나는 이벤트들 */
$("#prd_count").change(function(){
	let cnt = $(this).val();
	let perprice = $("#prd_price").val();
	let total = parseInt(cnt) * parseInt(perprice);
	$("#cnt_value").text(cnt);
	$("#total_value").text(total);
	
	$("#product_total_price").val(total);
});

/* detail_menu 선택한거 아래밑줄표시 */
/* 페이지 로드시 상세설명 기본값 */
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
        slideEndAnimation: true,
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
 
        enableTouch:true,
        enableDrag:true,
        freeMove:true,
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
 
        enableTouch:true,
        enableDrag:true,
        freeMove:true,
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
 
