package com.d.mp.address;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.member.MemberDTO;

@Service
public class AddressService {
	
	@Autowired
	private AddressDAO addressDAO;

	public AddressDTO getAddressDefault(MemberDTO memberDTO) throws Exception{
		return addressDAO.getAddressDefault(memberDTO);
	}

	public AddressDTO getAddressOne(AddressDTO addressDTO) throws Exception{
		return addressDAO.getAddressOne(addressDTO);
	}
	
}
