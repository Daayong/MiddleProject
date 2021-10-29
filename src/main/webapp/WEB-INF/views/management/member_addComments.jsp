<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

.added_file:before { content: '';    position: absolute; top: 199px; left: 10; width: 18px; height: 18px; background: url(/mp/resources/images/pd/ico_set1.png) -142px -32px no-repeat; background-size: 800px 800px;}

.added_file > a {display: inline-block; margin-right: 8px; margin-left:20px; padding: 0; font-size: 13px; line-height: 21px; color: #101010; text-decoration: underline;}
	</style>

</head>
<body>

	<div class="addWrap">
		<form style="margin-left: 15px;" id="member_addComments" name="member_addComments" method="post" >
			<h3 class="table_col" style="padding-top: 20px; color: #101010; font-size: large;">1:1문의 내역 답변 작성</h3>
			
			<div class="table" style="margin-top: 20px; border-top: 3px solid #101010; padding-top: 20px;">
					<span  class="qna_id" style="color: #101010; font-size: medium; padding-bottom: 20px;">Q.${counselList.qna_id} <br></span>
					<span style="color: #101010" class="date">문의 일자 : ${counselList.qna_date}  </span>
					
					<div class="th" style="margin-top: 10px;">
					<span style="color: #101010;" class="subject" >문의유형 : ${counselList.qna_type} <br> </span>
					<c:if test="${not empty counselList.payment_id }">
					<span style="color: #101010" class="subject" >주문 번호 : ${counselList.payment_id} | </span>
					</c:if>
					<span style="color: #101010" class="subject" >상품명 : ${counselList.qna_product_name} </span>		
					</div>
				</div>
					
					<c:forEach items="${counselList.file}" var="file">
					<div class="img added_file" style="margin-top: 10px;">
						<a style="text-decoration: underline;" href="../resources/upload/formCounsel/${file.qna_file_name}" target="blank">첨부 이미지</a>
					</div>
					</c:forEach>		
			<div class="ta" style="margin-top: 15px; margin-bottom: 20px;" >
				<span>문의내용: ${counselList.qna_content} </span>
			</div>
				
				<dl class="one_dep">
		
						<dd>
							<div class="textarea" style="margin-top: 10px;">
							
							<c:choose>
							
							<c:when test="${empty counselList.qna_answer }">
								<textarea id="qna_answer" name="qna_answer" spellcheck="false" style="outline: none;" cols="60" rows="8" title="qna_content" placeholder="답변을 입력해주세요"  class="ui_inputLimit" maxlength="1000"></textarea>
							</c:when>
							
							<c:otherwise>
								<textarea id="qna_answer" name="qna_answer" spellcheck="false" style="outline: none;" cols="60" rows="8" title="qna_content" class="ui_inputLimit" maxlength="1000">이전 답변 : ${counselList.qna_answer} </textarea>
							</c:otherwise>
							</c:choose>
								
							</div>
						</dd>
					</dl>
				
				<input type="hidden" name="member_id" id="member_id" value="${counselList.member_id}">	
				
	
		<div class="btn_wrap" align="center">
			<button type="button" class="btn" id="cancel" name="cancel">취소</button>
			<button type="button" class="btn green" onclick="checkInput('${counselList.qna_id}');" id="setComments" name="setComments">추가</button>
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
	
	 function checkInput(qna_id){
		   
	     if(confirm('답변을 작성하시겠습니까?') == true){   

	             var member_id=$("#member_id").val();
	             var qna_answer =$("#qna_answer").val();

	            $.ajax({
	               url:'./member_addComments',
	               type:'post',
	               data:{
	                  member_id:member_id,   
	                  qna_id:qna_id,
	                  qna_answer:qna_answer
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