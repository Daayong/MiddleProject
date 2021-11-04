<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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