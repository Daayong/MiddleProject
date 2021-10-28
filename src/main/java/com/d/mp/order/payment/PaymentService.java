package com.d.mp.order.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.member.MemberDTO;
import com.d.mp.order.cart.CartDTO;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	public void insertPayment(PaymentDTO paymentDTO) throws Exception {
		paymentDAO.insertPayment(paymentDTO);
	}
	
	public PaymentDTO selectPaymentOne(PaymentDTO paymentDTO) throws Exception {
		return paymentDAO.selectPaymentOne(paymentDTO);
	}
	
	public List<PaymentListDTO> getPaymentList(MemberDTO memberDTO) throws Exception {
		return paymentDAO.getPaymentList(memberDTO);
	}
	
	public List<PaymentListDTO> getPaymentOne(PaymentDTO paymentDTO) throws Exception {
		return paymentDAO.getPaymentOne(paymentDTO);
	}
	
	public PaymentListDTO getPaymentReview(CartDTO cartDTO) throws Exception {
		return paymentDAO.getPaymentReview(cartDTO);
	}
	
}
