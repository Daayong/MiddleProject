<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>배송지 관리 | 집밥을 특별하게,쿡킷</title>

	<style>
	

	.btn{width:100px; height:40px; align-content:center; border:1px solid #202020;margin-left:2px; margin-top:30px; color:#101010; }
	.green{background-color:#BDD61A; border:1px solid #BDD61A; margin-left:7px; }
	</style>

</head>
<body>

	<div class="addWrap">
		<form id="commentsFrom" name="commentsForm" method="post" >
			
			
			<div class="tit">
					<span style="float: left;" class="qna_id"><span class="hide"></span>Q.${counselList.qna_id} | </span>
					<span class="subject" style="width: 200px;"><span class="hide">문의유형</span>문의유형 : ${counselList.qna_type}  </span>
					<span class="subject" style="width: 200px;"><span class="hide">주문번호</span>주문 번호 : ${counselList.payment_id} </span>				
					<span class="date" style="top: 14px;" ><span class="hide">문의일자</span>문의 일자 : <br>${counselList.qna_date}</span>
				</div>
			
				<span>문의내용</span>
				
				<input type="hidden" name="member_id" id="member_id" value="${counselList.member_id}">
		<div class="textarea">
			<input type="text" id="qna_answer" name="qna_answer" title="qna_answer" placeholder="답변을 입력해주세요"  class="ui_inputLimit" maxlength="1000"></input>
			
		</div>
				
				
		</form>
	
		<div class="btn_wrap" align="center">
			<button type="button" class="btn" id="cancel" name="cancel">취소</button>
			<button type="button" class="btn green" onclick="checkInput('${counselList.qna_id}');" id="setComments" name="setComments">추가</button>
		</div>
	</div>



	<script type="text/javascript">
		const cancel = document.getElementById('cancel');
		cancel.addEventListener('click',function(){
			if(confirm("답변 작성을 취소하시겠습니까?")==true){
				window.close();	
			}
			return false; 
		});
		
		const commentsForm = document.getElementById('commentsForm');
		
		
		
		   function checkInput(qna_id){
		      
		         if(confirm('답변을 작성하시겠습니까?')==true){   
		             
		             
		             var member_id=member_id.val();
		             
		            $.ajax({
		               url:'./member_addComments',
		               type:'post',
		               data:{
		                  
		                  member_id:member_id,   
		                  qna_id:qna_id
		               },
		               success:function(data){
		                  console.log(data);
		                  if(data >0){
		                     alert("답변이 작성되었습니다.");
		                     opener.location.reload();
		                     window.close();
		                     
		                  }else{
		                     alert("답변 작성에 실패했습니다.");
		                  }
		               }
		            });
		         
		            
		          
		         }else{
		            return false;
		         }
		      
		      }
		      
		
		
		
		
		
		
		

	</script>
 





















</body>
</html>