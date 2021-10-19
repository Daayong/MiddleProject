package com.d.mp.member;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

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
		memberDTO.setMember_email_f(eAddress[1]);
		
		return memberDTO;
	}
		
	
	//기본배송지조회
	public MemberDTO getDefaultAddress(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDefaultAddress(memberDTO);
	}
	
	
}
