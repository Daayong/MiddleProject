package com.d.mp.address;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.member.MemberDTO;

@Repository
public class AddressDAO {
	
	@Autowired
	private SqlSession sqlSession;	
	
	private final String NAMESPACE = "com.d.mp.address.AddressDAO.";

	public AddressDTO getAddressDefault(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getAddressDefault", memberDTO);
	}

	public AddressDTO getAddressOne(AddressDTO addressDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getAddressOne", addressDTO);
	}
	
}
