package com.d.mp.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.address.AddressDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.d.mp.member.MemberDAO.";
	
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getLogin", memberDTO);
	}
	
	//아이디 중복체크
	public MemberDTO getIdCheck(String member_user_id)throws Exception{
		MemberDTO memberDTO=sqlSession.selectOne(NAMESPACE+"getIdCheck", member_user_id);
		return memberDTO;
	}
	
	//회원가입 
	public int setJoin(MemberDTO memberDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setJoin", memberDTO);
	}
	
	//회원탈퇴
	public int setDelete(MemberDTO memberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", memberDTO);
	}
	
	//기본배송지조회
	public MemberDTO getDefaultAddress(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDefaultAddress", memberDTO);
	}
	
	public AddressDTO getAddress(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getAddress", memberDTO);
	}
	
	
}
