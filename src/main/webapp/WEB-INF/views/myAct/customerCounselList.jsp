<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/myAct/customerCounselList.css" rel="stylesheet">
	
	
	<title>My쿡킷 - 집밥을 특별하게,쿡킷</title>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
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
	<c:forEach var="qnaList" items="${qnaList}">
	<li>
		<div class="head" >
			<a class="link_cnt ui_accord_toggle" data-open-text="내용 더 보기" data-close-text="내용 닫기">
			<input type="hidden" name="cusCslSeq" value="486099">
				<div class="tit">
				<c:choose>
					<c:when test="${empty qnaList.qna_answer}">
						<span class="ans_state ing"><span class="hide">답변 상태 : </span>답변대기</span>
					</c:when>
					<c:otherwise>
						<span class="ans_state end"><span class="hide">답변 상태 : </span>답변완료</span>
					</c:otherwise>
				</c:choose>		
					<span class="subject"><span class="hide">질문내용</span>${qnaList.qna_content}</span>
					<span class="date"><span class="hide">문의일자</span>${qnaList.qna_date}</span>
				</div>
				<span class="hide ui_accord_text">내용 열기</span>
			</a>
			
			<div class="etc_info" data-qna_id = "${qnaList.qna_id }">
					<span class="prd_txt num" id="prdOrdNo" ><span class="cusOdrNo">${qnaList.payment_id}</span></span>
				<a href="../member/myOrderList"><span class="prd_txt name hiddenEmpty"><span class="hide">연관주문상품</span><span class="cusPrdNm"></span></span></a>
				
				<div class="add_sec" style="display : none;">
					<div class="added_file">
					</div>
				</div>
				<button type="button" class="btn sm white delete" name="MycounselDelete"><span>삭제</span></button>
			</div>
		</div>

				<div class="desc ui_accord_content txtDataArea" id="qna_answer486099">
				
					<div class="desc_cont">
					<div class="cont">
					<span class="hide">답변내용</span>
					${qnaList.qna_answer}
					</div>
					<span class="date"><span class="hide">답변일자</span>${qnaList.qna_answer_date }</span>
					</div>
				</div>

				</li>
				
					<!-- //loop -->

				</c:forEach>

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

/* 답변창 accord */
$(".head").click(function() {
	if($(this).next().css("display")=="none"){
		$(this).next().slideDown("200");
		$(this).parent().addClass("on");
	}else{
		$(this).next().slideUp("200");
		$(this).parent().removeClass("on");
	}
});

$(function() {
	$('.delete').click(function() {
		var qna_id = $(this).parents(".etc_info").data('qna_id');
		
		if(confirm("1:1 문의내역을 삭제하시겠습니까?") == true){
			$.ajax({
				url:'./MycounselDelete',
				type: 'get',
				data: {qna_id : qna_id},
				success: function(data) {
					if(data == '1'){
					
					location.reload();
					}else{
						alert("1:1 문의내역 삭제에 실패했습니다.");
					}
				}
				
				
			});
		}else{
			return false;
		}
		
		
	});
});



</script>

</body>
</html>