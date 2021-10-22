package com.d.mp.order.cart;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.member.MemberDTO;
import com.d.mp.order.payment.PaymentDTO;

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
	
	public List<CartListDTO> getCartListChecked(MemberDTO memberDTO) throws Exception {		
		return cartDAO.getCartListChecked(memberDTO);
	}
	
	public List<CartListDTO> getCartListPaymentId(PaymentDTO paymentDTO) throws Exception {		
		return cartDAO.getCartListPaymentId(paymentDTO);
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
	
	public void updateCartStateDeadLine(MemberDTO memberDTO) throws Exception {
		cartDAO.updateCartStateDeadLine(memberDTO);
	}
	
	public void updateCartStatePayment(PaymentDTO paymentDTO, MemberDTO memberDTO) throws Exception {
		HashMap<String, Long> hashMap = new HashMap<String, Long>();
		hashMap.put("payment_id", paymentDTO.getPayment_id());
		hashMap.put("member_id", memberDTO.getMember_id());
		cartDAO.updateCartStatePayment(hashMap);
	}
	
}
