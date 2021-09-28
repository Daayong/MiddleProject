<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/faqList.css" rel="stylesheet">

<html>
<head>
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
<c:import url="../temp/boot_nav.jsp"></c:import>

<div class="wrapper">		
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
							<div class="cate_wrap ui_tab" data-selected-index="0">
					<ul>
							<!-- 클래스(on)로 제어, ajax 사용 -->
						
						
						
							<li class="tab_item ui_tab_nav on">
								<a href="#" class="tab_link" ><span>전체</span></a>
							</li>
						
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>배송</span></a>
							</li>
						
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>결제/영수증</span></a>
							</li>
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>주문</span></a>
							</li>
						
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>취소/반품</span></a>
							</li>
						
							
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>리뷰/포인트</span></a>
							</li>
							
					
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>선물하기</span></a>
							</li>
					
							
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>회원</span></a>
							</li>
							
							<li class="tab_item ui_tab_nav ">
								<a href="#" class="tab_link" ><span>기타</span></a>
							</li>	
					</ul>
				</div>
			</div>
			
				<!-- faq table view -->
				
				<!-- 아코디언 기능 -->
				  <div id="tabView" class="ui_tab_panel" style="display:block;">
                   <div class="faq_view">
                       <h2 class="hide"></h2>
                       <p class="result_txt" id="cntKeyWord"></p>
                       <div class="list_acco ui_accordion" data-accord-group="faq_list" data-single-open="false" data-open-index="-1">
						<ul class="faqListArea">
							<!-- class=on 선택해서 열린 페이지 -->
							<li class="on">
								<div class="head btn_close">
									<a href="#"></a><!--클릭시 아코디언 -->
									<div class="tit"><strong>Q</strong></div>
										"회원 아이디, 비밀번호를 분실한 경우 어떻게 찾을수 있나요 "
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
							<a href="#">6</a>
							<a href="#">7</a>
							<a href="#">8</a>
							<a href="#">9</a>
							<a href="#">10</a>
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



</body>
</html>