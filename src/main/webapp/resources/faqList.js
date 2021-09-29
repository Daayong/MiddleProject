
 $(document).ready(function() {
	

$("#ship").click(function(){
	if($("#ship").hasClass("on")){
		$("#all").removeClass("on");
		$("#pay").removeClass("on");
		$("#order").removeClass("on");
		$("#cancel").removeClass("on");
		$("#rv").removeClass("on");
		$("#gift").removeClass("on");
		$("#etc").removeClass("on");
	}else{
		$("#ship").addClass("on");
	}
});

});
