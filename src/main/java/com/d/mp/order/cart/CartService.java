package com.d.mp.order.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.member.MemberDTO;

@Service
public class CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	public List<CartListDTO> getCartList(MemberDTO memberDTO) throws Exception {	
		
		return cartDAO.getCartList(memberDTO);
	}

}
