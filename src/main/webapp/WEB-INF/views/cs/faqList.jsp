<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cs/csMain.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cs/faqList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/paging.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


	<title>고객행복센터 - 집밥을 특별하게, 쿡킷</title>
	
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
									<input type="text" class="txt" id="fn_txt_srch" placeholder="검색어를 입력해주세요" name="keyword"  ><!-- value 사용자 입력 값 나중에 추가 -->
									<button class="ico del"><span class="hide">입력 삭제</span></button>
									<button type="button" class="btn btn_srch"><span class="hide">검색</span></button>
								</div>
							</div>
						</div>		
					</div>		
					
				<!-- faq type -->
					<div class="f_type">
						<h2 class="tit">문의유형</h2>
							<div class="cate_wrap ui_tab">
							
							<ul>
											
							<li class="tab_item"  id="all" >
							 <button class="fType on" type="button" data-faq_type=""><span>전체</span></button>
							</li>
						
							<li class="tab_item" id="ship" >
								 <button class="fType" type="button" data-faq_type="배송"><span>배송</span></button>
							</li>
						
							<li class="tab_item" id="pay" >
								<button class="fType" type="button" data-faq_type="결제/영수증"><span>결제/영수증</span></button> 
								 
							</li>
							<li class="tab_item "  id="order" >
								 <button class="fType" type="button" data-faq_type="주문"><span>주문</span></button> 
								 
							</li>
						
							<li class="tab_item " id="cancel" >
								<button class="fType" type="button" data-faq_type="취소/반품"><span>취소/반품</span></button> 
								 
							</li>
						
							
							<li class="tab_item" id="rv">
								<button class="fType" type="button" data-faq_type="리뷰/포인트"><span>리뷰/포인트</span></button> 
							 
							</li>
							
					
							<li class="tab_item" id="gift">
								<button class="fType" type="button" data-faq_type="선물하기"><span>선물하기</span></button> 
								 
							</li>
					
							
							<li class="tab_item " id="mem">
								 <button class="fType" type="button" data-faq_type="회원"><span>회원</span></button> 
								 
							</li>
							
							<li class="tab_item "  id="etc" >
								<button class="fType" type="button" data-faq_type="기타"><span>기타</span></button> 
								 
							</li>	
					</ul>
				</div>
			</div>
			
			<!-- faq list-->
				
			 <div id="tabView" style="display:block;">
                  
              <div class="faq_view">
              
			<div class="list_acco ui_accordion" data-accord-group="faq_list">
				
				<ul class="faqListArea" id="item_wrap">
				
			<c:forEach items="${faqlist}" var="dto">
				
		  		<li class="faq_list">
	            	<div class="head" style="cursor: pointer;">
	               		<a class="accord_toggle"  >
	                    	<div class="tit">
	                        	<strong id="q" >Q</strong>${dto.faq_subject}
	                        <span class="cate"><span class="hide">해당 질문 분류</span>${dto.faq_type}</span>
	                    </div>     
	                    <span class="hide">내용 닫기</span>
	                </a>
	            </div>
	            <div class="desc ui_accord_content" id="answer" style="display: none" >
	                <strong>A</strong>
	             	<p class="cont">
	             	
	            	 	<c:if test="${not empty member and member.member_user_id eq 'admin' }">
							<a href="./faqDelete?faq_id=${dto.faq_id}" class="btn de wh" ><span>삭제</span></a>
						</c:if>
	             	${dto.faq_content}
	             	</p>
	             
	            </div>
           		</li>
           		
           		</c:forEach>

			</ul> 
			</div>	
								
				</div>
			</div>
				<!-- paging -->
				<div class="pagination">
				
				
				<c:if test="${not empty member and member.member_user_id eq 'admin'}">
						<button class="btn_add white" onclick="location.href='./faqUpload'"><span>faq 추가</span></button>
					</c:if>
					
						<span class="page_num">
					
							<a href="#"><strong class="on">1</strong></a>
			
						</span>
						
				</div>
				<!-- bottom_info -->
				<div class="bottom_info">
					<span class="txt">FAQ로 해결되지 않으셨다면, 궁금한 점을 문의해주세요.</span>
					<a href="${pageContext.request.contextPath}/cs/formCounsel" class="rec_link"><span>1:1 문의 작성</span></a>
				</div>
			
			</div>
			
			</div>
	
		</div>
		
	
	</section>

	</div>

<c:import url="../temp/boot_footer.jsp"></c:import>

<script type="text/javascript">
	
	
	/* Q 선택시 답변 아래로 */
	$(".head").click(function() {
		if($(this).next().css("display")=="none"){
			$(this).next().slideDown("50");
			$(this).parent().addClass("on");
		}else{
			$(this).next().slideUp("50");
			$(this).parent().removeClass("on");
		}
	});
	
	

		 
	    	$(".fType").on('click',function(){
	    			var faq_type = $(this).attr('data-faq_type');  
	    			console.log(faq_type);
	    			
	    			$.ajax({
	    	              type : "get", 
	    				 url : './faqTypeList',  
	    	              data : { 
	    	            	  faq_type : faq_type
	    	              }, 
	    	              success : function(result){ 
	    	           		result = result.trim();
	    	     
	    	               $('.faq_view').html(result);
	    	    	               
	    	              },
	    	              error : function(result){
	    	            	 alert('error');

	    	              }
	    			})
   			
	    		});
	    		
	    		$(".fType").click(function() {
	           		
					$(".fType").removeClass("on");
    				$(this).addClass("on");
    	                
				});

	
	    
	    
	
</script>


</body>
</html>