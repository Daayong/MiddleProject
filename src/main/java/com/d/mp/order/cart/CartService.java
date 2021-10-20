package com.d.mp.order.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.member.MemberDTO;

@Service
public class CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	public int insertCart(CartDTO cartDTO) throws Exception{
		return cartDAO.insertCart(cartDTO);
	}
	
	public List<CartListDTO> getCartList(MemberDTO memberDTO) throws Exception {		
		return cartDAO.getCartList(memberDTO);
	}
	
	public void deleteCartOne(CartDTO cartDTO) throws Exception {
		cartDAO.deleteCartOne(cartDTO);
	}
	
	public void updateCartQuantity(CartDTO cartDTO) throws Exception {
		cartDAO.updateCartQuantity(cartDTO);
	}
	
	public void updateCartStateOne(CartDTO cartDTO) throws Exception {
		cartDAO.updateCartStateOne(cartDTO);
	}
	
	public void updateCartStateAll(CartDTO cartDTO) throws Exception {
		cartDAO.updateCartStateAll(cartDTO);
	}
	
	public void updateCartStateDate(CartDTO cartDTO) throws Exception {
		cartDAO.updateCartStateDate(cartDTO);
	}
	
}
