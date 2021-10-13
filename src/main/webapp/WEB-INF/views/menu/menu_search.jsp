<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Menu Search</title>
		<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/css/menu/menu_search.css" rel="stylesheet">
		<style>		
			.wrapper{
				position:relative;
				width:100%;
			}
			#container{
				width:1180px;
				min-height:100%;
				margin: 0 auto;
			}
		</style>
	</head>
	<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
		
	<div class="wrapper">		
	<!-- 여기에 페이지 작업 -->
		<section id="container">
			<div id="container_title" class="hide" tabindex="-1">본문 시작</div>

			<!-- content -->
			<style>
				.highlight{
					color: #008A00;background-color: white;font-weight: bold;
				}
			</style>
			<script type="text/javascript" src="//www.cjcookit.com/pc/js/jquery/jquery.highlight.js"></script>
			<section id="container">
					<div id="container_title" class="hide" tabindex="-1">본문 시작</div>
					<!-- content -->
					<div id="content" class="pd_wrap pd_mu_wrap">
						<div class="olki_list_wrap">
							<div class="top_sec">
								<h2>메뉴찾기</h2>
			                </div>
			                
			                <!-- 통합 검색 -->
			                <div class="box_mu_search">
								<div class="sch_wrap">
									<div class="input_wrap sch_area ui_inputfield">
										<label for="fn_txt_srch" class="hide">검색어 입력</label>
										<input type="text" class="txt" name="keyWord" id="fn_txt_srch" placeholder="메뉴명으로 검색해 주세요." onkeyDown="onkeyDown();" value="" required="">
										<button class="ico del"><span class="hide">입력 삭제</span></button>
										<input type="hidden" name="initPage1" id="initPage1" value="1">
										<input type="hidden" name="initPage2" id="initPage2" value="2">
										<button type="button" class="btn btn_srch" onclick="searchKeyWord()"><span class="hide">검색</span></button>
									</div>
								</div>
								<p class="desc">COOKIT의 모든 메뉴를 쉽고 빠르게 찾아볼 수 있습니다.<br>판매 중단된 메뉴는 <strong>재판매 알림</strong>을 신청하세요! 재판매시 알림을 드립니다.</p>
			                </div>
			
			                <div class="top_sub_sec">
			                    <h3>판매중</h3>
			                </div>
			                <!-- Menu Grid -->
							<div id="menus_wrap">
								<div id="item_wrap">
									<!-- 나중에 c:foreach 반복문 쓰기 -->
									<c:forEach items="${prdDTO}" var="prd">
										<div class="item_box">
											<div class="click_menu"> <!-- div 버튼 만들기 -->
												<input type="hidden" value="${prd.product_id}" id="product_id">
												<div class="item_image">
													<img alt="test" src="../resources/upload/menu/main/${prd.product_id}/${prd.product_name}.jpg">
												</div>
												<p class="etc_info">${prd.product_recipe}</p>
												<div class="item_title">
													*${prd.product_name}
												</div>
												<div class="item_price">
													<fmt:formatNumber value="${prd.product_price}" type="number" maxFractionDigits="3"/>원
												</div>
												<div class="item_review">
													<ul>
														<li></li>
														<li>리뷰 4,000</li>
													</ul>
												</div>
											</div>
											<div class="item_btnbox">
												<div class="menu_btn zzim_btn">
													<img alt="zzim" src="../resources/images/menu/zzim_btn.png">
												</div>
												<div class="menu_btn cart_btn">
													<img alt="cart" src="../resources/images/menu/cart_btn.png">
												</div>
											</div>
										</div>
										<!-- c:foreach -->
									</c:forEach>	
								</div>
								<div class="pager_wrap">
									<ul class="pager">
										<li class="pager_item"><a href="#">1</a></li>
									</ul>
								</div>
							</div>	
			                <div class="top_sub_sec">
			                    <h3>판매종료</h3>
			                </div>
			                <!-- 리스트 -->
			                <div class="olki_list"> 
			                    <ul id="closePrd"></ul>
			                    <div class="no_data" id="closePrdNoData" style="display:none;">
				                    <span class="ico"></span>
				                    <strong>등록된 메뉴가 없습니다.</strong>
				                </div>
								<!-- 페이징 -->
								<div class="pagination" id="paging2"></div>
								
			                </div>
			                
							<!-- //리스트 -->
			
						</div>
					</div>
					<!-- //content -->
				</section>
				
			<script type="text/javascript">
			var keyWordNonBlock = false;
			var search = {
					page1		: 1,
					page2		: 1,
					keyWord		: "", 
					dataType	: "0"
					
				};
			
			var apiUrl = {
				List : "/pc/menu/searchProdList.json"
			}
			
			var Common = {
				Ajax : function(url, type, Param, dataType, callback){
				console.log("호출직전" , Param);
					$.ajax({
						async		: true,
						type : type,
						url : url,
						data : Param,
						dataType : dataType,
						success : function(data) {
							if(!crew.ajaxValidate(data)){ return; }
							callback(data);
						},
						error: function(data, textStatus, jqXHR){
							console.log("---------------------------------> error!!");
							console.log(textStatus);
							console.log(jqXHR);
						}
					});
				}
			};
			
			var callback = {
				searchProdListCallback : function(data){
					console.log("호출", data);
					if(!crew.ajaxValidate(data)){ return; }
			    	
			    	$(".no_data").css("display","none");
			    	// 키워드가 null인 경우의 판단을 편하게 하기 위해서 값 조정
			    	if(data.menuSearch.keyWord == null){
			    		data.menuSearch.keyWord = "";
			    	}
			   
			    	//-----------------------------------------------------------------------------------
			    	// 판매중 상품목록 처리
			    	if(data.menuSearch.dataType == "0" || data.menuSearch.dataType == "1"){
			    		console.log("판매중 상품목록 부분");
			        	var area1 = "#salePrd";
			          	
			        	// 요청 페이지가 첫페이지인 경우 기존의 상품 유닛 삭제 처리
			        	if((data.page1 == 0 && data.menuSearch.keyWord == "") || (data.page1 == 1 && data.menuSearch.keyWord != "")){ 
			        		$(area1).find(area1).remove();
			        	}
			        	
			        	// 카운트 정보 설정+a
			        	$(area1 + "CntInfo").html("판매중 (" + data.totalCount1 + ")");
			        	
			        
			        	// 데이터가 존재하는 경우와 데이터가 존재하지 않는 경우
			        	if(data.listCount1 != 0){
			            	$(area1).empty().append(data.html1);			// 데이터 적용
			            	$("#paging1").empty().html(data.paging1.trim());			// paging
			            	//console.log("paging1 >>> \n" + data.paging1.trim());
			           	}else{
			           		$(area1).empty();
			        		$("#paging1").empty();
			        	   	$(area1 + "NoData").show();				// 데이터 없음 영역 활성화
			        	}
			    	}
			
			    	
			
			    	//-----------------------------------------------------------------------------------
			    	// 판매종료 상품목록 처리
			    	if(data.menuSearch.dataType == "0" || data.menuSearch.dataType == "2"){
			        	var area2 = "#closePrd";
			        	
			        	// 요청 페이지가 첫페이지인 경우 기존의 상품 유닛 삭제 처리
			        	if((data.page2 == 0 && data.menuSearch.keyWord == "") || (data.page2 == 1 && data.menuSearch.keyWord != "")){
			        		$(area2).find(".tit_info").remove();
			        	}
			        	
			           	// 카운트 정보 설정
			        	$(area2 + "CntInfo").html("판매종료 (" + data.totalCount2 + ")");
			        	
			        	// 데이터가 존재하는 경우와 데이터가 존재하지 않는 경우
			        	if(data.listCount2 != 0){
			            	$(area2).empty().append(data.html2);			// 데이터 적용
			            	$("#paging2").empty().append(data.paging2.trim());			// paging
			            	
			        	}else{
			        		$(area2).empty();
			        		$("#paging2").empty();
			        	   	$(area2 + "NoData").show();				// 데이터 없음 영역 활성화
			        	}
			    	}
			
			    	
			    	// 하이라이트 처리
			    	if(data.menuSearch.keyWord != "" && data.menuSearch.keyWord != null){
			    		setTimeout(function(){
			        		$(".tit_info").find(".mt_elps").highlight();
			        		$(".tit_info").find(".mt_elps").trigger("search.highlight", data.menuSearch.keyWord);        			
			    		}, 100);
			    		
			    		if(keyWordNonBlock){
			    			var url = cj.hist.getUrl() + "?" + "page1={page1}&page2={page2}&keyWord={keyWord}&dataType=0&scrollTop=0";
					    	url= url.replace("{page1}", search.page1)
					    		.replace("{page2}", search.page1)
					    		.replace("{keyWord}", encodeURIComponent(search.keyWord))
					    		.replace("{dataType}", search.dataType);
					    	history.replaceState(null, url, url);
				    		keyWordNonBlock = false;
			    		}
			    	}else{
			    		cj.hist.createHistory(search);
			    	}
				}
			};
			
			function onkeyDown(){
				if(event.keyCode == 13) searchKeyWord();
			}
			//검색 처리
			function searchKeyWord(){
				var keyWord = $.trim($("input[name=keyWord]").val());
				if(keyWord == ""){
					alert("검색어를 입력하세요");
					return;
				}
				
				if(keyWord == "히든쿠폰"){
					location.href ="/pc/myBnf/jehuCouponTrade";
				}else{
					keyWordNonBlock = true;
					search.page1	= 1;
					search.page2	= 1;
					search.keyWord	= keyWord;
					search.dataType	= "0";
					Common.Ajax(apiUrl.List, "POST", search, "JSON", callback.searchProdListCallback);	
				}
			}
			
			function historyBackHandle(data){
				// 데이터를 다시 로딩할 조건 구성
				search = data;
				search.page1 	= search.page1;	// 1페이지부터 다시 데이터를 채워넣음.
				search.page2 	= search.page2;	// 1페이지부터 다시 데이터를 채워넣음.
				search.dataType	= "0";
				
				// 목록 데이터 로딩 시작
				search.isHist= false;
				search.reHist= false;
				Common.Ajax(apiUrl.List, "POST", search, "JSON", callback.searchProdListCallback);
			}
			
			function menuList(obj, page) { // FAQ 목록 구성
				// 데이터를 다시 로딩할 조건 구성
				if(obj == "default"){
					search.dataType = "1";
					search.page1 	= page;	// 1페이지부터 다시 데이터를 채워넣음.		
					$(window).scrollTop($("#salePrd").offset().top);
				}else{
					search.dataType = "2";
					search.page2 	= page;	// 1페이지부터 다시 데이터를 채워넣음.
					$(window).scrollTop($("#closePrd").offset().top);
				}
				Common.Ajax(apiUrl.List, "POST", search, "JSON", callback.searchProdListCallback);
			}
			
			//찜하기 콜백 함수
			function syncInterest(data) {console.log(data);
				var $wrap = $('.pd_wrap'); 
				var $totalPrices = $wrap.find('.total_ord_price');
				
				var isOn = true;
			    if(data.info.subResultCode == "2") {
			    	isOn = false;
			    }               
				
			    $.each( $totalPrices, function( i, item ) { 
			        var $interest = $(item).find('button.interest'); 
			        $interest.find('span').text(isOn?'찜하기':'찜 취소하기');
			        $interest.toggleClass('on');
			    }); 
			}
			$(document).ready(function(){
				if(search.keyWord.length > 0){
					$.trim($("input[name=keyWord]").val(search.keyWord));
				}
				search.page1 = ($("#initPage1").val() < 1 ?  1 : $("#initPage1").val());
				search.page2 = ($("#initPage2").val() < 1 ?  1 : $("#initPage2").val());
				console.log(search.page1, search.page2);
				Common.Ajax(apiUrl.List, "POST", search, "JSON", callback.searchProdListCallback);
			})
			</script>
			
			<!-- //content -->
		</section>
		
		<!-- 여기까지 -->
		<div class="push"></div>
		</div>
		<c:import url="../temp/boot_footer.jsp"></c:import>
	</body>
</html>