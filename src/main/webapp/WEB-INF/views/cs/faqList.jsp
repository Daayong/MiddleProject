<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/faqList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/paging.css" rel="stylesheet">

<html>
<head>

<script src="http://code.jquery.com/jquery-latest.js"></script>
	<title>Home</title>
	
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		
		.wrapper{
			position:relative;
			width: 100%;	
		}
		
		#container{
			width: 1180px;
			min-height:100%;
			margin: -117 auto -290;
			padding: 117 0 290;
		}
	</style>	
	
</head>
<body>

<div class="wrapper">		

<c:import url="../temp/boot_nav.jsp"></c:import>
<!-- 여기에 페이지 작업 -->

	<section id="container">
	
	
		<div id="cs_content">
		
			<div class="cs_wrap">
				<h1 class="cs_title">고객행복센터</h1>
				
				<!-- tab -->
				<div class="tab_wrap">
					<ul class="tabs">
						<li class="on" ><a href="${pageContext.request.contextPath}/cs/faqList"><span id="faq">FAQ</span></a></li>
						<li><a href="${pageContext.request.contextPath}/cs/noticeMain"><span id="nt">공지사항</span></a></li>
						<li><a href=" ${pageContext.request.contextPath}/cs/userGuide"><span id="ug" >새벽배송/이용안내</span></a></li>
					</ul>			
				</div>					
				<!-- faq contents -->
				<div class="faq_conts">
				
					<!-- search area -->
					<div class="f_search">
						<h2 class="tit">FAQ 검색</h2>
						<div class="box_search">
						<div class="sch_wrap">
							<div class="input_wrap">
									<input type="text" class="txt" id="fn_txt_srch" placeholder="검색어를 입력해주세요" name="keyWord"  ><!-- value 사용자 입력 값 나중에 추가 -->
									<button class="ico del"><span class="hide">입력 삭제</span></button>
									<button type="button" class="btn btn_srch" onclick="javascript:goSearch()"><span class="hide">검색</span></button>
								</div>
							</div>
						</div>		
					</div>		
							
				<!-- faq type -->
					<div class="f_type">
						<h2 class="tit">문의유형</h2>
							<div class="cate_wrap ui_tab">
							
							<ul>
											
							<li class="tab_item on"  id="all" >
								<a class="tab_link " ><span>전체</span></a>
							</li>
						
							<li class="tab_item" id="ship" >
								<a   class="tab_link" ><span>배송</span></a>
							</li>
						
							<li class="tab_item" id="pay" >
								<a class="tab_link" ><span>결제/영수증</span></a>
							</li>
							<li class="tab_item "  id="order" >
								<a class="tab_link" ><span>주문</span></a>
							</li>
						
							<li class="tab_item " id="cancel" >
								<a  class="tab_link" ><span>취소/반품</span></a>
							</li>
						
							
							<li class="tab_item" id="rv" >
								<a  class="tab_link" ><span>리뷰/포인트</span></a>
							</li>
							
					
							<li class="tab_item" id="gift"  >
								<a class="tab_link" ><span>선물하기</span></a>
							</li>
					
							
							<li class="tab_item " id="mem">
								<a  class="tab_link" ><span>회원</span></a>
							</li>
							
							<li class="tab_item "  id="etc" >
								<a class="tab_link" ><span>기타</span></a>
							</li>	
					</ul>
				</div>
			</div>
			
				<!-- faq table view -->
				
			 <div id="tabView" style="display:block;">
                  
                 <div class="faq_view">
              
				<div class="list_acco ui_accordion" data-accord-group="faq_list">
					<ul class="faqListArea">
		
		  	<li>
	            <div class="head">
	               	<a href="#"  class="accord_toggle"  >
	                    <div class="tit">
	                        <strong>Q</strong>회원 아이디, 비밀번호를 분실한 경우 어떻게 찾을 수 있나요.
	                        <span class="cate"><span class="hide">해당 질문 분류</span>회원</span>
	                    </div>     
	                    <span class="hide">내용 닫기</span>
	                </a>
	            </div>
	            <div class="desc ui_accord_content" id="answer" style="display: none" >
	                <strong>A</strong>
	             	<p class="cont"><p>로그인 페이지에서 아이디/비밀번호 찾기를 통해 확인 가능합니다.<br><br>간편 로그인의 아이디/비밀번호를 잊으셨다면, 해당 SNS(카카오톡,네이버,페이스북) 사이트에서 <br>아이디/비밀번호를 확인하실 수 있습니다.&nbsp;</p></p>
	            </div>
           		</li>
		

			</ul>
			</div>	
								
				</div>
			</div>
				
				<!-- paging -->
				<div class="pagination">
					<a class="btn_first" href="#"></a>
						<a class="btn_prev" href="#"></a>
						<span class="page_num">
							<strong>1</strong>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#">4</a>
							<a href="#">5</a>
							
						</span>
						<a class="btn_next" href="#"></a>
						<a class="btn_last" href="#"></a>
				</div>
				<!-- bottom_info -->
				<div class="bottom_info">
					<span class="txt">FAQ로 해결되지 않으셨다면, 궁금한 점을 문의해주세요.</span>
					<a href="#" class="rec_link"><span>1:1 문의 작성</span></a>
				</div>
			
			</div>
			
			</div>
	
		</div>
		
	
	</section>

	</div>

<c:import url="../temp/boot_footer.jsp"></c:import>

<script type="text/javascript">
	$(".tab_item").click(function() {
		$(this).addClass("on")
		$(".tab_item").not(this).removeClass("on");
	});

	
	/* 
	$("#all").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});	
	
	$("#ship").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});

	$("#pay").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});
	
	$("#order").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});
	
	$("#rv").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});
	
	$("#gift").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});
	
	$("#mem").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});
	
	$("#etc").click(function() {
		$(".ui_tab").find("li").not(this).removeClass("on");
		$(this).addClass("on");
	});
	
 */
 
 
</script>


</body>
</html>