<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">



<html>
<head>
<meta charset="UTF-8">
<title>고객행복센터 - 집밥을 특별하게, 쿡킷</title>
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
		
		.tit {
    		font-size: 28px;
    		line-height: 42px;
    		font-weight: 700;
    		color: #101010;
		}
		
	</style>	
	
</head>
<body>

<div class="wrapper">		

<c:import url="../temp/boot_nav.jsp"></c:import>
<!-- 여기에 페이지 작업 -->

	<section id="container">
	
			<form class="w-80" action="./eventUpload" method="POST" enctype="multipart/form-data">
			
				<h2 class="tit">이벤트 작성</h2>
		
		
			<div class="mb-3 mt-3 input_event_ing">
		  		<label for="event_subject" class="form-label">Subjcet</label>
		  		<input type="text" class="form-control" name="event_subject" id="event_subject" placeholder="Enter Subject">
			</div>
			
			<div class="input_event_ing" style="display: inline-block;">
				<label for="event_startDate">이벤트 시작일 : </label>
				<input type="date" class="datepicker" pattern="yyyy-MM-dd" id="event_startDate" name="event_startDate" autocomplete="off">
			
				<label style="margin-left: 20px;" for="event_endDate">종료일 : </label>
				<input type="date" class="datepicker" pattern="yyyy-MM-dd" id="event_endDate" name="event_endDate" autocomplete="off">
			</div>
			
			<div class="mb-3 input_event_ing">
				<label for="event_content" class="form-label">Contents</label>
				<textarea class="form-control" id="event_content" name="event_content"  placeholder="Input some text."></textarea>
			</div>
		
			<div class="input_event_ing" style="margin-bottom: 40px;">
				<label for="inputMainFile">event 썸네일</label>
				<input type="file" id="inputMainFile" name="files" multiple="multiple">
			</div>
			
		
		<!-- button 추가 -->
		<div align="left" class="mt-3" style="margin-bottom: 50px">
			<button type="submit" class="btn btn-primary">ADD</button>
		</div>
		
		</form>
	</section>
</div>

 <c:import url="../temp/boot_footer.jsp"></c:import>

<script type="text/javascript">

	$('#event_content').summernote({
		 height: 500
	});
	
	

		
</script>
	

</body>
</html>
