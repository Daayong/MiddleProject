package com.d.mp.order.cart;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.member.MemberDTO;
import com.d.mp.order.payment.PaymentDTO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.d.mp.order.cart.CartDAO.";
	
	public int insertCart(CartDTO cartDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "insertCart", cartDTO);
	}
	
	public List<CartListDTO> getCartList(MemberDTO memberDTO) throws Exception {		
		return sqlSession.selectList(NAMESPACE + "getCartList", memberDTO);
	}
	
	public List<CartListDTO> getCartListChecked(MemberDTO memberDTO) throws Exception {		
		return sqlSession.selectList(NAMESPACE + "getCartListChecked", memberDTO);
	}
	
	public List<CartListDTO> getCartListPaymentId(PaymentDTO paymentDTO) throws Exception {		
		return sqlSession.selectList(NAMESPACE + "getCartListPaymentId", paymentDTO);
	}
	
	// 주문 정보 유무 및 상태 조회(결제완료상태) 
	public List<CartDTO> getPayFinish(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPayFinish", memberDTO);
	}
	
	// 주문 정보 유무 및 상태 조회(기타완료상태) 
	public List<CartDTO> getState(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getState", memberDTO);
	}
	
	
	// payment_id 별 분리 후 개수 select 
	public List<CartDTO> getOrderCount(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getOrderCount", memberDTO);
	}
	
	public List<CartListDTO> getProductList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getProductList");
	}
	
	public void deleteCartOne(CartDTO cartDTO) throws Exception {
		sqlSession.delete(NAMESPACE + "deleteCartOne", cartDTO);
	}
	
	public void updateCartQuantity(CartDTO cartDTO) throws Exception {
		sqlSession.update(NAMESPACE + "updateCartQuantity", cartDTO);
	}
	
	public void updateCartStateOne(CartDTO cartDTO) throws Exception {
		sqlSession.update(NAMESPACE + "updateCartStateOne", cartDTO);
	}
	
	public void updateCartStateAll(CartDTO cartDTO) throws Exception {
		sqlSession.update(NAMESPACE + "updateCartStateAll", cartDTO);
	}
	
	public void updateCartStateDate(CartDTO cartDTO) throws Exception {
		sqlSession.update(NAMESPACE + "updateCartStateDate", cartDTO);
	}
	
	public void updateCartStateDeadLine(MemberDTO memberDTO) throws Exception {
		sqlSession.update(NAMESPACE + "updateCartStateDeadLine", memberDTO);
	}

	public void updateCartStatePayment(HashMap<String, Long> hashMap) {
		sqlSession.update(NAMESPACE + "updateCartStatePayment", hashMap);
	}	

	public void updateCartStateBeforePayment(HashMap<String, String> hashMap) {
		sqlSession.update(NAMESPACE + "updateCartStateBeforePayment", hashMap);
	}	

	public void updateCartStateDone(CartDTO cartDTO) {
		sqlSession.update(NAMESPACE + "updateCartStateDone", cartDTO);
	}	
	
}
