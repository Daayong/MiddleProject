<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/myAct/customerCounselList.css" rel="stylesheet">
	
	<title>My쿡킷 - 집밥을 특별하게,쿡킷</title>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	<style>	
		.wrapper{
			position:relative;
			width:100%;
		}
		
		#container{
			width:1180px;
			min-height:100%;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/boot_nav.jsp"></c:import>	
	
	<section id="container">
	
	<!-- 전체 영역  -->
	<div id="my_wrapper" class="my_wrap">
		<!-- 왼쪽 메뉴탭 -->
		<c:import url="../temp/myPage_nav.jsp"></c:import>
		
		
		
		
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
			
			<div class="order_view my_activity">
				<h3>1:1 문의</h3>
			<div class="top_sec">
				<div class="tab_menu">
					<ul>
						<li><a href="${pageContext.request.contextPath}/cs/formCounsel">1:1 문의 작성</a></li>
						 <!-- 선택된 메뉴에 on클래스 추가 -->
						<li class="on"><a href="${pageContext.request.contextPath}/myAct/customerCounselList">1:1 문의 내역</a></li>
					</ul>
				</div>
			</div>
			
			<!-- 1:1 문의 내역-->
			
				<div class="qna_list_wrap">
				<div class="list_acco ui_accordion" data-accord-group="info" data-single-open="true" ui-modules="Accordion">
					<ul id="myInqDataArea">
	

	<!-- loop -->
	<li>
		<div class="head">
			<a class="link_cnt ui_accord_toggle" data-open-text="내용 더 보기" data-close-text="내용 닫기">
			<input type="hidden" name="cusCslSeq" value="486099">
				<div class="tit">
						<span class="ans_state end"><span class="hide">답변 상태 : </span>답변완료</span><!-- 개발 요청 사항 : 답변대기 시 .ans_state에 ing 클래스 추가 / 답변완료 시 .ans_state에 end 클래스 추가 -->
						
					<span class="subject"><span class="hide">질문내용</span>새벽배송이 가능한 지역은 무조건 새벽배송으로만 배송되나요??</span>
					<span class="date"><span class="hide">문의일자</span>2021-10-14</span>
				</div>
				<span class="hide ui_accord_text">내용 열기</span>
			</a>
			<div class="etc_info">
			
				<span class="prd_txt name hiddenEmpty"><span class="hide">연관주문상품</span><span class="cusPrdNm"></span></span>
				
				<div class="add_sec" style="display : none;">
					<div class="added_file">
					</div>
				</div>
				<button class="btn sm white" onclick="deleteCustomerCounsel('486099')"><span>삭제</span></button>
			</div>
		</div>

				<div class="desc ui_accord_content txtDataArea" id="qna_answer486099">
				
					<div class="desc_cont">
					<div class="cont">
					<span class="hide">답변내용</span>
					안녕하세요, 소중한 고객님<br>CJ쿡킷입니다.<br><br>저희 쿡킷 제품은 일반 배송은 진행되지 않고<br>새벽배송으로만 진행되고 있어 이 점 양해말씀드립니다.<br><br>감사합니다.<br>CJ 쿡킷 드림. 
					</div>
					<span class="date"><span class="hide">답변일자</span>2021-10-14</span>
					</div>
				</div>

				</li>
					<!-- //loop -->


					</ul>
				</div>

					<div class="pagination" id="paging">
						<span class="page_num">
							<strong><span class="hide">현재 페이지</span>1</strong>
						</span>
					
					</div>
					
				<div class="qna_bottom_info">
					<span class="txt">답변이 부족하거나 추가 문의사항이 있으시면 등록해주세요.</span>
					<a href="../cs/formCounsel" class="rec_link"><span>추가 1:1 문의 작성</span></a>
				</div>
			</div>
			
			
			
		
		</div>
		
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
		</div>	
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script type="text/javascript">

$(".head").click(function() {
	if($(this).next().css("display")=="none"){
		$(this).next().slideDown("200");
		$(this).parent().addClass("on");
	}else{
		$(this).next().slideUp("200");
		$(this).parent().removeClass("on");
	}
});

</script>

</body>
</html>