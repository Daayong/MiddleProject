<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">

<title>배송지 관리 | 집밥을 특별하게,쿡킷</title>

	<style>
	.addWrap{width:480px; margin-left:20px;  }
	.h3{width:432px; padding: 20px 0;border-bottom: 2px solid #202020;color: #101010;font-weight: 700; font-size: 20px; line-height: 30px;}
	em{color:green;}
	th span{position: relative;color: #101010;font-size: 14px;line-height: 22px;font-weight: 400; text-align:left; display:block; font-size:14px; }
	th{display:block;margin-top:20px;  }
	td{display:block; margin-top:10px; }
	input.text{width:432px; height:50px; padding:2px 10px; border: 1px solid #ccc  }
	.select{display:inline-block; }
	.box{ width:136px; height:50px; padding:2px 10px; border: 1px solid #ccc  }

	.btn{width:100px; height:40px; align-content:center; border:1px solid #202020;margin-left:2px; margin-top:30px; color:#101010; }
	.green{background-color:#BDD61A; border:1px solid #BDD61A; margin-left:7px; }
	</style>

</head>
<body>

	<div class="addWrap">
		<form id="member_addComments" name="member_addComments" enctype="multipart/form-data" method="post" >
			<h3 class="table_col" style="padding-top: 20px; color: #101010; font-size: large;">1:1문의 내역 답변 작성</h3>
			
			<div class="table" style="margin-top: 20px; border-top: 3px solid #101010; padding-top: 20px;">
					<span  class="qna_id" style="color: #101010; font-size: medium; padding-bottom: 20px;">Q.${counselList.qna_id} <br></span>
					
					<div class="th" style="margin-top: 10px;">
					<span class="subject" >문의유형 : ${counselList.qna_type} | </span>
					<span class="subject" >주문 번호 : ${counselList.payment_id} | </span>				
					<span class="date">문의 일자 : ${counselList.qna_date}  </span>
					</div>
				</div>
			
			<div class="ta" style="margin-top: 15px;">
				<span>문의내용: ${counselList.qna_content} </span>
			</div>
				
				<dl class="one_dep">
		
						<dd>
							<div class="textarea" style="margin-top: 10px;">
								<textarea id="qna_answer" name="qna_answer" spellcheck="false" style="outline: none;" cols="60" rows="8" title="qna_content" placeholder="답변을 입력해주세요"  class="ui_inputLimit" maxlength="1000"></textarea>
								
							</div>
						</dd>
					</dl>
				
				<input type="hidden" name="member_id" id="member_id" value="${counselList.member_id}">	
				
	
		<div class="btn_wrap" align="center">
			<button type="button" class="btn" id="cancel" name="cancel">취소</button>
			<button type="submit" class="btn green"   onclick="checkInput('${counselList.qna_id}');" id="setComments" name="setComments">추가</button>
		</div>
		</form>
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
	                  
	                  if(data >0){
	                     alert("답변이 작성되었습니다.");
	                     self.close();
	                     opener.location.reload();
	                     
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