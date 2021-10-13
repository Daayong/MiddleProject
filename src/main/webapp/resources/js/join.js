/**
 *  회원가입 자바스크립트  
 */
 

 /*취소 버튼*/
 const bp=document.getElementById('btn_prev');
 /*등록 버튼*/
 const ba=document.getElementById('btn_join');
 



//---------------------------필수 입력 완료시 join 완료 페이지로 이동 
ba.addEventListener('click',function(){
	
	if(confirm('소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다. 이대로 입력하시겠습니까?')==true){
		location.href="./login";		
	}else{
		return false; 
	}
	
});


//---------------------------취소 버튼 클릭시 홈페이지로 이동 
bp.addEventListener('click',function(){
	
	if(confirm('회원가입을 취소하시겠습니까?')==true){
		location.href="../";		
	}else{
		return false; 
	}
	
});






/*//------------------------------------------------필수 동의버튼만이라도 포함시 join페이지로 이동
ba.addEventListener('click',function(){
	let result=true; 
	for(let che of pill){
		if(!che.checked){
			result=false; 
			break; 
		}
	}
	pill.checked=result;
	if(result){
		location.href="./join";
	}else{
		alert("필수 약관에 동의 하세요");
	}
});
 
 */