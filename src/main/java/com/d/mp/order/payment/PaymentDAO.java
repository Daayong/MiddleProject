package com.d.mp.order.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.order.cart.CartDTO;

@Repository
public class PaymentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.d.mp.order.payment.PaymentDAO.";
	
	public void insertPayment(PaymentDTO paymentDTO) throws Exception {
		sqlSession.update(NAMESPACE + "paymentIdSeqReset");
		sqlSession.insert(NAMESPACE + "insertPayment", paymentDTO);
	}
	
	public PaymentDTO selectPaymentOne(PaymentDTO paymentDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "selectPaymentOne", paymentDTO);
	}
	
}
