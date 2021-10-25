package com.d.mp.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//패스워드 일치 여부체크
	public int getPwCheck(MemberDTO memberDTO)throws Exception{ 
		return sqlSession.selectOne(NAMESPACE+"getPwCheck", memberDTO);
	}
	
	//아이디 찾기 
	public MemberDTO getFindId(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFindId", memberDTO);
	}
	//임시비밀번호 발급 전 회원 정보 체크 
	public MemberDTO getFindPass(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFindPass", memberDTO);
	}
	//임시 비밀번호 발급 
	public int setQuickPass(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setQuickPass", memberDTO);
	}
	
	//회원가입 
	public int setJoin(MemberDTO memberDTO)throws Exception{	
		return sqlSession.insert(NAMESPACE+"setJoin", memberDTO);
	}
	
	
	//회원탈퇴
	public int setDelete(MemberDTO memberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", memberDTO);
	}
	
	//회원수정
	public int setUpdate(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdate", memberDTO);
	}
	
	//기본배송지조회
	public AddressDTO getDefaultAddress(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDefaultAddress", memberDTO);
	}
	
	//배송지 리스트 조회 
	public List<AddressDTO> getAddressList(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getAddressList", memberDTO);	
	}
	
	//배송지 삭제 
	public int setAddressDelete(AddressDTO addressDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setAddressDelete", addressDTO);
	}
	
	//배송지 추가 
	public int setAddAddress(AddressDTO addressDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddAddress", addressDTO);
	}
	
	//배송지 수정 
	//public int setAddressUpdate(AddressDTO addressDTO)throws Exception{
	//	return sqlSession.update(NAMESPACE+"setAddressUpdate", addressDTO);
	//}
		
	//기본 배송지 수정 
	public int setAddressDefaultUpdate(AddressDTO addressDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setAddressDefaultUpdate", addressDTO);
	}
	
	public int allSetzero(AddressDTO addressDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"allSetzero", addressDTO);
	}
	
	
	
}
