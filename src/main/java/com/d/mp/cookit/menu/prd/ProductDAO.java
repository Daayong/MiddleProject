package com.d.mp.cookit.menu.prd;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private	SqlSession sqlSession;
	private final String NAMESPACE="com.d.mp.cookit.menu.prd.ProductDAO.";
	
	public int setInsert(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setInsert", productDTO);
	}
}
