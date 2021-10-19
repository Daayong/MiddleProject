package com.d.mp.cookit.menu.prd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private	SqlSession sqlSession;
	private final String NAMESPACE="com.d.mp.cookit.menu.prd.ProductDAO.";
	
	
	//상품 등록하기
	public int setInsert(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setInsert", productDTO);
	}
	
	//상품 날짜 테이블에 등록하기
	public int setInsertDate(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setInsertDate", productDTO);
	}
	
	//상품 파일 등록하기
	public int setFile(ProductFilesDTO productFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setFile", productFilesDTO);
	}
	
	//상품 파일 가져오기
	public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getFile", productDTO);
	}
	
	//상품 전체 리스트 가져오기
	public List<ProductDTO> getPrdList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getPrdList", map);
	}
	
	//상품 전체 갯수
	public Long getTotalPrdList() throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getTotalPrdList");
	}
	
	//특정 ID의 상품 하나 가져오기
	public ProductDTO getPrdOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getPrdOne", productDTO);
	}
	
	//특정 id 상품 하나의 배송일별 팔린 갯수 합 가져오기
	public Long getSoldSum(Long product_id) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getSoldSum", product_id);
	}
	
	//특정 id 상품의 주문가능 일자 가져오기
	public List<ProductDTO> getDate(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getDate", productDTO);
	}
	
	//특정 ID의 상품 하나 삭제하기
	public int deletePrdOne(ProductDTO productDTO) throws Exception{
		return sqlSession.delete(NAMESPACE + "deletePrdOne", productDTO);
	}
	
	//품절 판단
	public int isSoldOut(Long product_id) throws Exception{
		
		int result = 0;
		
		ProductDTO dto = sqlSession.selectOne(NAMESPACE + "isSoldOut", product_id);
		
		if(dto != null) {
			result = 1;
		}
		
		return result;
	}
	
	//품절 업데이트
	public int doSoldOut(Long product_id) throws Exception{
		return sqlSession.update(NAMESPACE + "doSoldOut", product_id);
	}
	//주문마감 업데이트
	public int doDateOut(Long product_id) throws Exception{
		return sqlSession.update(NAMESPACE + "doDateOut", product_id);
	}
	
	//상품별 재고상태 업데이트
	public int doDateState(ProductDTO productDTO) throws Exception{
		return sqlSession.update(NAMESPACE + "doDateState", productDTO);
	}
}