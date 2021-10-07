package com.d.mp.cookit.menu.prd;

import java.util.List;

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
	public int setFile(ProductFilesDTO productFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setFile", productFilesDTO);
	}
	public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getFile", productDTO);
	}
	
	
	public List<ProductDTO> getPrdList(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getPrdList", productDTO);
	}	
	
	public ProductDTO getPrdOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getPrdOne", productDTO);
	}
}
