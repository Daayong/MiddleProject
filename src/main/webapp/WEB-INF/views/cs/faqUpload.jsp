<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>

	
	<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
		
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
	
			<form class="w-100" action="./faqUpload" method="POST" enctype="multipart/form-data">
		
				<select class="form-select" style="width: 8%; line-height:2.5; margin: 30 0 15" name="faq_type" aria-label="Default select example">
  					<option selected>문의 유형</option>
  					<option value="배송">배송</option>
  					<option value="결제/영수증">결제/영수증</option>
  					<option value="주문">주문</option>
  					<option value="취소/반품">취소/반품</option>
  					<option value="리뷰/포인트">리뷰/포인트</option>
  					<option value="선물하기">선물하기</option>
  					<option value="회원">회원</option>
  					<option value="기타">기타</option>
				</select>
		
		
			<div class="mb-3">
		  		<label for=faq_subject" class="form-label">Subject</label>
		  		<input type="text" class="form-control" name="faq_subject" id="subject" placeholder="Enter Subject">
			</div>
			
			<div class="mb-3">
				<label for="faq_content" class="form-label">Contents</label>
				<textarea class="form-control" id="faq_content" name="faq_content"  placeholder="Input some text."></textarea>
			</div>
		
		
		<!-- button 추가 -->
		<div align="left" class="mt-3" style="margin-bottom: 20px">
			<button type="submit" class="btn btn-primary">ADD</button>
		</div>
		
		</form>
	</section>
</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

<script type="text/javascript">

	$('#faq_content').summernote({
		 height: 200
	});
		
</script>
	

</body>
</html>
