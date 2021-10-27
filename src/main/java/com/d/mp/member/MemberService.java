package com.d.mp.member;

import java.security.SecureRandom;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.d.mp.address.AddressDTO;
import com.d.mp.order.payment.PaymentDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private ServletContext servletContext;
	
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
	}
	
	//아이디 중복체크 
	public int getIdCheck(String member_user_id)throws Exception{
		int cId=0;
		if(member_user_id.trim()=="") {
			cId=2;
		}else {
			MemberDTO memberDTO = memberDAO.getIdCheck(member_user_id);
			if(memberDTO != null) {
				cId = 1;
			}
		}
		return cId;
	}
	//패스워드체크 
	public int getPwCheck(MemberDTO memberDTO)throws Exception{
		return memberDAO.getPwCheck(memberDTO);
	}
	
	//아이디 찾기	
	public MemberDTO getFindId(MemberDTO memberDTO)throws Exception{
		return memberDAO.getFindId(memberDTO);
	}	
	
	//생년월일 휴대폰번호 문자 정렬해주기(중간에 "-" 넣어주기) 
	public MemberDTO charSet(MemberDTO memberDTO)throws Exception {
			String member_phone=memberDTO.getMember_phone();
			String member_birth=memberDTO.getMember_birth();
		//핸드폰 번호
			String mp1=member_phone.substring(0, 3);
			//핸드폰번호가 7글자 일때
			String mp2_m=member_phone.substring(3,6);
			String mp2_b=member_phone.substring(6);
			//핸드폰번호가 8글자 일때 
			String mp3_m=member_phone.substring(3,7);	
			String mp3_b=member_phone.substring(7);
			
			if(member_phone.length()==7) {
				member_phone=mp1+"-"+mp2_m+"-"+mp2_b;
			}else {
				member_phone=mp1+"-"+mp3_m+"-"+mp3_b;
			}
			
			System.out.println(member_phone);	
			//생년월일
			String mby=member_birth.substring(0,4);
			String mbm=member_birth.substring(4,6);
			String mbd=member_birth.substring(6);
			
			member_birth=mby+"-"+mbm+"-"+mbd;
			System.out.println(member_birth);
		memberDTO.setMember_birth(member_birth);
		memberDTO.setMember_phone(member_phone);
		
		return memberDTO;
	}
	
	//수취인 핸드폰 번호 받아서 문자 정렬 해주기("-"추가) 
	public AddressDTO rCharSet(AddressDTO addressDTO, HttpServletRequest request)throws Exception {
	//핸드폰 번호
		String mp1=request.getParameter("member_phone_f");
		String mp2=request.getParameter("member_phone_m");
		String mp3=request.getParameter("member_phone_b");
		
		addressDTO.setRecipient_phone(mp1+"-"+mp2+"-"+mp3);
		
		System.out.println(addressDTO.getRecipient_phone());	
	
		return addressDTO;
	}
	
	//수취인 핸드폰 번호 받아서 문자 정렬 해주기("-"삭제) 
		public String[] rCharGet(AddressDTO addressDTO)throws Exception {
			System.out.println(addressDTO.getRecipient_phone());	
			String[] rp=addressDTO.getRecipient_phone().split("-");
			return rp;
		}
	
	
	
	//임시 비밀번호 발급 전 회원 정보 체크 
	public String getFindPass(MemberDTO memberDTO)throws Exception{
		memberDTO=charSet(memberDTO);
		memberDTO = memberDAO.getFindPass(memberDTO);
		String result = "1";
		
		if(memberDTO != null) {
			result= getRamdomPassword(6);
			memberDTO.setMember_password(result);
			memberDAO.setQuickPass(memberDTO);
		}
		
		return result;
	}
	//임시 비밀번호 발급 
	public int setQuickPass(MemberDTO memberDTO)throws Exception{
		return memberDAO.setQuickPass(memberDTO);
	}
	
	//임시 비밀번호 생성함
	public String getRamdomPassword(int size) { 
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', 
				'9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 
				'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 
				'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
				'u', 'v', 'w', 'x', 'y', 'z', '!', '@', '#', '$', '%', '^', '&' }; 
		StringBuffer sb = new StringBuffer(); 
		SecureRandom sr = new SecureRandom(); 
		sr.setSeed(new Date().getTime()); 
		int idx = 0; 
		int len = charSet.length; 
		for (int i=0; i<size; i++) { 
			// idx = (int) (len * Math.random()); 
			idx = sr.nextInt(len); 
			// 강력한 난수를 발생시키기 위해 SecureRandom을 사용한다. 
			sb.append(charSet[idx]); 
			} 
			return sb.toString();
	}
	
	//회원가입
	public int setJoin(MemberDTO memberDTO)throws Exception{
		return memberDAO.setJoin(memberDTO);
	}
	
	//회원탈퇴
	public int setDelete(MemberDTO memberDTO)throws Exception{
		return memberDAO.setDelete(memberDTO);
	}
	
	//회원수정(휴대전화,생년월일 분리)
	public MemberDTO setUpdateSplit(MemberDTO memberDTO)throws Exception{
		String member_birth=memberDTO.getMember_birth();	
		String[]mB=member_birth.split("-");
		memberDTO.setBirth_yy(mB[0]);
		memberDTO.setBirth_mm(mB[1]);
		memberDTO.setBirth_dd(mB[2]);
		
		String member_phone=memberDTO.getMember_phone();
		String[]pNum=member_phone.split("-");
		memberDTO.setMember_phone_f(pNum[0]);
		memberDTO.setMember_phone_m(pNum[1]); 
		memberDTO.setMember_phone_b(pNum[2]);
		
		String member_email=memberDTO.getMember_email(); 
		String[] eAddress=member_email.split("@");
		memberDTO.setMember_email_f(eAddress[0]);
		memberDTO.setMember_email_b(eAddress[1]);
		
		return memberDTO;
	}
	
	//회원수정 저장
	public int setUpdate(MemberDTO memberDTO)throws Exception{
		return memberDAO.setUpdate(memberDTO);
	}

	//기본배송지조회
	public AddressDTO getDefaultAddress(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDefaultAddress(memberDTO);
	}
	
	//배송지 리스트 조회 
	public List<AddressDTO> getAddressList(MemberDTO memberDTO)throws Exception{
		return memberDAO.getAddressList(memberDTO);
	}
	
	//배송지 1개 조회
	public AddressDTO getAddressOne(AddressDTO addressDTO)throws Exception{
		return memberDAO.getAddressOne(addressDTO);
	}
	
	//수취인 전화번호 분리
	public String[] splitRePhone(AddressDTO addressDTO)throws Exception{
		String recipient_phone=addressDTO.getRecipient_phone();
		String[]pNum=recipient_phone.split("-");
		return pNum;
	}
	
	
	//결제 완료 후 포인트 증감
	public void setUpdatePoint(MemberDTO memberDTO) throws Exception{
		memberDAO.setUpdatePoint(memberDTO);
	}

	//배송지 삭제 
	public int setAddressDelete(AddressDTO addressDTO)throws Exception{
		return memberDAO.setAddressDelete(addressDTO);
	}

	//배송지 추가
	public int setAddAddress(AddressDTO addressDTO)throws Exception{
		return memberDAO.setAddAddress(addressDTO);
	}
	
	
	//배송지 수정 
	public int setAddressUpdate(AddressDTO addressDTO)throws Exception{
		return memberDAO.setAddressUpdate(addressDTO);				
	}
	
	//기본배송지 수정 
	public int setAddressDefaultUpdate(AddressDTO addressDTO)throws Exception{
		return memberDAO.setAddressDefaultUpdate(addressDTO);
	}
	
	//기본배송지 해제 
	public int allSetzero(AddressDTO addressDTO)throws Exception{
		return memberDAO.allSetzero(addressDTO);
	}
	
	
	
	
}
