<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

<title>배송지 관리 | 집밥을 특별하게,쿡킷</title>

	<style>
	

	.btn{width:100px; height:40px; align-content:center; border:1px solid #202020;margin-left:2px; margin-top:30px; color:#101010; }
	.green{background-color:#BDD61A; border:1px solid #BDD61A; margin-left:7px; }
	</style>

</head>
<body>

	<div class="addWrap">
		<form action="./member_addComments?qna_id=${counselList.qna_id}" name="member_addComments" enctype="multipart/form-data" method="post" >
			
			
			<div class="tit">
					<span style="float: left;" class="qna_id"><span class="hide"></span>Q.${counselList.qna_id} | </span>
					<span class="subject" style="width: 200px;"><span class="hide">문의유형</span>문의유형 : ${counselList.qna_type}  </span>
					<span class="subject" style="width: 200px;"><span class="hide">주문번호</span>주문 번호 : ${counselList.payment_id} </span>				
					<span class="date" style="top: 14px;" ><span class="hide">문의일자</span>문의 일자 : <br>${counselList.qna_date}</span>
				</div>
			
				<span>문의내용</span>
				
				<input type="hidden" name="member_id" id="member_id" value="${counselList.member_id}">
		<div class="textarea">
		
		
			<input type="text" value="${counselList.qna_answer}" id="qna_answer" name="qna_answer" title="qna_answer" placeholder="답변을 입력해주세요"  class="ui_inputLimit" maxlength="1000"></input>
			
		</div>
				
				
	
		<div class="btn_wrap" align="center">
			<button type="button" class="btn" id="cancel" name="cancel">취소</button>
			<button type="submit" class="btn green" >추가</button>
		</div>
		</form>
	</div>



	<script type="text/javascript">
	

		

	</script>
 



</body>
</html>