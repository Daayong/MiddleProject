<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

<style>
	
	footer{height:238px; background-color:#222; color:#777; z-index:999; position:relative; }
	#footer_wrap{width:1060px;margin:0 auto;text-align:center; line-height:30px; padding-top:30px; }
	#footer_wrap span{margin-right:15px;}
	#footer_wrap .copyright span{vertical-align:top;}
</style>



<footer>
	<div id="footer_wrap">
		<div class="addr">
			<span>대표이사 차인혁(CHA IN HYOK)</span>
			<span>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</span>
			<span>CJ ONE 고객센터 1577-8888</span>
			<span>사업자 등록번호 104-81-36565</span>
		</div>
		<div class="co_name">
			<span>호스팅사업자 CJ올리브네트웍스</span>
			<span>통신판매업신고번호 2017-서울용산-0451</span>
		</div>
		<div class="copyright">
			<span class="img_logo">
				<img src="${pageContext.request.contextPath}/resources/images/my/logo_cjolivenetworks_footer.png">
			</span>
			<span>Copyright (c)2016 CJ OLIVENETWORKS ALL Rights Reserved</span>
		</div>
	</div>
</footer>