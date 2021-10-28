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
	.addWrap{width:480px; margin-left:20px;  }
	.h3{width:432px; padding: 20px 0;border-bottom: 2px solid #202020;color: #101010;font-weight: 700; font-size: 20px; line-height: 30px;}
	em{color:green;}
	th span{position: relative;color: #101010;font-size: 14px;line-height: 22px;font-weight: 400; text-align:left; display:block; font-size:14px; }
	th{display:block;margin-top:20px;  }
	td{display:block; margin-top:10px; }
	input.text{width:432px; height:50px; padding:2px 10px; border: 1px solid #ccc  }
	.select{display:inline-block; }
	.box{ width:136px; height:50px; padding:2px 10px; border: 1px solid #ccc  }
	.btn{width:211px; height:50px; border:1px solid #202020;margin-left:2px; margin-top:30px; color:#101010; }
	.green{background-color:#BDD61A; border:1px solid #BDD61A; margin-left:7px; }
	</style>

</head>
<body>

	<div class="addWrap">
		<form id="addressForm" name="addressForm" method="post" >
				<h3 class="h3">배송지 추가</h3>
				<div class="table_col">
					<input type="hidden" name="member_id" id="member_id" value="${member.member_id}">
					<input type="hidden" name="default_check" id="default_check">
					<table>
						<colgroup>
							<col class="title">
							<col class="body">
						</colgroup>
						<tbody>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="recipient_name">
										<span>받는분<em>*</em></span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										 <input type="text" id="recipient_name" name="recipient_name" class="text" placeholder="받는분 성함을 입력하세요">
									</span>
								</td>
							</tr>
						
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="recipient_phone">
										<span>휴대전화</span>
									</label>									
								</th>
								<td>
							
								<div id="phone_num">
										<div class="select">
											<select class="select_wrap box"  id="member_phone_f" name="member_phone_f">
											<option class="se" value="010">010</option>
											<option class="se" value="011">011</option>
											<option class="se" value="016">016</option>
											<option class="se" value="017">017</option>
											<option class="se" value="018">018</option>
											<option class="se" value="019">019</option>
											<option class="se" value="070">070</option>
											</select>
											<span class="symbol">-</span>
										</div>
										<div class="select">
											<span class="input_txt">
												<input type="text" id="member_phone_m" name="member_phone_m" class="phone box" >
											</span>
											<span class="symbol">-</span>
										</div>
										<div class="select">
											<span class="input_txt">
												<input type="text" id="member_phone_b" name="member_phone_b" class="phone box" >
											</span>
										</div>
									</div> 
								</td>
							</tr>						
			
							<tr class="input">	
								<th scope="row" class="mandatory">
									<label for="address">
										<span>배송주소<em>*</em></span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input type="text" name="address" id="address" class="text" placeholder="주소를 입력하세요.">
									</span>
								</td>
							</tr>
						
						</tbody>					
					</table>
				</div>
		</form>
	
		<div class="btn_wrap">
			<button type="button" class="btn" id="cancel" name="cancel">취소</button>
			<button type="button" class="btn green"  onclick="checkInput();" id="setaddAddress" name="setaddAddress">추가</button>
		</div>
	</div>



	<script type="text/javascript">
		const cancel = document.getElementById('cancel');
		cancel.addEventListener('click',function(){
			if(confirm("배송지 추가를 취소하시겠습니까?")==true){
				window.close();	
			}
			return false; 
		});
		
		 const addressForm=document.getElementById('#addressForm');
		 
		function checkInput(){
			//받는분 입력 여부 확인 
			 if($("#recipient_name").val().trim().length <1){
				alert("받는분의 성함을 입력해주세요");
				$("#recipient_name").focus();
				return false; 
			} 
		    //핸드폰 입력 여부 확인
			 if($("#member_phone_m").val().length <3 || $("#member_phone_m").val().length>4){
				alert("핸드폰 번호를 확인해주세요.");
				$("#member_phone_m").focus();
				return false;
			}
			if($("#member_phone_b").val().trim().length != 4){
				alert("핸드폰 번호를 확인해주세요.")
				$("#member_phone_b").focus();
				return false;
			}
			//주소 입력 여부 확인 
			if($("#address").val().trim().length <5){
				alert("주소를 확인해주세요.");
				$("#address").focus();
				return false;
			} 
			
			if(confirm('배송지를 추가하시겠습니까?')==true){	
				 var recipient_name=$("#recipient_name").val();
				 var phone_m=$("#member_phone_m").val();
				 var phone_b=$("#member_phone_b").val();
				 var address=$("#address").val();
				 var member_id=$("#member_id").val();
				 var default_check='0';
				 let f = '010';
					$('.se').each(function(){
						 if($(this).prop('selected')){
							 f = $(this).val();
						 }
					})
				
				$.ajax({
					url:'./addAddress',
					type:'post',
					data:{
						recipient_name:recipient_name,
						member_phone_m: phone_m,
						member_phone_b: phone_b,
						member_phone_f: f,
						address:address,
						member_id:member_id,	
						default_check:default_check
					},
					success:function(data){
						console.log(data);
						if(data >0){
							alert("배송지가 추가되었습니다.");
							opener.location.reload();
							window.close();
							
						}else{
							alert("배송지 추가에 실패했습니다.");
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