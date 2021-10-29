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
	
	// 주문 정보 유무 및 상태 조회(결제완료상태) 
	public List<CartDTO> getPayFinish(MemberDTO memberDTO)throws Exception{
		return cartDAO.getPayFinish(memberDTO);
	}
	
	// 주문 정보 유무 및 상태 조회 (기타완료상태) 
	public List<CartDTO> getState(MemberDTO memberDTO)throws Exception{
		return cartDAO.getState(memberDTO);
	}
	
	// 주문 정보 유무 및 상태 조회 (배송완료상태) 
	public List<CartDTO> getDState(MemberDTO memberDTO)throws Exception{
		return cartDAO.getDState(memberDTO);
	}
	
	// payment_id 별 분리 후 개수 select 배송완료  
	public List<CartDTO> getDOrderCount(MemberDTO memberDTO)throws Exception{
		return cartDAO.getDOrderCount(memberDTO);
	}
	
	// payment_id 별 분리 후 개수 select 
	public List<CartDTO> getOrderCount(MemberDTO memberDTO)throws Exception{
		return cartDAO.getOrderCount(memberDTO);
	}
	
	public List<CartListDTO> getProductList() throws Exception{
		return cartDAO.getProductList();
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

	public void updateCartStateBeforePayment(MemberDTO memberDTO) throws Exception {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("member_id", Long.toString(memberDTO.getMember_id()));
		hashMap.put("hash_state", "deliver");
		hashMap.put("hash_date", "1");
		cartDAO.updateCartStateBeforePayment(hashMap);
		
		hashMap = new HashMap<String, String>();
		hashMap.put("member_id", Long.toString(memberDTO.getMember_id()));
		hashMap.put("hash_state", "deliveryComplete");
		hashMap.put("hash_date", "0");
		cartDAO.updateCartStateBeforePayment(hashMap);		
	}

	public void updateCartStateDone(CartDTO cartDTO) throws Exception {
		cartDAO.updateCartStateDone(cartDTO);
	}
	
}
