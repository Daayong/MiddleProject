/**
 *  약관 동의 자바스크립트  
 */
 
 /*전체동의버튼*/
 const all = document.getElementById('all');
 /*모든버튼*/
 const chk = document.getElementsByClassName('chk');
 /*전체동의버튼제외*/
 const achk = document.getElementsByClassName('achk');
  /*필수동의버튼 */
 const pill = document.getElementsByClassName('pill');
  /*선택동의버튼 */
 const any = document.getElementsByClassName('any');
 /*취소 버튼*/
 const bp=document.getElementById('btn_prev');
 /*확인 버튼*/
 const ba=document.getElementById('btn_agree');
 
 //----------------------------------------------전체동의버튼
all.addEventListener('click',function(){
	if(confirm('전체 동의 선택시, 필수약관과 선택약관이 모두 동의로 선택됩니다. 단, 전체동의를 하더라도 각 약관의 동의 내용을 확인 후 개별적으로 동의여부를 선택하실 수 있습니다.')==true){
		for(let ch of achk){
			ch.checked=!all.checked; 
		}	
	}else{
		return false; 
	}
});

//------------------------------------------------필수 동의버튼만이라도 포함시 join페이지로 이동
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
 
 