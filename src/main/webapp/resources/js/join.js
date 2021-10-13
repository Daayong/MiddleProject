/**
 *  회원가입 자바스크립트  
 */
 

 /*취소 버튼*/
 const bp=document.getElementById('btn_prev');
 /*등록 버튼*/
 const ba=document.getElementById('btn_join');
 const put = document.getElementsByClassName('put');
 const form1=document.getElementById('form1');
 
 /*비밀번호 확인*/
 const pw1=document.getElementById('member_password');
 const pw2=document.getElementById('member_password_s');
 const msg_pwds=document.getElementById('msg_pwds');
 const pws = document.getElementsByClassName('pws');



//---------------------------취소 버튼 클릭시 홈페이지로 이동 
bp.addEventListener('click',function(){
	
	if(confirm('회원가입을 취소하시겠습니까?')==true){
		location.href="../";		
	}else{
		return false; 
	}
	
});


//-------------------------pw1 pw2 일치여부 확인
function checkEqual(check1,check2){
	return check1.value==check2.value;
}

pw2.addEventListener('blur',function(){	
	if(!checkEqual(pws[0],pws[1])){
		msg_pwds.classList.remove('hide');
	}
});


//비어있는 input이 있는지 없는지확인하는 함수 
function checkEmpty(puts){
	let result=true;
	for(let r of puts){
		if(r.value.trim()==""){
			result="false"
			break;
		}
	}
	return result;
}


//비밀번호 4글자 이상 인지 확인 
function checkLength(){
	let l=pws[0].value.trim().length;
	
	if(l>=4){
		return true;
	}else{
		return false;
	}
}


//---------------------------필수 입력 완료시 join 완료 페이지로 이동 
ba.addEventListener('click',function(){
	//비어있는것들 검사 
	let ce=checkEmpty(put);
	//pw 2개값이 같은지 검사
	let ce2=checkEqual(pws[0],pws[1]);
	
	let cl = checkLength();		


	if(ce&&ce2&&cl){
		form1.submit();
	}else{
		alert("필수입력");	
	}
	




/*	if(ce&&ce2&&cl){
		console.log(ce);
		console.log(ce2);
		console.log(cl);

		if(confirm('소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다. 이대로 입력하시겠습니까?')==true){
			form1.submit();
			location.href="./login";		
		}else{
			return false; 
		}
	}else{
		alert("필수입력 항목을 다 입력해주세요");	
	}
	*/
});




    function checkInput() {
        if( $('#member_user_id').val().trim()==" " ) {
        	alert("아이디를 입력해 주세요.");
            $('#member_user_id').focus();
            return false;
        }
        
        if($('#id_validate').val() != "Y"){
        	alertMsg("alert_mbr_id", "아이디 중복확인을 해주세요.");
        	alert("아이디 중복확인을 해주세요.");
            $('#mbr_id').focus();
            return false;
        }

        if($('#pwd').val().length < 6){
        	showErrorMsg("pwd", "");
        	alert("비밀번호를 입력해 주세요.");
            $('#pwd').focus();
            return false;
        }
		$("#msg_pwd").hide();
		
        if($('#pwd_check').val() == ""){
        	showErrorMsg("pwd_check", "");
        	alert("입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
            $('#pwd_check').focus();
            return false;
        }

        if( $("#pwd").val() != $("#pwd_check").val() ){
        	alertMsg('msg_pwd_check',"입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.")
        	alert("입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
            $('#pwd_check').focus();
            return false;
	    } else{
	        $("#msg_pwd_check").hide();
	    }
        
        checkPasswordValid();
		if ( flag == "invalid") {
			return false;
		} 	
		

		if (!$('#birth_yy').val()) {
            alert("생년월일을 선택하세요.");
            $('#birth_yy').focus();
            return false;
		} else if (!$('#birth_mm').val()) {
            alert("생년월일을 선택하세요.");
            $('#birth_mm').focus();
            return false;
		} else if (!$('#birth_dd').val()) {
            alert("생년월일을 선택하세요.");
            $('#birth_dd').focus();
            return false;
		}
        
        if(!setFocusMobileTel("1")||!setFocusMobileTel("2")||!setFocusMobileTel("3")) return false;
        $('#alert_mob_no').hide();
        
        if($('#email_addr1').val() == ""){
            alertMsg("alert_email_addr", "이메일 주소를 다시 확인해주세요.");
            alert("이메일 주소를 다시 확인해주세요.");
            $('#email_addr1').focus();
            return false;
        }

        if($('#email_addr_opt').val() == ""){
            alertMsg("alert_email_addr", "이메일 도메인을 선택 하세요.");
            alert("이메일 도메인을 선택 하세요.");
            $('#email_addr_opt').focus();
            return false;
        }

        if($('#email_addr_opt').val() == "0" && $('#email_addr2').val() == ""){
            alertMsg('alert_email_addr', "이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
            alert("이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
            $('#email_addr2').focus();
            return false;
        }

        // 이메일 유효성 체크
        if(!CheckMailFormat($('#email_addr1').val()+'@'+$('#email_addr2').val())) {
            alertMsg('alert_email_addr', "유효하지 않는 이메일 주소 입니다.");
            alert("유효하지 않는 이메일 주소 입니다.");
            $('#email_addr2').focus();
            return false;
        }
        $('#alert_email_addr').hide();
        
        if($('#upd_coopco_id').val() != ""){
      
			//카드번호 체크
	        if($('#crdNo01').val() == "" && 
	                $('#crdNo02').val() == "" && 
	                $('#crdNo03').val() == "" && 
	                $('#crdNo04').val() == "" &&
	                $('#crd_pwd').val() == "" && 
	                $('#re_crd_pwd').val() == "") {
	         /*   if (checkValidate()){
	            	if($('#upd_coopco_id').val()!=""){
	           		 $('#card_chk').val("Y");
	           		} 
	            	 return false;
	            }else{
	            	if($('#upd_coopco_id').val()!=""){
	           		 $('#card_chk').val("N");
	           	} 	           	
	            	 return true;
	            }*/
	        	 checkValidate();
	             return false;
	        } else {
	            if($('#crdNo01').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");
	                $('#crdNo01').focus();
	                return false;
	            }
	            
	            if($('#crdNo02').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");    
	                $('#crdNo02').focus();
	                return false;
	            }
	            
	            if($('#crdNo03').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");    
	                $('#crdNo03').focus();
	                return false;
	            }
	            
	            if($('#crdNo04').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");
	                $('#crdNo04').focus();
	                return false;
	            }
	
	            if($('#re_crdNo05').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");
	                $('#re_crdNo05').focus();
	                return false;
	            }
	
	            if($('#re_crdNo06').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");
	                $('#re_crdNo06').focus();
	                return false;
	            }
	
	            if($('#re_crdNo07').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");
	                $('#re_crdNo07').focus();
	                return false;
	            }
	
	            if($('#re_crdNo08').val() == "") {
	                alertMsg("labelCardNo", "카드번호를 입력하세요.");
	                $('#re_crdNo08').focus();
	                return false;
	            }
	            
	            if($('#crdNo01').val().substring(0,2) != "77") {
	                alertMsg("labelCardNo", "유효하지 않은 카드 번호입니다. 확인 후 다시 입력해주세요.");       
	                $('#crdNo01').focus();
	                return false;
	            }
	
	            if($('#crdNo01').val().length + $('#crdNo02').val().length +
	               $('#crdNo03').val().length + $('#crdNo04').val().length != 16) {
	                alertMsg("labelCardNo", "카드번호 16자리를 정확하게 입력해주세요.");             
	                return false;
	            }
	            
	            if($("#crdNo01").val() != $("#re_crdNo05").val()) {
	                alertMsg("labelCardNo", "카드번호가 서로 다릅니다.");
	                $("#re_crdNo05").focus();
	                return;
	            }
	            
	            if($("#crdNo02").val() != $("#re_crdNo06").val()) {
	                alertMsg("labelCardNo", "카드번호가 서로 다릅니다.");
	                $("#re_crdNo06").focus();
	                return;
	            }
	            
	            if($("#crdNo03").val() != $("#re_crdNo07").val()) {
	                alertMsg("labelCardNo", "카드번호가 서로 다릅니다.");
	                $("#re_crdNo07").focus();
	                return;
	            }
	            
	            if($("#crdNo04").val() != $("#re_crdNo08").val()) {
	                alertMsg("labelCardNo", "카드번호가 서로 다릅니다.");
	                $("#re_crdNo08").focus();
	                return;
	            }
	
	            if($('#crd_pwd').val().length != 4) {
	                alertMsg("labelPW1", "4자리의 숫자만 입력해주세요.");
	                $('#crd_pwd').focus();
	                return false;
	            } 
	            else{
	                $("#labelPW1").hide();
	            }
	            
	            if($('#re_crd_pwd').val().length != 4) {
	                alertMsg("labelPW2", "4자리의 숫자만 입력해주세요.");
	                $('#re_crd_pwd').focus();
	                return false;
	            }
	            
	            if($('#crd_pwd').val() != $('#re_crd_pwd').val()) {
	                alertMsg("labelPW2", "카드 비밀번호가 서로 다릅니다.");
	                $('#re_crd_pwd').focus();
	                return false;
	            }
	            else{
	                $("#labelPW2").hide();
	            }

	           $('#card_chk').val("Y");

	        }
        }
		return true;
    }

















