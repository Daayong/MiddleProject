package com.d.mp.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
	}
	
	//아이디 중복체크 
	public int getIdCheck(String member_user_id)throws Exception{
		MemberDTO memberDTO = memberDAO.getIdCheck(member_user_id);
			int cId=0;
		if(memberDTO != null) {
			cId = 1;
		}
		return cId;
	}
	
	//회원가입
	public int setJoin(MemberDTO memberDTO)throws Exception{
		return memberDAO.setJoin(memberDTO);
	}
	
	//회원탈퇴
	public int setDelete(MemberDTO memberDTO)throws Exception{
		return memberDAO.setDelete(memberDTO);
	}
	
	//기본배송지조회
	public MemberDTO getDefaultAddress(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDefaultAddress(memberDTO);
	}
	
	
}
