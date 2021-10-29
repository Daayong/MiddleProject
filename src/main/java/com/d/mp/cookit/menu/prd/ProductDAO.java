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
	
	
	// ==  == index 페이지 상품 == == //
	public List<ProductDTO> getPrdListMain() throws Exception{
		return sqlSession.selectList(NAMESPACE + "getPrdListMain");
	}
	
	
	// ==  == menu_main 페이지 상품 == == //
	
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
	
	//구매 후 상품의 수량 변경
	public int insertPayment(ProductDTO productDTO) throws Exception{
		return sqlSession.update(NAMESPACE + "insertPayment", productDTO);
	}
	
	//특정 id 상품 찜목록 추가
	public int setZzim(Map<String, Object> map) throws Exception{
		return sqlSession.insert(NAMESPACE + "setZzim", map);
	}
	
	//특정 zzim_id 찜목록에서 삭제
	public int deleteZzimOne(ZzimDTO zzimDTO) throws Exception{
		return sqlSession.delete(NAMESPACE + "deleteZzimOne", zzimDTO);
	}
	
	//특정 멤버가 찜한 상품목록 불러오기
	public List<ProductDTO> getZzim(ZzimDTO zzimDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getZzim", zzimDTO);
	}
	
	//특정 id 상품의 주문가능 일자중 첫번째 값 가져오기
	public ProductDTO getDateOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getDateOne", productDTO);
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