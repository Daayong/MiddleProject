package com.d.mp.order.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.member.MemberDTO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.d.mp.order.cart.CartDAO.";
	
	public List<CartListDTO> getCartList(MemberDTO memberDTO) throws Exception {		
		return sqlSession.selectList(NAMESPACE + "getCartList", memberDTO);
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
	
	
}
