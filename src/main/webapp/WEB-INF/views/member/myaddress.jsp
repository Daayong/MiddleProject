<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/myPage.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberDelete.css" rel="stylesheet">
	
	<title>배송지관리 - 집밥을 특별하게,쿡킷</title>
	
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
		
		.box_header{width:860px;border-bottom:solid 1px #e0e0e0; padding-bottom:10px; }
		.box_header .title{font-size:20px; display:inline-block; letter-spacing:0.5px;  }
		.box_header .default{font-size:13px; color:green; display:inline-block; vertical-align:top; margin-left:10px;}
		.box_header .adBtn{
			display:inline-block; width: auto; min-width: 88px;margin-left: 8px;padding:3px 9px; 
			vertical-align: middle; border:1px solid #ccc; color:#101010; font-weight: 500;
    		font-size: 13px; float:right; 
		}
		.dinfo_box{padding:30px 30px; }
		.box_content{margin-top:20px;}
		ul.address_list > li{font-size:15px; }
		li.address{margin-bottom:7px; }
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/boot_nav.jsp"></c:import>	
	<section id="container">
	
	<!-- 전체 영역  -->
	<div id="my_wrapper">
		<!-- 왼쪽 메뉴탭 -->
		
		<c:import url="../temp/myPage_nav.jsp"></c:import>		
	
		<!-- 컨텐츠 영역 -->
		<div id="content_wrapper">
		
		<!-- 메인 컨텐츠(여기서부터 변경되야함)  -->	
		<div id="main">
				<div id="delete_top">
					<h3>배송지 관리</h3>
					<div class="top_comment type02">
						<strong>
							배송지를 관리하세요
						</strong>				
					</div>
					<input type="hidden" name="${member_id}">
					<c:forEach items="${list}" var="ar">
						<div class="dinfo_box">
							<div class="box_header">
								<strong class="title">${ar.recipient_name}</strong>
								<span class="default">
								   <c:if test="${ar.default_check eq 1}">
										(기본배송지)
								   </c:if>
								</span>
								<c:if test="${ar.default_check ne 1}">
									<button type="button"  class="delete_btn adBtn" >삭제</button>
								</c:if>
								<button type="button" class="update_btn adBtn" >수정</button>
								<c:if test="${ar.default_check ne 1}">
									<button type="button" class="default_btn adBtn" >기본 배송지 설정</button>
								</c:if>
							</div>
							<div class="box_content">
								<ul class="address_list">
									<li class="address">${ar.address}</li>
									<li class="recipient_phone">${ar.recipient_phone}</li>
								</ul>
							</div>				
						</div>	
					</c:forEach>
										
					<div class="btn_wrap">
					<button type="button" class="btn pop green" id="InsertAddress" name="InsertAddress">신규배송지 추가</button>
					</div>
				</div>
			</div>
		
		</div>
		<!-- 메인 컨텐츠(여기까지 변경되야함)  -->
			
	</div>	

	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>
	
	<script type="text/javascript">
	
	
	
	</script>
 
	
</body>
</html>